# Microsoft Developer Studio Project File - Name="zlib" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=zlib - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE
!MESSAGE NMAKE /f "zlib.mak".
!MESSAGE
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE
!MESSAGE NMAKE /f "zlib.mak" CFG="zlib - Win32 Debug"
!MESSAGE
!MESSAGE Possible choices for configuration are:
!MESSAGE
!MESSAGE "zlib - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "zlib - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "zlib - Win32 Relsym" (based on "Win32 (x86) Static Library")
!MESSAGE

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "zlib - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "ReleaseZlib"
# PROP BASE Intermediate_Dir "ReleaseZlib"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "ReleaseZlib"
# PROP Intermediate_Dir "ReleaseZlib"
# PROP Target_Dir ""
F90=df.exe
MTL=midl.exe
# ADD BASE CPP /nologo /W3 /GX /O2 /D "NDEBUG" /D "WIN32" /D "_MBCS" /D "_LIB" /FD /c
# ADD CPP /nologo /MD /W3 /GX /O2 /Ob2 /I "./zlib" /D "NDEBUG" /D "_LIB" /D "LIB_WINAPI" /D "_CRT_NONSTDC_NO_WARNINGS" /D "_CRT_SECURE_NO_DEPRECATE" /D "_CRT_NONSTDC_NO_DEPRECATE" /D "ASMV" /D "ASMINF" /D "ZLIB_WINAPI" /D "WIN32" /D "_MBCS" /FR /FD /c
# ADD BASE RSC /l 0x417 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "zlib - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "DebugZlib"
# PROP BASE Intermediate_Dir "DebugZlib"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "DebugZlib"
# PROP Intermediate_Dir "DebugZlib"
# PROP Target_Dir ""
F90=df.exe
MTL=midl.exe
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "_DEBUG" /D "WIN32" /D "_MBCS" /D "_LIB" /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /Gm /Gi /ZI /Od /I "./zlib" /D "_DEBUG" /D "_LIB" /D "LIB_WINAPI" /D "_CRT_NONSTDC_NO_WARNINGS" /D "_CRT_SECURE_NO_DEPRECATE" /D "_CRT_NONSTDC_NO_DEPRECATE" /D "ASMV" /D "ASMINF" /D "ZLIB_WINAPI" /D "WIN32" /D "_MBCS" /FR /FD /GZ /c
# ADD BASE RSC /l 0x417 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "zlib - Win32 Relsym"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "RelsymZlib"
# PROP BASE Intermediate_Dir "RelsymZlib"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "RelsymZlib"
# PROP Intermediate_Dir "RelsymZlib"
# PROP Target_Dir ""
F90=df.exe
MTL=midl.exe
# ADD BASE CPP /nologo /MD /W3 /O2 /Ob2 /I "./zlib" /D "NDEBUG" /D "WIN32" /D "_MBCS" /D "_LIB" /D "LIB_WINAPI" /D "_CRT_NONSTDC_NO_WARNINGS" /D "_CRT_SECURE_NO_DEPRECATE" /D "_CRT_NONSTDC_NO_DEPRECATE" /D "ASMV" /D "ASMINF" /D "ZLIB_WINAPI" /FR /FD /c
# ADD CPP /nologo /MD /W3 /GX /O2 /Ob2 /I "./zlib" /D "NDEBUG" /D "_LIB" /D "LIB_WINAPI" /D "_CRT_NONSTDC_NO_WARNINGS" /D "_CRT_SECURE_NO_DEPRECATE" /D "_CRT_NONSTDC_NO_DEPRECATE" /D "ASMV" /D "ASMINF" /D "ZLIB_WINAPI" /D "WIN32" /D "_MBCS" /FAcs /FR /FD /c
# ADD BASE RSC /l 0x417 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ENDIF

# Begin Target

# Name "zlib - Win32 Release"
# Name "zlib - Win32 Debug"
# Name "zlib - Win32 Relsym"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\zlib\adler32.c
# End Source File
# Begin Source File

SOURCE=.\zlib\compress.c
# End Source File
# Begin Source File

SOURCE=.\zlib\crc32.c
# End Source File
# Begin Source File

SOURCE=.\zlib\deflate.c
# End Source File
# Begin Source File

SOURCE=.\zlib\gzclose.c
# End Source File
# Begin Source File

SOURCE=.\zlib\gzlib.c
# End Source File
# Begin Source File

SOURCE=.\zlib\gzread.c
# End Source File
# Begin Source File

SOURCE=.\zlib\gzwrite.c
# End Source File
# Begin Source File

SOURCE=.\zlib\infback.c
# End Source File
# Begin Source File

SOURCE=.\zlib\inffast.c
# End Source File
# Begin Source File

SOURCE=.\zlib\inflate.c
# End Source File
# Begin Source File

SOURCE=.\zlib\inftrees.c
# End Source File
# Begin Source File

SOURCE=.\zlib\trees.c
# End Source File
# Begin Source File

SOURCE=.\zlib\uncompr.c
# End Source File
# Begin Source File

SOURCE=.\zlib\zutil.c
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\zlib\crc32.h
# End Source File
# Begin Source File

SOURCE=.\zlib\deflate.h
# End Source File
# Begin Source File

SOURCE=.\zlib\gzguts.h
# End Source File
# Begin Source File

SOURCE=.\zlib\inffast.h
# End Source File
# Begin Source File

SOURCE=.\zlib\inffixed.h
# End Source File
# Begin Source File

SOURCE=.\zlib\inflate.h
# End Source File
# Begin Source File

SOURCE=.\zlib\inftrees.h
# End Source File
# Begin Source File

SOURCE=.\zlib\trees.h
# End Source File
# Begin Source File

SOURCE=.\zlib\zconf.h
# End Source File
# Begin Source File

SOURCE=.\zlib\zlib.h
# End Source File
# Begin Source File

SOURCE=.\zlib\zutil.h
# End Source File
# End Group
# Begin Group "ASM Source Files"

# PROP Default_Filter "asm"
# Begin Source File

SOURCE=.\zlib\contrib\masmx86\inffas32.asm

!IF  "$(CFG)" == "zlib - Win32 Release"

# Begin Custom Build
IntDir=.\ReleaseZlib
InputPath=.\zlib\contrib\masmx86\inffas32.asm
InputName=inffas32

"$(IntDir)\$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	ml.exe -c -coff -Cx -Fo$(IntDir)\$(InputName).obj .\zlib\contrib\masmx86\$(InputName).asm

# End Custom Build

!ELSEIF  "$(CFG)" == "zlib - Win32 Debug"

# Begin Custom Build
IntDir=.\DebugZlib
InputPath=.\zlib\contrib\masmx86\inffas32.asm
InputName=inffas32

"$(IntDir)\$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	ml.exe -c -coff -Cx -Fo$(IntDir)\$(InputName).obj .\zlib\contrib\masmx86\$(InputName).asm

# End Custom Build

!ELSEIF  "$(CFG)" == "zlib - Win32 Relsym"

# Begin Custom Build
IntDir=.\RelsymZlib
InputPath=.\zlib\contrib\masmx86\inffas32.asm
InputName=inffas32

"$(IntDir)\$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	ml.exe -c -coff -Cx -Fo$(IntDir)\$(InputName).obj .\zlib\contrib\masmx86\$(InputName).asm

# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE=.\zlib\contrib\masmx86\match686.asm

!IF  "$(CFG)" == "zlib - Win32 Release"

# Begin Custom Build
IntDir=.\ReleaseZlib
InputPath=.\zlib\contrib\masmx86\match686.asm
InputName=match686

"$(IntDir)\$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	ml.exe -c -coff -Cx -Fo$(IntDir)\$(InputName).obj .\zlib\contrib\masmx86\$(InputName).asm

# End Custom Build

!ELSEIF  "$(CFG)" == "zlib - Win32 Debug"

# Begin Custom Build
IntDir=.\DebugZlib
InputPath=.\zlib\contrib\masmx86\match686.asm
InputName=match686

"$(IntDir)\$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	ml.exe -c -coff -Cx -Fo$(IntDir)\$(InputName).obj .\zlib\contrib\masmx86\$(InputName).asm

# End Custom Build

!ELSEIF  "$(CFG)" == "zlib - Win32 Relsym"

# Begin Custom Build
IntDir=.\RelsymZlib
InputPath=.\zlib\contrib\masmx86\match686.asm
InputName=match686

"$(IntDir)\$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	ml.exe -c -coff -Cx -Fo$(IntDir)\$(InputName).obj .\zlib\contrib\masmx86\$(InputName).asm

# End Custom Build

!ENDIF

# End Source File
# End Group
# End Target
# End Project
