***Two Stage Amplifier Circuit***

*Given Vcc
vcc 4 0 dc 12

*Initialize source
vs 1 0 dc 0 ac sin(0 10mV 1kHz 0 0)
rs 1 2 50

*Stage 1
c1 2 3 10u
ra1 4 3 22k
rb1 3 0 5k  
rc1 4 5 1k
q1 5 3 6 QMOD1
re1s 6 11 22
re1 11 0 220
ce1 11 0 400u

*Connection
c2 5 7 50u

*Stage 2
ra2 4 7 10k
rb2 7 0 2.2k
rc2 4 8 600
q2 8 7 9 QMOD1
re2s 9 12 22
re2 12 0 100
ce2 12 0 400u 
 
*Output
c3 8 10 10u
rl 10 0 470

.model QMOD1 npn(bf=150)
.tran 1us 10ms
.control
run
write
display
.endc
.end
