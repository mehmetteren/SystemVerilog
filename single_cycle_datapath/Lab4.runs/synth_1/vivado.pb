
?
Command: %s
1870*	planAhead2?
zread_checkpoint -auto_incremental -incremental C:/Users/pine1/Desktop/CS224/Lab4/Lab4.srcs/utils_1/imports/synth_1/top.dcp2default:defaultZ12-2866h px? 
?
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2_
KC:/Users/pine1/Desktop/CS224/Lab4/Lab4.srcs/utils_1/imports/synth_1/top.dcp2default:defaultZ12-5825h px? 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px? 
p
Command: %s
53*	vivadotcl2?
+synth_design -top top -part xc7a35tcsg324-32default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px? 
?
[Reference run did not run incremental synthesis because %s; reverting to default synthesis
2138*designutils2+
the design is too small2default:defaultZ20-4072h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
100802default:defaultZ8-7075h px? 
?
%s*synth2?
rStarting Synthesize : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1260.418 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
top2default:default2
 2default:default2W
AC:/Users/pine1/Desktop/CS224/Lab4/Lab4.srcs/sources_1/new/mips.sv2default:default2
62default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
mips2default:default2
 2default:default2W
AC:/Users/pine1/Desktop/CS224/Lab4/Lab4.srcs/sources_1/new/mips.sv2default:default2
842default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2

controller2default:default2
 2default:default2W
AC:/Users/pine1/Desktop/CS224/Lab4/Lab4.srcs/sources_1/new/mips.sv2default:default2
1012default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
maindec2default:default2
 2default:default2W
AC:/Users/pine1/Desktop/CS224/Lab4/Lab4.srcs/sources_1/new/mips.sv2default:default2
1212default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
maindec2default:default2
 2default:default2
12default:default2
12default:default2W
AC:/Users/pine1/Desktop/CS224/Lab4/Lab4.srcs/sources_1/new/mips.sv2default:default2
1212default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
aludec2default:default2
 2default:default2W
AC:/Users/pine1/Desktop/CS224/Lab4/Lab4.srcs/sources_1/new/mips.sv2default:default2
1452default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
aludec2default:default2
 2default:default2
22default:default2
12default:default2W
AC:/Users/pine1/Desktop/CS224/Lab4/Lab4.srcs/sources_1/new/mips.sv2default:default2
1452default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

controller2default:default2
 2default:default2
32default:default2
12default:default2W
AC:/Users/pine1/Desktop/CS224/Lab4/Lab4.srcs/sources_1/new/mips.sv2default:default2
1012default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
datapath2default:default2
 2default:default2W
AC:/Users/pine1/Desktop/CS224/Lab4/Lab4.srcs/sources_1/new/mips.sv2default:default2
1632default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
flopr2default:default2
 2default:default2W
AC:/Users/pine1/Desktop/CS224/Lab4/Lab4.srcs/sources_1/new/mips.sv2default:default2
2622default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
flopr2default:default2
 2default:default2
42default:default2
12default:default2W
AC:/Users/pine1/Desktop/CS224/Lab4/Lab4.srcs/sources_1/new/mips.sv2default:default2
2622default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
adder2default:default2
 2default:default2W
AC:/Users/pine1/Desktop/CS224/Lab4/Lab4.srcs/sources_1/new/mips.sv2default:default2
2432default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
adder2default:default2
 2default:default2
52default:default2
12default:default2W
AC:/Users/pine1/Desktop/CS224/Lab4/Lab4.srcs/sources_1/new/mips.sv2default:default2
2432default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
sl22default:default2
 2default:default2W
AC:/Users/pine1/Desktop/CS224/Lab4/Lab4.srcs/sources_1/new/mips.sv2default:default2
2492default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
sl22default:default2
 2default:default2
62default:default2
12default:default2W
AC:/Users/pine1/Desktop/CS224/Lab4/Lab4.srcs/sources_1/new/mips.sv2default:default2
2492default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
mux22default:default2
 2default:default2W
AC:/Users/pine1/Desktop/CS224/Lab4/Lab4.srcs/sources_1/new/mips.sv2default:default2
2742default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mux22default:default2
 2default:default2
72default:default2
12default:default2W
AC:/Users/pine1/Desktop/CS224/Lab4/Lab4.srcs/sources_1/new/mips.sv2default:default2
2742default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
regfile2default:default2
 2default:default2W
AC:/Users/pine1/Desktop/CS224/Lab4/Lab4.srcs/sources_1/new/mips.sv2default:default2
2032default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
regfile2default:default2
 2default:default2
82default:default2
12default:default2W
AC:/Users/pine1/Desktop/CS224/Lab4/Lab4.srcs/sources_1/new/mips.sv2default:default2
2032default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
mux2__parameterized02default:default2
 2default:default2W
AC:/Users/pine1/Desktop/CS224/Lab4/Lab4.srcs/sources_1/new/mips.sv2default:default2
2742default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 5 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
mux2__parameterized02default:default2
 2default:default2
82default:default2
12default:default2W
AC:/Users/pine1/Desktop/CS224/Lab4/Lab4.srcs/sources_1/new/mips.sv2default:default2
2742default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
signext2default:default2
 2default:default2W
AC:/Users/pine1/Desktop/CS224/Lab4/Lab4.srcs/sources_1/new/mips.sv2default:default2
2552default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
signext2default:default2
 2default:default2
92default:default2
12default:default2W
AC:/Users/pine1/Desktop/CS224/Lab4/Lab4.srcs/sources_1/new/mips.sv2default:default2
2552default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
alu2default:default2
 2default:default2W
AC:/Users/pine1/Desktop/CS224/Lab4/Lab4.srcs/sources_1/new/mips.sv2default:default2
2232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
alu2default:default2
 2default:default2
102default:default2
12default:default2W
AC:/Users/pine1/Desktop/CS224/Lab4/Lab4.srcs/sources_1/new/mips.sv2default:default2
2232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
datapath2default:default2
 2default:default2
112default:default2
12default:default2W
AC:/Users/pine1/Desktop/CS224/Lab4/Lab4.srcs/sources_1/new/mips.sv2default:default2
1632default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mips2default:default2
 2default:default2
122default:default2
12default:default2W
AC:/Users/pine1/Desktop/CS224/Lab4/Lab4.srcs/sources_1/new/mips.sv2default:default2
842default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
imem2default:default2
 2default:default2W
AC:/Users/pine1/Desktop/CS224/Lab4/Lab4.srcs/sources_1/new/mips.sv2default:default2
432default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
imem2default:default2
 2default:default2
132default:default2
12default:default2W
AC:/Users/pine1/Desktop/CS224/Lab4/Lab4.srcs/sources_1/new/mips.sv2default:default2
432default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
dmem2default:default2
 2default:default2W
AC:/Users/pine1/Desktop/CS224/Lab4/Lab4.srcs/sources_1/new/mips.sv2default:default2
222default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
dmem2default:default2
 2default:default2
142default:default2
12default:default2W
AC:/Users/pine1/Desktop/CS224/Lab4/Lab4.srcs/sources_1/new/mips.sv2default:default2
222default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
top2default:default2
 2default:default2
152default:default2
12default:default2W
AC:/Users/pine1/Desktop/CS224/Lab4/Lab4.srcs/sources_1/new/mips.sv2default:default2
62default:default8@Z8-6155h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[31]2default:default2
dmem2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[30]2default:default2
dmem2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[29]2default:default2
dmem2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[28]2default:default2
dmem2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[27]2default:default2
dmem2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[26]2default:default2
dmem2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[25]2default:default2
dmem2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[24]2default:default2
dmem2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[23]2default:default2
dmem2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[22]2default:default2
dmem2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[21]2default:default2
dmem2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[20]2default:default2
dmem2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[19]2default:default2
dmem2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[18]2default:default2
dmem2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[17]2default:default2
dmem2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[16]2default:default2
dmem2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[15]2default:default2
dmem2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[14]2default:default2
dmem2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[13]2default:default2
dmem2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[12]2default:default2
dmem2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[11]2default:default2
dmem2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[10]2default:default2
dmem2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[9]2default:default2
dmem2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[8]2default:default2
dmem2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[1]2default:default2
dmem2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[0]2default:default2
dmem2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[31]2default:default2
sl22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
a[30]2default:default2
sl22default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	instr[31]2default:default2
datapath2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	instr[30]2default:default2
datapath2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	instr[29]2default:default2
datapath2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	instr[28]2default:default2
datapath2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	instr[27]2default:default2
datapath2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
	instr[26]2default:default2
datapath2default:defaultZ8-7129h px? 
?
%s*synth2?
rFinished Synthesize : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1260.418 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Constraint Validation : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 1260.418 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7a35tcsg324-3
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 1260.418 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
Loading part %s157*device2#
xc7a35tcsg324-32default:defaultZ21-403h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 1260.418 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   32 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 7     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  27 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   9 Input    9 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px? 
?
+design %s has port %s driven by constant %s3447*oasys2
top2default:default2
	instr[30]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2
top2default:default2
	instr[25]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2
top2default:default2
	instr[20]2default:default2
02default:defaultZ8-3917h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 1260.418 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
j
%s*synth2R
>
Distributed RAM: Preliminary Mapping Report (see note below)
2default:defaulth px? 
?
%s*synth2k
W+------------+-------------------+-----------+----------------------+----------------+
2default:defaulth px? 
?
%s*synth2l
X|Module Name | RTL Object        | Inference | Size (Depth x Width) | Primitives     | 
2default:defaulth px? 
?
%s*synth2k
W+------------+-------------------+-----------+----------------------+----------------+
2default:defaulth px? 
?
%s*synth2l
X|top         | mips/dp/rf/rf_reg | Implied   | 32 x 32              | RAM32M x 12    | 
2default:defaulth px? 
?
%s*synth2l
X|top         | dmem/RAM_reg      | Implied   | 64 x 32              | RAM64X1S x 32  | 
2default:defaulth px? 
?
%s*synth2l
X+------------+-------------------+-----------+----------------------+----------------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Timing Optimization : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 1260.418 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
S
%s
*synth2;
'
Distributed RAM: Final Mapping Report
2default:defaulth p
x
? 
?
%s
*synth2k
W+------------+-------------------+-----------+----------------------+----------------+
2default:defaulth p
x
? 
?
%s
*synth2l
X|Module Name | RTL Object        | Inference | Size (Depth x Width) | Primitives     | 
2default:defaulth p
x
? 
?
%s
*synth2k
W+------------+-------------------+-----------+----------------------+----------------+
2default:defaulth p
x
? 
?
%s
*synth2l
X|top         | mips/dp/rf/rf_reg | Implied   | 32 x 32              | RAM32M x 12    | 
2default:defaulth p
x
? 
?
%s
*synth2l
X|top         | dmem/RAM_reg      | Implied   | 64 x 32              | RAM64X1S x 32  | 
2default:defaulth p
x
? 
?
%s
*synth2l
X+------------+-------------------+-----------+----------------------+----------------+

2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
zFinished Technology Mapping : Time (s): cpu = 00:00:20 ; elapsed = 00:00:20 . Memory (MB): peak = 1260.418 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
tFinished IO Insertion : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 1260.418 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 1260.418 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 1260.418 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 1260.418 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 1260.418 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Renaming Generated Nets : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 1260.418 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
F
%s*synth2.
+------+---------+------+
2default:defaulth px? 
F
%s*synth2.
|      |Cell     |Count |
2default:defaulth px? 
F
%s*synth2.
+------+---------+------+
2default:defaulth px? 
F
%s*synth2.
|1     |BUFG     |     1|
2default:defaulth px? 
F
%s*synth2.
|2     |CARRY4   |    36|
2default:defaulth px? 
F
%s*synth2.
|3     |LUT1     |     1|
2default:defaulth px? 
F
%s*synth2.
|4     |LUT2     |    12|
2default:defaulth px? 
F
%s*synth2.
|5     |LUT3     |    12|
2default:defaulth px? 
F
%s*synth2.
|6     |LUT4     |    30|
2default:defaulth px? 
F
%s*synth2.
|7     |LUT5     |   152|
2default:defaulth px? 
F
%s*synth2.
|8     |LUT6     |   260|
2default:defaulth px? 
F
%s*synth2.
|9     |RAM32M   |    10|
2default:defaulth px? 
F
%s*synth2.
|10    |RAM32X1D |     4|
2default:defaulth px? 
F
%s*synth2.
|11    |RAM64X1S |    32|
2default:defaulth px? 
F
%s*synth2.
|12    |FDCE     |    38|
2default:defaulth px? 
F
%s*synth2.
|13    |IBUF     |     2|
2default:defaulth px? 
F
%s*synth2.
|14    |OBUF     |   161|
2default:defaulth px? 
F
%s*synth2.
+------+---------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
T
%s
*synth2<
(+------+-------------+---------+------+
2default:defaulth p
x
? 
T
%s
*synth2<
(|      |Instance     |Module   |Cells |
2default:defaulth p
x
? 
T
%s
*synth2<
(+------+-------------+---------+------+
2default:defaulth p
x
? 
T
%s
*synth2<
(|1     |top          |         |   751|
2default:defaulth p
x
? 
T
%s
*synth2<
(|2     |  dmem       |dmem     |    32|
2default:defaulth p
x
? 
T
%s
*synth2<
(|3     |  mips       |mips     |   555|
2default:defaulth p
x
? 
T
%s
*synth2<
(|4     |    dp       |datapath |   555|
2default:defaulth p
x
? 
T
%s
*synth2<
(|5     |      alu    |alu      |    28|
2default:defaulth p
x
? 
T
%s
*synth2<
(|6     |      pcadd2 |adder    |     8|
2default:defaulth p
x
? 
T
%s
*synth2<
(|7     |      pcreg  |flopr    |   503|
2default:defaulth p
x
? 
T
%s
*synth2<
(|8     |      rf     |regfile  |    16|
2default:defaulth p
x
? 
T
%s
*synth2<
(+------+-------------+---------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 1260.418 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 38 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
}Synthesis Optimization Runtime : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 1260.418 ; gain = 0.000
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Complete : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 1260.418 ; gain = 0.000
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0262default:default2
1260.4182default:default2
0.0002default:defaultZ17-268h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
822default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1260.4182default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 46 instances were transformed.
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 10 instances
  RAM32X1D => RAM32X1D (RAMD32(x2)): 4 instances
  RAM64X1S => RAM64X1S (RAMS64E): 32 instances
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
8a2f4de62default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
472default:default2
392default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:282default:default2
00:00:282default:default2
1260.4182default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2O
;C:/Users/pine1/Desktop/CS224/Lab4/Lab4.runs/synth_1/top.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2p
\Executing : report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Nov 15 20:28:40 20222default:defaultZ17-206h px? 


End Record