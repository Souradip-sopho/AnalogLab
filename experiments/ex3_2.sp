*Stage 2

vcc 4 0 dc 12

vs 7 0 dc 0 sin(0 500mV 1kHz 0 0)

ra2 4 7 10k
rb2 7 0 2.2k
rc2 4 8 470
q2 8 7 9 QMOD1
re2s 9 12 22
re2 12 0 100
ce2 12 0 200u 
 
*Output
c3 8 10 10u
rl 10 0 470
*c 10 0 22n

.model QMOD1 npn(bf=100)
.tran 1us 10ms
.control
run
write
display
.endc
.end
