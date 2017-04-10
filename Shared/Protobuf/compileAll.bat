@echo off
call :sub >protocCompile.log
exit /b

rem CD to src to generate lib/*.proto instead of lib/src/*.proto
:sub
cd src
protoc --gofast_out=..\lib *.proto
echo Compile finished.