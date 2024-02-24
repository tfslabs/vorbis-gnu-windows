@echo off
cd /d "%~dp0"

md .bin
md .build

cd .build
cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=1 ..
make -j4
make DESTDIR="../.bin" install
