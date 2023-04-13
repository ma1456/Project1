call C:\\deployments72\\precompile\\setenv.bat

ECHO OFF
CLS
ECHO.

GOTO EXECUTE
  
:EXECUTE
echo Compiling EARBusinessRMA.server....
java -mx1024m com.blazesoft.server.deploy.tools.NdAdvisorProjectCompiler -server EARBusinessRMA.server
goto end;

:end
echo Program ended