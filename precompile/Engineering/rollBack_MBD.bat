if not exist C:\deployments72\precompile\Engineering\MBDMLOPBusinessRMA_service_0.adb ECHO Success
REN "C:\deployments72\precompile\Engineering\Adb_Backup\MBDMLOPBusinessRMA_service_%date:~-4,4%%date:~-7,2%%date:~-10,2%.adb" "MBDMLOPBusinessRMA_service_0.adb"
move /-y "C:\deployments72\precompile\Engineering\Adb_Backup\MBDMLOPBusinessRMA_service_0.adb" "C:\deployments72\precompile\Engineering"