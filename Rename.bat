@echo off
title Rename.bat
setlocal ENABLEDELAYEDEXPANSION

echo �J�����g�f�B���N�g���ȉ��̂��ׂẴt�@�C���Ƀ��l�[�������s���܂�
set /P STR_INPUT="�������J�n���܂��B��낵���ł����H�iy/n�j�F "

if "%STR_INPUT%" == "y" (
  goto execute
) else (
  exit
)


:execute
  rem ���ϐ��̎擾
  set BATDIR=%~dp0

  set COUNT=0
  for /D %%i in (%BATDIR%*) do (
    set TARGETDIR=%%~ni

    for %%j in (%BATDIR%!TARGETDIR!\*) do (
      ren %BATDIR%!TARGETDIR!\%%~nxj !TARGETDIR!.*
    )

    set /a COUNT=COUNT+1
  )

  echo %COUNT%���̃f�B���N�g�����X�V���܂���
  pause
