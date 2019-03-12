*** Simple BJT amplifier ***

.model mybjt npn is=1e-15

vcc 1 0 dc 6V
vin 3 0 dc 0.705V sin(0.705 5mV 1kHz 0 0)
rc 1 2 5kOhm
q1 2 3 0 mybjt

.end
