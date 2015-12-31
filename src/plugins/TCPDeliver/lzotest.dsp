# Microsoft Developer Studio Project File - Name="lzotest" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=lzotest - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE
!MESSAGE NMAKE /f "lzotest.mak".
!MESSAGE
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE
!MESSAGE NMAKE /f "lzotest.mak" CFG="lzotest - Win32 Debug"
!MESSAGE
!MESSAGE Possible choices for configuration are:
!MESSAGE
!MESSAGE "lzotest - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "lzotest - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "lzotest - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "ReleaseLzoTest"
# PROP BASE Intermediate_Dir "ReleaseLzoTest"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "ReleaseLzoTest"
# PROP Intermediate_Dir "ReleaseLzoTest"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_CONSOLE" /FD /c
# ADD CPP /nologo /MD /W3 /O2 /Ob2 /I "./lzo/include" /I "./lzo" /D "_CONSOLE" /D "NDEBUG" /D "WIN32" /D "_MBCS" /D "LZO_USE_ASM" /FR /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0xc09 /d "NDEBUG"
# ADD RSC /l 0x417 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 oldnames.lib msvcrt.lib kernel32.lib /nologo /subsystem:console /machine:I386 /nodefaultlib

!ELSEIF  "$(CFG)" == "lzotest - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "DebugLzoTest"
# PROP BASE Intermediate_Dir "DebugLzoTest"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "DebugLzoTest"
# PROP Intermediate_Dir "DebugLzoTest"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_CONSOLE" /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /Gm /Gi /ZI /Od /I "./lzo/include" /I "./lzo" /D "_CONSOLE" /D "_DEBUG" /D "WIN32" /D "_MBCS" /D "LZO_USE_ASM" /FR /FD /GZ /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0xc09 /d "_DEBUG"
# ADD RSC /l 0x417 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept
# ADD LINK32 oldnames.lib msvcrtd.lib kernel32.lib /nologo /subsystem:console /debug /machine:I386 /nodefaultlib /pdbtype:sept

!ENDIF

# Begin Target

# Name "lzotest - Win32 Release"
# Name "lzotest - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\lzo\lzotest\lzotest.c
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\lzo\lzotest\asm.h
# End Source File
# Begin Source File

SOURCE=.\lzo\lzotest\db.h
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo_supp.h
# End Source File
# Begin Source File

SOURCE=.\lzo\examples\portab.h
# End Source File
# Begin Source File

SOURCE=.\lzo\examples\portab_a.h
# End Source File
# Begin Source File

SOURCE=.\lzo\lzotest\wrap.h
# End Source File
# Begin Source File

SOURCE=.\lzo\lzotest\wrapmisc.h
# End Source File
# End Group
# Begin Group "Library Header Files"

# PROP Default_Filter "h"
# Begin Source File

SOURCE=.\lzo\include\lzo\lzo1.h
# End Source File
# Begin Source File

SOURCE=.\lzo\include\lzo\lzo1a.h
# End Source File
# Begin Source File

SOURCE=.\lzo\include\lzo\lzo1b.h
# End Source File
# Begin Source File

SOURCE=.\lzo\include\lzo\lzo1c.h
# End Source File
# Begin Source File

SOURCE=.\lzo\include\lzo\lzo1f.h
# End Source File
# Begin Source File

SOURCE=.\lzo\include\lzo\lzo1x.h
# End Source File
# Begin Source File

SOURCE=.\lzo\include\lzo\lzo1y.h
# End Source File
# Begin Source File

SOURCE=.\lzo\include\lzo\lzo1z.h
# End Source File
# Begin Source File

SOURCE=.\lzo\include\lzo\lzo2a.h
# End Source File
# Begin Source File

SOURCE=.\lzo\include\lzo\lzo_asm.h
# End Source File
# Begin Source File

SOURCE=.\lzo\include\lzo\lzoconf.h
# End Source File
# Begin Source File

SOURCE=.\lzo\include\lzo\lzodefs.h
# End Source File
# End Group
# End Target
# End Project
