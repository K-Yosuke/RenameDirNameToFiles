@echo off
title Rename.bat
setlocal ENABLEDELAYEDEXPANSION

echo カレントディレクトリ以下のすべてのファイルにリネームを実行します
set /P STR_INPUT="処理を開始します。よろしいですか？（y/n）： "

if "%STR_INPUT%" == "y" (
  goto execute
) else (
  exit
)


:execute
  rem 環境変数の取得
  set BATDIR=%~dp0

  set COUNT=0
  for /D %%i in (%BATDIR%*) do (
    set TARGETDIR=%%~ni

    for %%j in (%BATDIR%!TARGETDIR!\*) do (
      ren %BATDIR%!TARGETDIR!\%%~nxj !TARGETDIR!.*
    )

    set /a COUNT=COUNT+1
  )

  echo %COUNT%件のディレクトリを更新しました
  pause
