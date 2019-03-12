RC Circuit
*
*This circuit simulates RC Low Pass Filter.
*
c1 1 2 1u
r1 2 0 1k
vin 0 1 dc 0 ac 1
.ac dec 10 1 1Meg
.control
run
plot v(2)
print all
.endc
.end
