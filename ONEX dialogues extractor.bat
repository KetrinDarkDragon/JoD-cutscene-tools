@echo off
title JoD dialogue ONEX exporter
if not exist ".\extracted" ( md ".\extracted")

for %%A in (*.one) do ( 
call ONEX.exe %%A  
rename data.bin "%%~nA.bin" 
move "%%~nA.bin" ".\extracted"
)
del ref.bin