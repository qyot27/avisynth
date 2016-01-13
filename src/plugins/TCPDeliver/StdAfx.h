// stdafx.h : include file for standard system include files,
//  or project specific include files that are used frequently, but
//      are changed infrequently
//

//windows
#define _WIN32_WINNT 0x0403
#define WIN32_LEAN_AND_MEAN

#include <objbase.h>
#pragma warning( push )
#pragma warning( disable: 4201 ) // nonstandard extension used : nameless struct/union
#include <vfw.h>
#pragma warning( pop )
#include <windows.h>
#include <msacm.h>

//C
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <malloc.h>
#include <string.h>
#include <io.h>
#include <ctype.h>
#include <wtypes.h>

//#include <afxwin.h>

#include <winsock2.h>

#include "TCPCommon.h"
#include "TCPCompression.h"

#include "avisynth.h"
