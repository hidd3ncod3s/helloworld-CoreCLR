:: This needs to be executed from the VS command shell.

cd \src
git clone https://github.com/dotnet/coreclr
git clone https://github.com/dotnet/corefx
cd \src
mkdir \coreclr-demo\runtime
mkdir \coreclr-demo\packages
cd \src\coreclr
build clean skiptestbuild
copy /Y bin\Product\Windows_NT.x64.debug\coreclr.dll \coreclr-demo\runtime
copy /Y bin\Product\Windows_NT.x64.debug\mscorlib.dll \coreclr-demo\runtime
copy /Y bin\Product\Windows_NT.x64.debug\CoreConsole.exe \coreclr-demo\runtime\HelloWorld.exe
cd \coreclr-demo
nuget.exe restore packages\packages.config -Source https://www.myget.org/F/dotnet-corefx/ -PackagesDirectory packages
for /r packages %k in (*.dll) do echo "%k" | findstr "api-ms-win-core-synch api-ms-win-core-winrt-l1 api-ms-win-core-winrt-roparameterizediid api-ms-win-core-winrt-string api-ms-win-ro-typeresolution" && copy /Y "%k" runtime
csc /nostdlib /noconfig /out:runtime\HelloWorld.dll /r:runtime\mscorlib.dll HelloWorld.cs
runtime\HelloWorld.exe
