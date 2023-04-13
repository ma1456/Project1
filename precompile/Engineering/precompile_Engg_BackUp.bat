call C:\\deployments72\\precompile\\setenv.bat

ECHO OFF
CLS
ECHO.

GOTO EXECUTE
  
:EXECUTE
echo Compiling BOILERBusinessRMA.server....
echo Started generating ADB for %1 on %DATE%_%TIME% > C:\\deployments72\\precompile\\Engineering\\BOILERBusinessRMA.server.log
java -mx1024m com.blazesoft.server.deploy.tools.NdAdvisorProjectCompiler -server C:\\deployments72\\precompile\\Engineering\\BOILERBusinessRMA.server >> C:\\deployments72\\precompile\\Engineering\\BOILERBusinessRMA.server.log 2>&1

if %ERRORLEVEL% == 0 (
    echo "Generated adb file"
    
)
 
echo Ended generating ADB for BOILERBusinessRMA.server on %DATE%_%TIME% >> C:\\deployments72\\precompile\\Engineering\\BOILERBusinessRMA.server.log

echo Compiling CARBusinessRMA.server....
echo Started generating ADB for %1 on %DATE%_%TIME% > C:\\deployments72\\precompile\\Engineering\\CARBusinessRMA.server.log
java -mx1024m com.blazesoft.server.deploy.tools.NdAdvisorProjectCompiler -server C:\\deployments72\\precompile\\Engineering\\CARBusinessRMA.server >> C:\\deployments72\\precompile\\Engineering\\CARBusinessRMA.server.log 2>&1

if %ERRORLEVEL% == 0 (
    echo "Generated adb file"
    
)
 
echo Ended generating ADB for CARBusinessRMA.server on %DATE%_%TIME% >> C:\\deployments72\\precompile\\Engineering\\CARBusinessRMA.server.log


echo Compiling CPMBusinessRMA.server....
echo Started generating ADB for %1 on %DATE%_%TIME% > C:\\deployments72\\precompile\\Engineering\\CPMBusinessRMA.server.log
java -mx1024m com.blazesoft.server.deploy.tools.NdAdvisorProjectCompiler -server C:\\deployments72\\precompile\\Engineering\\CPMBusinessRMA.server >> C:\\deployments72\\precompile\\Engineering\\CPMBusinessRMA.server.log 2>&1

if %ERRORLEVEL% == 0 (
    echo "Generated adb file"
    
)
 
echo Ended generating ADB for CPMBusinessRMA.server on %DATE%_%TIME% >> C:\\deployments72\\precompile\\Engineering\\CPMBusinessRMA.server.log

echo Compiling EARBusinessRMA.server....
echo Started generating ADB for %1 on %DATE%_%TIME% > C:\\deployments72\\precompile\\Engineering\\EARBusinessRMA.server.log
java -mx1024m com.blazesoft.server.deploy.tools.NdAdvisorProjectCompiler -server C:\\deployments72\\precompile\\Engineering\\EARBusinessRMA.server >> C:\\deployments72\\precompile\\Engineering\\EARBusinessRMA.server.log 2>&1

if %ERRORLEVEL% == 0 (
    echo "Generated adb file"
    
)
 
echo Ended generating ADB for EARBusinessRMA.server on %DATE%_%TIME% >> C:\\deployments72\\precompile\\Engineering\\EARBusinessRMA.server.log

echo Compiling EEIBusinessRMA.server....
echo Started generating ADB for %1 on %DATE%_%TIME% > C:\\deployments72\\precompile\\Engineering\\EEIBusinessRMA.server.log
java -mx1024m com.blazesoft.server.deploy.tools.NdAdvisorProjectCompiler -server C:\\deployments72\\precompile\\Engineering\\EEIBusinessRMA.server >> C:\\deployments72\\precompile\\Engineering\\EEIBusinessRMA.server.log 2>&1

if %ERRORLEVEL% == 0 (
    echo "Generated adb file"
    
)
 
echo Ended generating ADB for EEIBusinessRMA.server on %DATE%_%TIME% >> C:\\deployments72\\precompile\\Engineering\\EEIBusinessRMA.server.log

echo Compiling MBDMLOPBusinessRMA.server....
echo Started generating ADB for %1 on %DATE%_%TIME% > C:\\deployments72\\precompile\\Engineering\\MBDMLOPBusinessRMA.server.log
java -mx1024m com.blazesoft.server.deploy.tools.NdAdvisorProjectCompiler -server C:\\deployments72\\precompile\\Engineering\\MBDMLOPBusinessRMA.server >> C:\\deployments72\\precompile\\Engineering\\MBDMLOPBusinessRMA.server.log 2>&1

if %ERRORLEVEL% == 0 (
    echo "Generated adb file"
    
)
 
echo Ended generating ADB for MBDMLOPBusinessRMA.server on %DATE%_%TIME% >> C:\\deployments72\\precompile\\Engineering\\MBDMLOPBusinessRMA.server.log

goto end;

:end
echo Program ended