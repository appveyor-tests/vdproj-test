appveyor version
cmd /c 'C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\devenv.com' SetupProjectTestApp.sln /build Debug /project Setup1\Setup1.vdproj /projectconfig Debug /Out errorFile.txt
#If some errors occurred during migration. For more information, see the migration report UpgradeLog.htm
env:APPVEYOR_BUILD_FOLDER
if (test-path "env:APPVEYOR_BUILD_FOLDER\UpgradeLog.htm") { Push-AppVeyorArtifact  env:APPVEYOR_BUILD_FOLDER\UpgradeLog.htm}
