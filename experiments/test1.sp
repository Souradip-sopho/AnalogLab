Resister Divider Circuit
*
*This circuit simulates a divider circuit.
*
Vin 0 1 1
R1 1 2 1
R2 2 0 1
*.tran 1ns 1us uic

.op
.control
run
write
display
print all
*plot v(2) 
.endc
*
.end