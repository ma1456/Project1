if not exist C:\deployments72\precompile\Engineering\BOILERBusinessRMA_service_0.adb ECHO Success
REN "C:\deployments72\precompile\Engineering\Adb_Backup\BOILERBusinessRMA_service_%date:~-4,4%%date:~-7,2%%date:~-10,2%.adb" "BOILERBusinessRMA_service_0.adb"
move /-y "C:\deployments72\precompile\Engineering\Adb_Backup\BOILERBusinessRMA_service_0.adb" "C:\deployments72\precompile\Engineering"