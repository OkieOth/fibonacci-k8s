```bash
# create an release
dotnet build -c Release

dotnet bin/Release/net8.0/fibonacci.dll

# create a native release
# this doesn't work
# dotnet publish -c Release
```