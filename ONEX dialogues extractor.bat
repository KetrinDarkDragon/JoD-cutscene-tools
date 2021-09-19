@echo 
title JoD dialogue ONEX exporter
if not exist ".\extracted" ( md ".\extracted")

for %%A in (*.one) do ( 
call ONEX.exe %%A  
rename data.bin "%%~nA.txt" 
move "%%~nA.txt" ".\extracted"
)
del ref.bin
