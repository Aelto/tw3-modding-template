@echo off

call variables.cmd

rem install scripts
rmdir "%gamePath%\mods\%modName%\content\scripts" /s /q
XCOPY "%modPath%\src" "%gamePath%\mods\%modName%\content\scripts\" /e /s /y
XCOPY "%modPath%\strings" "%gamepath%\mods\%modname%\content\" /e /s /y
copy "%modPath%\mod-menu.xml" "%gamePath%\bin\config\r4game\user_config_matrix\pc\%modname%.xml" /y
