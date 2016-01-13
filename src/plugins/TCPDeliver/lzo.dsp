# Microsoft Developer Studio Project File - Name="lzo" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=lzo - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE
!MESSAGE NMAKE /f "lzo.mak".
!MESSAGE
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE
!MESSAGE NMAKE /f "lzo.mak" CFG="lzo - Win32 Debug"
!MESSAGE
!MESSAGE Possible choices for configuration are:
!MESSAGE
!MESSAGE "lzo - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "lzo - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "lzo - Win32 Relsym" (based on "Win32 (x86) Static Library")
!MESSAGE

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "lzo - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "ReleaseLzo"
# PROP BASE Intermediate_Dir "ReleaseLzo"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "ReleaseLzo"
# PROP Intermediate_Dir "ReleaseLzo"
# PROP Target_Dir ""
MTL=midl.exe
F90=df.exe
# ADD BASE CPP /nologo /W3 /GX /O2 /D "NDEBUG" /D "WIN32" /D "_MBCS" /D "_LIB" /FD /c
# ADD CPP /nologo /MD /W3 /GX /O2 /Ob2 /I "./lzo/include" /D "_LIB" /D "NDEBUG" /D "WIN32" /D "_MBCS" /D "LZO_USE_ASM" /FR /FD /c
# ADD BASE RSC /l 0x417 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "lzo - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "DebugLzo"
# PROP BASE Intermediate_Dir "DebugLzo"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "DebugLzo"
# PROP Intermediate_Dir "DebugLzo"
# PROP Target_Dir ""
MTL=midl.exe
F90=df.exe
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "_DEBUG" /D "WIN32" /D "_MBCS" /D "_LIB" /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /Gm /Gi /ZI /Od /I "./lzo/include" /D "_LIB" /D "_DEBUG" /D "WIN32" /D "_MBCS" /D "LZO_USE_ASM" /FR /FD /GZ /c
# ADD BASE RSC /l 0x417 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "lzo - Win32 Relsym"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "lzo___Win32_Relsym"
# PROP BASE Intermediate_Dir "lzo___Win32_Relsym"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "RelsymLzo"
# PROP Intermediate_Dir "RelsymLzo"
# PROP Target_Dir ""
MTL=midl.exe
F90=df.exe
# ADD BASE CPP /nologo /MD /W3 /O2 /Ob2 /I "./lzo/include" /D "_LIB" /D "NDEBUG" /D "WIN32" /D "_MBCS" /D "LZO_USE_ASM" /FR /FD /c
# ADD CPP /nologo /MD /W3 /GX /O2 /Ob2 /I "./lzo/include" /D "_LIB" /D "NDEBUG" /D "WIN32" /D "_MBCS" /D "LZO_USE_ASM" /FAcs /FR /FD /c
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

# Name "lzo - Win32 Release"
# Name "lzo - Win32 Debug"
# Name "lzo - Win32 Relsym"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\lzo\src\lzo1.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1_99.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1a.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1a_99.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1b_1.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1b_2.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1b_3.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1b_4.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1b_5.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1b_6.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1b_7.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1b_8.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1b_9.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1b_99.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1b_9x.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1b_cc.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1b_d1.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1b_d2.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1b_rr.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1b_xx.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1c_1.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1c_2.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1c_3.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1c_4.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1c_5.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1c_6.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1c_7.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1c_8.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1c_9.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1c_99.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1c_9x.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1c_cc.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1c_d1.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1c_d2.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1c_rr.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1c_xx.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1f_1.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1f_9x.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1f_d1.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1f_d2.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1x_1.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1x_1k.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1x_1l.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1x_1o.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1x_9x.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1x_d1.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1x_d2.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1x_d3.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1x_o.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1y_1.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1y_9x.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1y_d1.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1y_d2.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1y_d3.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1y_o.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1z_9x.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1z_d1.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1z_d2.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1z_d3.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo2a_9x.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo2a_d1.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo2a_d2.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo_crc.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo_init.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo_ptr.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo_str.c
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo_util.c
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\lzo\src\compr1b.h
# End Source File
# Begin Source File

SOURCE=.\lzo\src\compr1c.h
# End Source File
# Begin Source File

SOURCE=.\lzo\src\config1.h
# End Source File
# Begin Source File

SOURCE=.\lzo\src\config1a.h
# End Source File
# Begin Source File

SOURCE=.\lzo\src\config1b.h
# End Source File
# Begin Source File

SOURCE=.\lzo\src\config1c.h
# End Source File
# Begin Source File

SOURCE=.\lzo\src\config1f.h
# End Source File
# Begin Source File

SOURCE=.\lzo\src\config1x.h
# End Source File
# Begin Source File

SOURCE=.\lzo\src\config1y.h
# End Source File
# Begin Source File

SOURCE=.\lzo\src\config1z.h
# End Source File
# Begin Source File

SOURCE=.\lzo\src\config2a.h
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1a_de.h
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1b_cc.h
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1b_de.h
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1c_cc.h
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo_conf.h
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo_dict.h
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo_func.h
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo_ptr.h
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo_supp.h
# End Source File
# Begin Source File

SOURCE=.\lzo\src\stats1a.h
# End Source File
# Begin Source File

SOURCE=.\lzo\src\stats1b.h
# End Source File
# Begin Source File

SOURCE=.\lzo\src\stats1c.h
# End Source File
# End Group
# Begin Group "Code Include Files"

# PROP Default_Filter "ch"
# Begin Source File

SOURCE=.\lzo\src\lzo1_cm.ch
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1_d.ch
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1a_cm.ch
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1a_cr.ch
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1b_c.ch
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1b_cm.ch
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1b_cr.ch
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1b_d.ch
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1b_r.ch
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1b_sm.ch
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1b_tm.ch
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1f_d.ch
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1x_c.ch
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1x_d.ch
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo1x_oo.ch
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo2a_d.ch
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo_dll.ch
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo_mchw.ch
# End Source File
# Begin Source File

SOURCE=.\lzo\src\lzo_swd.ch
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
# Begin Group "ASM Source Files"

# PROP Default_Filter "c"
# Begin Source File

SOURCE=.\lzo\asm\i386\src_C__asm\lzo1c_s1.c
# End Source File
# Begin Source File

SOURCE=.\lzo\asm\i386\src_C__asm\lzo1f_f1.c
# End Source File
# Begin Source File

SOURCE=.\lzo\asm\i386\src_C__asm\lzo1x_f1.c
# End Source File
# Begin Source File

SOURCE=.\lzo\asm\i386\src_C__asm\lzo1x_s1.c
# End Source File
# Begin Source File

SOURCE=.\lzo\asm\i386\src_C__asm\lzo1y_f1.c
# End Source File
# Begin Source File

SOURCE=.\lzo\asm\i386\src_C__asm\lzo1y_s1.c
# End Source File
# End Group
# End Target
# End Project
