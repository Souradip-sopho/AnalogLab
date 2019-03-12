***CE Amplifier using BJT***
vs 0 1 dc 0 ac sin(0 20mv 1kHz 0 0)
rs 1 2 1k
ci 2 3 10u
r2 4 3 100k
r3 3 0 22k
q1 5 3 6 qmod1
co 5 7 10u
re 6 0 1k
ce 6 0 100u
vcc  4 0 15
rl 7 0 10k

.model qmod1 npn(bf=160)
.tran 0.1us 10us uic

.control
run
write
display
.endc
.end
