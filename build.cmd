@echo off
cd /d "%~dp0"

md .bin
md .build

cd .build
cmake -G "Unix Makefiles" -DCMAKE_PREFIX_PATH="../.bin" ..
make -j4
make DESTDIR="../.bin" install
