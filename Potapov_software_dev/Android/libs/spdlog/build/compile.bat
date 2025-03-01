::set ABI=armaebi-v7a
::set ABI=x86
::set ABI=x86_64
set ABI=arm64-v8a

set ANDROID_NDK=D:\Labs\SDKs\ndk\27.0.12077973
set TOOL_CHAIN=%ANDROID_NDK%\build\cmake\android.toolchain.cmake
set CMAKE=D:\Labs\SDKs\cmake\3.22.1\bin\cmake.exe

mkdir %ABI%
cd %ABI%

%CMAKE% ..\..\spdlog -GNinja -DCMAKE_SYSTEM_NAME=Android -DCMAKE_SYSTEM_VERSION=21 -DANDROID_ABI=%ABI% -DCMAKE_TOOLCHAIN_FILE=%TOOL_CHAIN% -DCMAKE_CXX_FLAGS=-DSPDLOG_COMPILED_LIB

%CMAKE% --build .