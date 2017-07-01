***Two Stage Amplifier Circuit***

*Given Vcc
vcc 4 0 dc 12

*Initialize source
vs 1 0 dc 0 ac sin(0 20mV 1kHz 0 0)
rs 1 2 50

*Stage 1
c1 2 3 10u
ra1 4 3 16.78k
rb1 3 0 3.167k  
rc1 4 5 817
q1 5 3 6 QMOD1
re1s 6 11 16.638
re1 11 0 183.36
ce1 11 0 414u

*Connection
c2 5 7 43.8u

*Stage 2
ra2 4 7 7.89k
rb2 7 0 1.49k
rc2 4 8 470
q2 8 7 9 QMOD1
re2s 9 12 21.46
re2 12 0 72.538
ce2 12 0 390u 
 
*Output
c3 8 10 8.47u
rl 10 0 470

.model QMOD1 npn(bf=200)
.tran 1us 10ms
.control
run
write
display
.endc
.end
