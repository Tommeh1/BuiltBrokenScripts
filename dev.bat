@echo off
cd ..

SET /P ANSWER=Would you use idea? (Y/N)? 
echo You chose: %ANSWER% 
if /i {%ANSWER%}=={idea} (goto :idea) 
goto :eclipse

:idea
gradlew setupdecompworkspace IDEA genIntellijRuns -PbambooshortPlanName=VoltzEngine -Pdmodcurse=61545 --refresh-dependencies

:eclipse
gradle setupdecompworkspace cleanEclipse eclipse -PbambooshortPlanName=VoltzEngine --refresh-dependencies