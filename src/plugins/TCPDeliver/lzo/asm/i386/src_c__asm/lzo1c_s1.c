/* lzo1c_s1.c -- lzo1c_decompress_asm

   This file is part of the LZO real-time data compression library.

   Copyright (C) 1996-2015 Markus Franz Xaver Johannes Oberhumer
   All Rights Reserved.

   The LZO library is free software; you can redistribute it and/or
   modify it under the terms of the GNU General Public License as
   published by the Free Software Foundation; either version 2 of
   the License, or (at your option) any later version.

   The LZO library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with the LZO library; see the file COPYING.
   If not, write to the Free Software Foundation, Inc.,
   51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.

   Markus F.X.J. Oberhumer
   <markus@oberhumer.com>
   http://www.oberhumer.com/opensource/lzo/
 */

   /***** DO NOT EDIT - GENERATED AUTOMATICALLY *****/

__declspec(naked) __cdecl
lzo1c_decompress_asm()
{
  __asm {
    _emit 85;
    _emit 87;
    _emit 86;
    _emit 83;
    _emit 81;
    _emit 82;
    _emit 131;
    _emit 236;
    _emit 12;
    _emit 252;
    _emit 139;
    _emit 116;
    _emit 36;
    _emit 40;
    _emit 139;
    _emit 124
    _emit 36;
    _emit 48;
    _emit 189;
    _emit 3;
    _emit 0;
    _emit 0;
    _emit 0;
    _emit 144;
    _emit 49;
    _emit 192;
    _emit 138;
    _emit 6;
    _emit 70;
    _emit 60;
    _emit 32;
    _emit 115
    _emit 15;
    _emit 8;
    _emit 192;
    _emit 116;
    _emit 51;
    _emit 137;
    _emit 193;
    _emit 243;
    _emit 164;
    _emit 138;
    _emit 6;
    _emit 70;
    _emit 60;
    _emit 32;
    _emit 114;
    _emit 72
    _emit 60;
    _emit 64;
    _emit 114;
    _emit 93;
    _emit 137;
    _emit 193;
    _emit 36;
    _emit 31;
    _emit 141;
    _emit 87;
    _emit 255;
    _emit 193;
    _emit 233;
    _emit 5;
    _emit 41;
    _emit 194
    _emit 138;
    _emit 6;
    _emit 70;
    _emit 193;
    _emit 224;
    _emit 5;
    _emit 41;
    _emit 194;
    _emit 65;
    _emit 135;
    _emit 242;
    _emit 243;
    _emit 164;
    _emit 137;
    _emit 214;
    _emit 235
    _emit 199;
    _emit 141;
    _emit 180;
    _emit 38;
    _emit 0;
    _emit 0;
    _emit 0;
    _emit 0;
    _emit 138;
    _emit 6;
    _emit 70;
    _emit 141;
    _emit 72;
    _emit 32;
    _emit 60;
    _emit 248
    _emit 114;
    _emit 197;
    _emit 185;
    _emit 24;
    _emit 1;
    _emit 0;
    _emit 0;
    _emit 44;
    _emit 248;
    _emit 116;
    _emit 6;
    _emit 145;
    _emit 48;
    _emit 192;
    _emit 211;
    _emit 224
    _emit 145;
    _emit 243;
    _emit 164;
    _emit 235;
    _emit 163;
    _emit 141;
    _emit 118;
    _emit 0;
    _emit 141;
    _emit 87;
    _emit 255;
    _emit 41;
    _emit 194;
    _emit 138;
    _emit 6;
    _emit 70
    _emit 193;
    _emit 224;
    _emit 5;
    _emit 41;
    _emit 194;
    _emit 135;
    _emit 242;
    _emit 164;
    _emit 164;
    _emit 164;
    _emit 137;
    _emit 214;
    _emit 164;
    _emit 49;
    _emit 192;
    _emit 235
    _emit 152;
    _emit 36;
    _emit 31;
    _emit 137;
    _emit 193;
    _emit 117;
    _emit 19;
    _emit 177;
    _emit 31;
    _emit 138;
    _emit 6;
    _emit 70;
    _emit 8;
    _emit 192;
    _emit 117;
    _emit 8
    _emit 129;
    _emit 193;
    _emit 255;
    _emit 0;
    _emit 0;
    _emit 0;
    _emit 235;
    _emit 241;
    _emit 1;
    _emit 193;
    _emit 138;
    _emit 6;
    _emit 70;
    _emit 137;
    _emit 195;
    _emit 36
    _emit 63;
    _emit 137;
    _emit 250;
    _emit 41;
    _emit 194;
    _emit 138;
    _emit 6;
    _emit 70;
    _emit 193;
    _emit 224;
    _emit 6;
    _emit 41;
    _emit 194;
    _emit 57;
    _emit 250;
    _emit 116
    _emit 27;
    _emit 135;
    _emit 214;
    _emit 141;
    _emit 73;
    _emit 3;
    _emit 243;
    _emit 164;
    _emit 137;
    _emit 214;
    _emit 49;
    _emit 192;
    _emit 193;
    _emit 235;
    _emit 6;
    _emit 137
    _emit 217;
    _emit 15;
    _emit 133;
    _emit 80;
    _emit 255;
    _emit 255;
    _emit 255;
    _emit 233;
    _emit 60;
    _emit 255;
    _emit 255;
    _emit 255;
    _emit 131;
    _emit 249;
    _emit 1;
    _emit 15
    _emit 149;
    _emit 192;
    _emit 139;
    _emit 84;
    _emit 36;
    _emit 40;
    _emit 3;
    _emit 84;
    _emit 36;
    _emit 44;
    _emit 57;
    _emit 214;
    _emit 119;
    _emit 38;
    _emit 114;
    _emit 29
    _emit 43;
    _emit 124;
    _emit 36;
    _emit 48;
    _emit 139;
    _emit 84;
    _emit 36;
    _emit 52;
    _emit 137;
    _emit 58;
    _emit 247;
    _emit 216;
    _emit 131;
    _emit 196;
    _emit 12;
    _emit 90
    _emit 89;
    _emit 91;
    _emit 94;
    _emit 95;
    _emit 93;
    _emit 195;
    _emit 184;
    _emit 1;
    _emit 0;
    _emit 0;
    _emit 0;
    _emit 235;
    _emit 227;
    _emit 184;
    _emit 8;
    _emit 0
    _emit 0;
    _emit 0;
    _emit 235;
    _emit 220;
    _emit 184;
    _emit 4;
    _emit 0;
    _emit 0;
    _emit 0;
    _emit 235;
    _emit 213;
    _emit 144;
    _emit 141;
    _emit 116;
    _emit 38;
    _emit 0
  }
}
