@echo on
cd ./bin/packages/
for %%i in (*.nupkg) do (start dotnet nuget push -s http://49.234.53.226:6549/v3/index.json  %%i --no-service-endpoint)
echo "finish"
pause
