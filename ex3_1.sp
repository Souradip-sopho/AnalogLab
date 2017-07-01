***Two Stage Amplifier Circuit***

*Given Vcc
vcc 4 0 dc 12

*Initialize source
vs 1 0 dc 0 sin(0 20mV 1kHz 0 0)
rs 1 2 50

*Stage 1
c1 2 3 10u
ra1 4 3 22k
rb1 3 0 5k  
rc1 4 5 1k
q1 5 3 6 QMOD1
re1s 6 11 22
re1 11 0 220
ce1 11 0 200u
c2 5 7 50u
rl 7 0 1k

.model QMOD1 npn(bf=100)
.tran 1us 10ms
 
.control
run
write
display
.endc
.end
