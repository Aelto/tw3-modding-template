@echo off

REM TODO update this path to point to your witcher 3 directory
set gamePath={yourGamePath}

REM TODO update this to your modkit path. nexus modkit doesn't ship with w3strings.exe remember to add it to the same folder
set modKitPath={yourModKitPath}

REM TODO update these based on your mod you are developing
set nexusModId={yourModId}
set modName={yourModName}
set releaseName={yourReleaseFolderName}

REM do not update anything below this line
set modPath=%cd%\..