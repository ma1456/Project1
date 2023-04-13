call C:\\deployments72\\precompile\\setenv.bat

ECHO OFF
CLS
ECHO.

GOTO EXECUTE
  
:EXECUTE
echo Compiling CARBusinessRMA.server....
REN "C:\deployments72\precompile\Engineering\CARBusinessRMA_service_0.adb" "CARBusinessRMA_service_%date:~-4,4%%date:~-7,2%%date:~-10,2%.adb"
if exist "C:\deployments72\precompile\Engineering\Adb_Backup\CARBusinessRMA_service_%date:~-4,4%%date:~-7,2%%date:~-10,2%.adb" del "C:\deployments72\precompile\Engineering\Adb_Backup\CARBusinessRMA_service_%date:~-4,4%%date:~-7,2%%date:~-10,2%.adb"
move /-y "C:\deployments72\precompile\Engineering\CARBusinessRMA_service_%date:~-4,4%%date:~-7,2%%date:~-10,2%.adb" "C:\\deployments72\\precompile\\Engineering\\Adb_Backup\\"
java com.blazesoft.template.repository.admin.NdRomAdminUtil update -workspaceConnection "C:\deployments72\precompile\repository_config.cfg" -entryLocation "/" -verbose
java -mx1024m com.blazesoft.server.deploy.tools.NdAdvisorProjectCompiler -server C:\\deployments72\\precompile\\Engineering\\CARBusinessRMA.server
goto end;

:end
echo Program ended