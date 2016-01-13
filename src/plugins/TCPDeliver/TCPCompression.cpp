// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 2 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software
// Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA, or visit
// http://www.gnu.org/copyleft/gpl.html .
//
// Linking Avisynth statically or dynamically with other modules is making a
// combined work based on Avisynth.  Thus, the terms and conditions of the GNU
// General Public License cover the whole combination.
//
// As a special exception, the copyright holders of Avisynth give you
// permission to link Avisynth with independent modules that communicate with
// Avisynth solely through the interfaces defined in avisynth.h, regardless of the license
// terms of these independent modules, and to copy and distribute the
// resulting combined work under terms of your choice, provided that
// every copy of the combined work is accompanied by a complete copy of
// the source code of Avisynth (the version of Avisynth used to produce the
// combined work), being distributed under the terms of the GNU General
// Public License plus this exception.  An independent module is a module
// which is not derived from or based on Avisynth, such as 3rd-party filters,
// import and export plugins, or graphical user interfaces.

// TCPDeliver (c) 2004 by Klaus Post


#include "stdafx.h"

// #include "TCPCompression.h"

/******************************
 * Downwards deltaencoded.
 ******************************/


inline void PredictDownCompress(BYTE* image, int rowsize, int h, int pitch) {
  // Pitch mod 16
  // Height > 2
  rowsize = (rowsize+15)&~15;

  __asm {
    xor eax, eax        // x offset
    mov ecx, [pitch]
    mov edx, rowsize
    align 16
xloopback:
    mov ebx, [h]
    mov esi, [image]    // src
    pxor mm4, mm4       // top1
    pxor mm5, mm5       // top2
	add esi, eax
    align 16
yloopback:
    movq mm0, [esi]     // bot1
     movq mm1, [esi+8]  // bot2
    psubb mm4, mm0      // top1 - bot1
     psubb mm5, mm1     // top2 - bot2
    movq [esi], mm4     // (top-bot)1
     movq [esi+8], mm5  // (top-bot)2
    add esi, ecx        // Next line
     movq mm4, mm0      // top1 = bot1
    dec ebx
     movq mm5, mm1      // top2 = bot2
    jnz yloopback

    add eax, 16         // Next 16 pixels
    cmp eax, edx
    jl xloopback

    emms
  }
}

/******************************/

inline void PredictDownDeCompress(BYTE* image, int rowsize, int h, int pitch) {
  // Pitch mod 16
  // Height > 2
  rowsize = (rowsize+15)&~15;

  __asm {
    xor eax, eax        // x offset
    mov ecx, [pitch]
    mov edx, rowsize
    align 16
xloopback:
    mov ebx, [h]
    mov esi, [image]    // src
    pxor mm4, mm4       // top1
    pxor mm5, mm5       // top2
	add esi, eax
    align 16
yloopback:
    movq mm0, [esi]     // (top-bot)1
     movq mm1, [esi+8]  // (top-bot)2
    psubb mm4, mm0      // top1 - (top-bot)1
     psubb mm5, mm1     // top2 - (top-bot)2
    movq [esi], mm4
     movq [esi+8], mm5

    add esi, ecx        // Next line
    dec ebx
    jnz yloopback

    add eax, 16         // Next 16 pixels
    cmp eax, edx
    jl xloopback

    emms
  }
}

/******************************/


int TCPCompression::CompressImage(BYTE* image, int /* rowsize */, int h, int pitch) {
  dst = image;
  inplace = true;
  return pitch*h;
}

int TCPCompression::DeCompressImage(BYTE* image, int /* rowsize */, int h, int pitch, int /* data_size */, BYTE* /* _dst */) {
  dst = image;
  inplace = true;
  return pitch*h;
}


/******************************/


PredictDownLZO::PredictDownLZO() {
  compression_type = ServerFrameInfo::COMPRESSION_DELTADOWN_LZO;
  wrkmem = (lzo_bytep) malloc(LZO1X_1_15_MEM_COMPRESS);
}

PredictDownLZO::~PredictDownLZO(void) {
  free(wrkmem);
}

int PredictDownLZO::CompressImage(BYTE* image, int rowsize, int h, int pitch) {
  // Pitch mod 16
  // Height > 2
  inplace = false;

  PredictDownCompress(image, rowsize, h, pitch);

  int in_size = pitch*h;
  lzo_uint out_size = ~0ul;
  dst = (BYTE*)_aligned_malloc(in_size + (in_size / 16) + 64 + 3, 16);
//  dst = (BYTE*)_aligned_malloc(in_size + (in_size >>6) + 16 + 3, 16);
  lzo1x_1_15_compress(image, in_size ,dst, &out_size , wrkmem);
  _RPT2(0, "TCPCompression: Compressed %d bytes into %d bytes.\n", in_size, out_size);
  return out_size;
}

int PredictDownLZO::DeCompressImage(BYTE* image, int rowsize, int h, int pitch, int in_size, BYTE* /* _dst */) {
  // Pitch mod 16
  // Height > 2
  inplace = false;
  lzo_uint dst_size = pitch*h;
  dst = (BYTE*)_aligned_malloc(dst_size+4, 64);  // LZO fast may overwrite the buffer by up to 3 bytes, so we do not use inplace
  lzo1x_decompress_asm_fast(image, in_size, dst, &dst_size, wrkmem);
//  lzo1x_decompress(image, in_size, dst, &dst_size, wrkmem);

  if ((int)dst_size != pitch*h) {
    _RPT0(1,"TCPCompression: Size did NOT match");
  }

  PredictDownDeCompress(dst, rowsize, h, pitch);

  _RPT2(0, "TCPCompression: Decompressed %d bytes into %d bytes.\n", in_size, dst_size);
  return dst_size;
}


/******************************/


PredictDownHuffman::PredictDownHuffman() {
  compression_type = ServerFrameInfo::COMPRESSION_DELTADOWN_HUFFMAN;
}

PredictDownHuffman::~PredictDownHuffman(void) {
}

int PredictDownHuffman::CompressImage(BYTE* image, int rowsize, int h, int pitch) {
  // Pitch mod 16
  // Height > 2
  inplace = false;

  PredictDownCompress(image, rowsize, h, pitch);

  int in_size = pitch*h;
  unsigned int out_size = in_size*2;
  dst = (BYTE*)_aligned_malloc(out_size, 16);

  out_size = Huffman_Compress(image, dst, in_size );

  _RPT2(0, "TCPCompression: Compressed %d bytes into %d bytes.(Huffman)\n", in_size, out_size);
  return out_size;
}

int PredictDownHuffman::DeCompressImage(BYTE* image, int rowsize, int h, int pitch, int in_size, BYTE* _dst) {
  // Pitch mod 16
  // Height > 2
  inplace = !!_dst;
  unsigned int dst_size = pitch*h;
  dst = _dst ? _dst : (BYTE*)_aligned_malloc(dst_size, 64);

  Huffman_Uncompress(image, dst, in_size, dst_size);

  PredictDownDeCompress(dst, rowsize, h, pitch);

  _RPT2(0, "TCPCompression: Decompressed %d bytes into %d bytes.(Huffmann)\n", in_size, dst_size);
  return dst_size;
}


/******************************/


PredictDownGZip::PredictDownGZip() {
  compression_type = ServerFrameInfo::COMPRESSION_DELTADOWN_GZIP;
  z = (z_stream_s*)malloc(sizeof(z_stream_s));
}

PredictDownGZip::~PredictDownGZip(void) {
  free(z);
}

int PredictDownGZip::CompressImage(BYTE* image, int rowsize, int h, int pitch) {
  // Pitch mod 16
  // Height > 2
  inplace = false;

  PredictDownCompress(image, rowsize, h, pitch);

  int in_size = pitch*h;
  unsigned int out_size = in_size*2;
  dst = (BYTE*)_aligned_malloc(out_size, 16);
  memset(z, 0, sizeof(z_stream_s));

  z->avail_in = in_size;
  z->next_in = image;
  z->total_in = 0;

  z->avail_out = out_size;
  z->next_out = dst;
  z->total_out = 0;

  z->data_type = Z_BINARY;
  deflateInit2(z, Z_BEST_SPEED, Z_DEFLATED, 15, 8, Z_HUFFMAN_ONLY);
//  deflateInit(z, Z_BEST_SPEED);
  deflate(z, Z_FINISH);

  deflateEnd(z);
  out_size = z->total_out;//uLong
  unsigned int* dstint = (unsigned int*)&dst[out_size];
  dstint[0]= z->adler;

  out_size+=4;
  _RPT2(0, "TCPCompression: Compressed %d bytes into %d bytes (GZIP).\n", in_size, out_size);
  return out_size;
}

int PredictDownGZip::DeCompressImage(BYTE* image, int rowsize, int h, int pitch, int in_size, BYTE* _dst) {
  // Pitch mod 16
  // Height > 2
  inplace = !!_dst;
  unsigned int dst_size = pitch*h;

  dst = _dst ? _dst : (BYTE*)_aligned_malloc(dst_size, 64);
  memset(z, 0, sizeof(z_stream_s));

  unsigned int* dstint = (unsigned int*)&image[in_size-4];
  z->adler = dstint[0];
  in_size-=4;

  z->avail_in = in_size;
  z->next_in = image;
  z->total_in = 0;

  z->avail_out = dst_size;
  z->next_out = dst;
  z->total_out = 0;

  z->data_type = Z_BINARY;


  inflateInit(z);
  inflate(z, Z_FINISH);
  inflateEnd(z);

  PredictDownDeCompress(dst, rowsize, h, pitch);

  _RPT2(0, "TCPCompression: Decompressed %d bytes into %d bytes. (GZIP)\n", in_size, dst_size);
  return dst_size;
}


/******************************/


PredictDownRLE::PredictDownRLE() {
  compression_type = ServerFrameInfo::COMPRESSION_DELTADOWN_RLE;
}

PredictDownRLE::~PredictDownRLE(void) {
}

int PredictDownRLE::CompressImage(BYTE* image, int rowsize, int h, int pitch) {
  // Pitch mod 16
  // Height > 2
  inplace = false;

  PredictDownCompress(image, rowsize, h, pitch);

  int in_size = pitch*h;
  unsigned int out_size = in_size*2;
  dst = (BYTE*)_aligned_malloc(out_size, 16);
  out_size = RLE_Compress(image, dst, in_size );

  _RPT2(0, "TCPCompression: Compressed %d bytes into %d bytes.(RLE)\n", in_size, out_size);
  return out_size;
}

int PredictDownRLE::DeCompressImage(BYTE* image, int rowsize, int h, int pitch, int in_size, BYTE* _dst) {
  // Pitch mod 16
  // Height > 2
  inplace = !!_dst;
  unsigned int dst_size = pitch*h;
  dst = _dst ? _dst : (BYTE*)_aligned_malloc(dst_size, 64);

  RLE_Uncompress(image, dst, in_size);

  PredictDownDeCompress(dst, rowsize, h, pitch);

  _RPT2(0, "TCPCompression: Decompressed %d bytes into %d bytes.(RLE)\n", in_size, dst_size);
  return dst_size;
}

/******************************/
