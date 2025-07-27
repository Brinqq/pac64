@echo off

set project=Pac64.exe
set compiler=clang
set linker=lld-link

WHERE %compiler% > nul 2>nul
if %ERRORLEVEL% NEQ 0 (
  echo "Compiler could not be found or is invaild. Project uses microsofts clang llvm compiler and can be downloaded from visul studios build tools at https://visualstudio.microsoft.com/downloads"
  exit 1
)

set root_dir=%~dp0%
set build_dir=%root_dir%build
set lib_dir=%build_dir%\lib
set bin_dir=%build_dir%\bin
set obj_dir=%build_dir%\obj
set src_dir=%root_dir%src

rem TODO:Automate the file collection process.
set files=%src_dir%\main.asm %src_dir%\game\game.asm %src_dir%\game\gfx\gfx.asm %src_dir%\core\global.asm %src_dir%\core\error.asm

set compile_flags=-x assembler -I%src_dir% -g
set linker_flags=-Wl/ENTRY:main -Wl/SUBSYSTEM:windows

%compiler% %compile_flags% %files% -o %bin_dir%\%project% %linker_flags% -L%lib_dir% -lSDL3.lib
