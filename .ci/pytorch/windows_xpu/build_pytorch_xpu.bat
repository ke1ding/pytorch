if "%DEBUG%" == "1" (
  set BUILD_TYPE=debug
) ELSE (
  set BUILD_TYPE=release
)

set CMAKE_GENERATOR=Ninja
set USE_XPU=1
set VS2022INSTALLDIR="%VS_BUILD_TOOLS_PATH%"

call "C:\\Program Files (x86)\\Intel\\oneAPI\\setvars.bat" --force

python setup.py bdist_wheel > build_torch.log 2>&1
