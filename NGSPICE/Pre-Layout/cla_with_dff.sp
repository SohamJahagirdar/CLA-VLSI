.include TSMC_180nm.txt   
.include cla_subckt.sub  
.param SUPPLY=1.8
.param LAMBDA=0.09u
.global gnd vdd

Vdd vdd gnd 'SUPPLY'

va0 a0 gnd pulse(0 1.8 0n 0 0 15n 30n)
va1 a1 gnd pulse(0 1.8 0n 0 0 15n 30n)
va2 a2 gnd pulse(0 1.8 0n 0 0 15n 30n)
va3 a3 gnd pulse(0 1.8 0n 0 0 15n 30n)

vb0 b0 gnd pulse(0 1.8 0n 0 0 15n 30n)
vb1 b1 gnd pulse(0 1.8 0n 0 0 15n 30n)
vb2 b2 gnd pulse(0 1.8 0n 0 0 15n 30n)
vb3 b3 gnd pulse(0 1.8 0n 0 0 15n 30n)

VC0 C0 gnd 0

vclk clk gnd pulse(0 1.8 3n 0 0 7n 14n)

xda0 a0ff a0 clk vdd gnd dff
xda1 a1ff a1 clk vdd gnd dff
xda2 a2ff a2 clk vdd gnd dff
xda3 a3ff a3 clk vdd gnd dff

xdb0 b0ff b0 clk vdd gnd dff
xdb1 b1ff b1 clk vdd gnd dff
xdb2 b2ff b2 clk vdd gnd dff
xdb3 b3ff b3 clk vdd gnd dff

x1 p0 a0ff b0ff vdd gnd XOR
x2 p1 a1ff b1ff vdd gnd XOR
x3 p2 a2ff b2ff vdd gnd XOR
x4 p3 a3ff b3ff vdd gnd XOR

x5 g0 a0ff b0ff vdd gnd AND
x6 g1 a1ff b1ff vdd gnd AND
x7 g2 a2ff b2ff vdd gnd AND
x8 g3 a3ff b3ff vdd gnd AND

x9 0C1 p0 C0 vdd gnd AND
x10 C1 0C1 g0 vdd gnd OR

x11 0C2 p1 0C1 vdd gnd AND
x12 1C2 p1 g0 vdd gnd AND
x13 2C2 0C2 1C2 vdd gnd OR
x14 C2 2C2 g1 vdd gnd OR

x15 0C3 p0 C0 vdd gnd AND   
x16 1C3 p1 0C3 vdd gnd AND
x17 2C3 p2 1C3 vdd gnd AND
x18 3C3 p1 g0 vdd gnd AND  
x19 4C3 p2 3C3 vdd gnd AND  
x20 5C3 2C2 4C3 vdd gnd AND
x21 6C3 2C3 4C3 vdd gnd OR 
x22 7C3 5C3 6C3 vdd gnd OR
x23 C3 7C3 g2 vdd gnd OR

x24 0C4 p0 C0 vdd gnd AND
x25 1C4 p1 0C4 vdd gnd AND
x26 2C4 p2 1C4 vdd gnd AND
x27 3C4 p3 2C4 vdd gnd AND
x28 4C4 p1 g0 vdd gnd AND
x29 5C4 p2 4C4 vdd gnd AND
x30 6C4 p3 5C4 vdd gnd AND
x31 7C4 p2 g1 vdd gnd AND
x32 8C4 p3 7C4 vdd gnd AND
x33 9C4 p3 g2 vdd gnd AND
x34 10C4 3C4 6C4 vdd gnd OR  
x35 11C4 10C4 8C4 vdd gnd OR
x36 12C4 11C4 9C4 vdd gnd OR     
x37 C4 12C4 g3 vdd gnd OR       

x38 S0 p0 C0 vdd gnd XOR
x39 S1 p1 C1 vdd gnd XOR
x40 S2 p2 C2 vdd gnd XOR
x41 S3 p3 C3 vdd gnd XOR

xdS0 S0ff S0 clk vdd gnd dff
xdS1 S1ff S1 clk vdd gnd dff
xdS2 S2ff S2 clk vdd gnd dff
xdS3 S3ff S3 clk vdd gnd dff
xdC4 C4ff C4 clk vdd gnd dff 

.tran 0.1n 200n
.control
run
plot v(S0ff) v(S1ff)+2 v(S2ff)+4 v(S3ff)+6 v(C4ff)+8 clk-4 a0-2
.endc

.measure tran tpd_carry TRIG v(a0) VAL=0.9 RISE=1 TARG v(C4ff) VAL=0.9 RISE=1
.measure tran tpd_s3 TRIG v(a0) VAL=0.9 RISE=1 TARG v(S3ff) VAL=0.9 RISE=1
.measure tran tpd_s2 TRIG v(a0) VAL=0.9 RISE=1 TARG v(S2ff) VAL=0.9 RISE=1
.measure tran tpd_s1 TRIG v(a0) VAL=0.9 RISE=1 TARG v(S1ff) VAL=0.9 RISE=1
.measure tran tpd_s0 TRIG v(a0) VAL=0.9 RISE=1 TARG v(S0ff) VAL=0.9 RISE=1
.end
