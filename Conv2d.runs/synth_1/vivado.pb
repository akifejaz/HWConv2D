

Command: %s
53*	vivadotcl2N
:synth_design -top conv2d_controller -part xc7a100tcsg324-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px? 
?
Pparameter declaration becomes local in %s with formal parameter declaration list2507*oasys2%
conv2d_controller2default:default2{
eD:/Akif/ITU/Semester 7/FYI-I/Vivado/dsd_project/Conv2d/Conv2d.srcs/sources_1/new/conv2d_controller.sv2default:default2
1502default:default8@Z8-2507h px? 
?
%s*synth2?
sStarting Synthesize : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 474.570 ; gain = 173.590
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2%
conv2d_controller2default:default2
 2default:default2{
eD:/Akif/ITU/Semester 7/FYI-I/Vivado/dsd_project/Conv2d/Conv2d.srcs/sources_1/new/conv2d_controller.sv2default:default2
352default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter ADDR_DATA bound to: 12 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter ADDR_KERNAL bound to: 3 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter IN_DATA_W bound to: 8 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter DATA_ROWS bound to: 4096 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN_KERNAL_W bound to: 8 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter KERNAL_ROWS bound to: 9 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter NUM_ELEMS bound to: 3 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter OUT_DATA_W bound to: 3844 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter ONE_ROW_LEN bound to: 64 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter OUT_WIDTH bound to: 20 - type: integer 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter IDLE bound to: 0 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter ADDR_CHANGE bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter ROW_CHANGE bound to: 2 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter READ_DATA bound to: 3 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter COMPUTE bound to: 4 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter WRITE_DATA bound to: 5 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2

Static_RAM2default:default2
 2default:default2t
^D:/Akif/ITU/Semester 7/FYI-I/Vivado/dsd_project/Conv2d/Conv2d.srcs/sources_1/new/Static_RAM.sv2default:default2
232default:default8@Z8-6157h px? 
X
%s
*synth2@
,	Parameter IDW bound to: 8 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter IDL bound to: 4096 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter ODW bound to: 3844 - type: integer 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter IKW bound to: 8 - type: integer 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter IKL bound to: 9 - type: integer 
2default:defaulth p
x
? 
?
,$readmem data file '%s' is read successfully3426*oasys2k
WD:/Akif/ITU/Semester 7/FYI-I/Vivado/Python_TestBench/conv2D/version2.0/conv_inputV2.txt2default:default2t
^D:/Akif/ITU/Semester 7/FYI-I/Vivado/dsd_project/Conv2d/Conv2d.srcs/sources_1/new/Static_RAM.sv2default:default2
392default:default8@Z8-3876h px? 
?
ignoring %s2898*oasys2@
,malformed $readmem task: invalid memory name2default:default2t
^D:/Akif/ITU/Semester 7/FYI-I/Vivado/dsd_project/Conv2d/Conv2d.srcs/sources_1/new/Static_RAM.sv2default:default2
402default:default8@Z8-2898h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

Static_RAM2default:default2
 2default:default2
12default:default2
12default:default2t
^D:/Akif/ITU/Semester 7/FYI-I/Vivado/dsd_project/Conv2d/Conv2d.srcs/sources_1/new/Static_RAM.sv2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
matrix_compute2default:default2
 2default:default2x
bD:/Akif/ITU/Semester 7/FYI-I/Vivado/dsd_project/Conv2d/Conv2d.srcs/sources_1/new/matrix_compute.sv2default:default2
232default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter ARRAY_DIM bound to: 3 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter DATA_WIDTH bound to: 24 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter OUT_WIDTH bound to: 20 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2&
matrix_accumulator2default:default2
 2default:default2|
fD:/Akif/ITU/Semester 7/FYI-I/Vivado/dsd_project/Conv2d/Conv2d.srcs/sources_1/new/matrix_accumulator.sv2default:default2
222default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter NUM_ELEMS bound to: 3 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter OUT_WIDTH bound to: 20 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter PRODUCT_WIDTH bound to: 18 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter DOT_PRODUCT_WIDTH bound to: 20 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter SEXT_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
matrix_accumulator2default:default2
 2default:default2
22default:default2
12default:default2|
fD:/Akif/ITU/Semester 7/FYI-I/Vivado/dsd_project/Conv2d/Conv2d.srcs/sources_1/new/matrix_accumulator.sv2default:default2
222default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
matrix_compute2default:default2
 2default:default2
32default:default2
12default:default2x
bD:/Akif/ITU/Semester 7/FYI-I/Vivado/dsd_project/Conv2d/Conv2d.srcs/sources_1/new/matrix_compute.sv2default:default2
232default:default8@Z8-6155h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
state2default:default2{
eD:/Akif/ITU/Semester 7/FYI-I/Vivado/dsd_project/Conv2d/Conv2d.srcs/sources_1/new/conv2d_controller.sv2default:default2
2932default:default8@Z8-6090h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2

reg_data_a2default:default2{
eD:/Akif/ITU/Semester 7/FYI-I/Vivado/dsd_project/Conv2d/Conv2d.srcs/sources_1/new/conv2d_controller.sv2default:default2
3042default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2

reg_data_b2default:default2{
eD:/Akif/ITU/Semester 7/FYI-I/Vivado/dsd_project/Conv2d/Conv2d.srcs/sources_1/new/conv2d_controller.sv2default:default2
3042default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2

reg_data_c2default:default2{
eD:/Akif/ITU/Semester 7/FYI-I/Vivado/dsd_project/Conv2d/Conv2d.srcs/sources_1/new/conv2d_controller.sv2default:default2
3042default:default8@Z8-567h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2
we2default:default2%
conv2d_controller2default:default2{
eD:/Akif/ITU/Semester 7/FYI-I/Vivado/dsd_project/Conv2d/Conv2d.srcs/sources_1/new/conv2d_controller.sv2default:default2
922default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2
addr_data_b2default:default2%
conv2d_controller2default:default2{
eD:/Akif/ITU/Semester 7/FYI-I/Vivado/dsd_project/Conv2d/Conv2d.srcs/sources_1/new/conv2d_controller.sv2default:default2
872default:default8@Z8-3848h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2
addr_kernal2default:default2%
conv2d_controller2default:default2{
eD:/Akif/ITU/Semester 7/FYI-I/Vivado/dsd_project/Conv2d/Conv2d.srcs/sources_1/new/conv2d_controller.sv2default:default2
882default:default8@Z8-3848h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
conv2d_controller2default:default2
 2default:default2
42default:default2
12default:default2{
eD:/Akif/ITU/Semester 7/FYI-I/Vivado/dsd_project/Conv2d/Conv2d.srcs/sources_1/new/conv2d_controller.sv2default:default2
352default:default8@Z8-6155h px? 
|
!design %s has unconnected port %s3331*oasys2

Static_RAM2default:default2
clk2default:defaultZ8-3331h px? 
?
%s*synth2?
sFinished Synthesize : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 520.875 ; gain = 219.895
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
~Finished Constraint Validation : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 520.875 ; gain = 219.895
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
K
%s
*synth23
Loading part: xc7a100tcsg324-1
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
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 520.875 ; gain = 219.895
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
counter_reg2default:default2%
conv2d_controller2default:defaultZ8-802h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
counter2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

reg_data_a2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

reg_data_a2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

reg_data_a2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

reg_data_b2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

reg_data_b2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

reg_data_b2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

reg_data_c2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

reg_data_c2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

reg_data_c2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
addr_data_a2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
counter2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
!inferring latch for variable '%s'327*oasys2"
din_kernal_reg2default:default2t
^D:/Akif/ITU/Semester 7/FYI-I/Vivado/dsd_project/Conv2d/Conv2d.srcs/sources_1/new/Static_RAM.sv2default:default2
492default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2!
Kernal_reg[0]2default:default2t
^D:/Akif/ITU/Semester 7/FYI-I/Vivado/dsd_project/Conv2d/Conv2d.srcs/sources_1/new/Static_RAM.sv2default:default2
492default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2!
Kernal_reg[1]2default:default2t
^D:/Akif/ITU/Semester 7/FYI-I/Vivado/dsd_project/Conv2d/Conv2d.srcs/sources_1/new/Static_RAM.sv2default:default2
492default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2!
Kernal_reg[2]2default:default2t
^D:/Akif/ITU/Semester 7/FYI-I/Vivado/dsd_project/Conv2d/Conv2d.srcs/sources_1/new/Static_RAM.sv2default:default2
492default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2!
Kernal_reg[3]2default:default2t
^D:/Akif/ITU/Semester 7/FYI-I/Vivado/dsd_project/Conv2d/Conv2d.srcs/sources_1/new/Static_RAM.sv2default:default2
492default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2!
Kernal_reg[4]2default:default2t
^D:/Akif/ITU/Semester 7/FYI-I/Vivado/dsd_project/Conv2d/Conv2d.srcs/sources_1/new/Static_RAM.sv2default:default2
492default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2!
Kernal_reg[5]2default:default2t
^D:/Akif/ITU/Semester 7/FYI-I/Vivado/dsd_project/Conv2d/Conv2d.srcs/sources_1/new/Static_RAM.sv2default:default2
492default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2!
Kernal_reg[6]2default:default2t
^D:/Akif/ITU/Semester 7/FYI-I/Vivado/dsd_project/Conv2d/Conv2d.srcs/sources_1/new/Static_RAM.sv2default:default2
492default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2!
Kernal_reg[7]2default:default2t
^D:/Akif/ITU/Semester 7/FYI-I/Vivado/dsd_project/Conv2d/Conv2d.srcs/sources_1/new/Static_RAM.sv2default:default2
492default:default8@Z8-327h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE3 |                             0000 |                             0000
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE2 |                             0001 |                             0001
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE1 |                             0010 |                             0010
2default:defaulth p
x
? 
?
%s
*synth2s
_                  iSTATE |                             0011 |                             0011
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE0 |                             0100 |                             0100
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE8 |                             0101 |                             0101
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE6 |                             0110 |                             0110
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE5 |                             0111 |                             0111
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE7 |                             1000 |                             1000
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE4 |                             1001 |                             1001
2default:defaulth p
x
? 
.
%s
*synth2
*
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
counter_reg2default:default2

sequential2default:default2%
conv2d_controller2default:defaultZ8-3354h px? 
?
!inferring latch for variable '%s'327*oasys2 
mat_a_reg[0]2default:default2{
eD:/Akif/ITU/Semester 7/FYI-I/Vivado/dsd_project/Conv2d/Conv2d.srcs/sources_1/new/conv2d_controller.sv2default:default2
1202default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
mat_a_reg[1]2default:default2{
eD:/Akif/ITU/Semester 7/FYI-I/Vivado/dsd_project/Conv2d/Conv2d.srcs/sources_1/new/conv2d_controller.sv2default:default2
1202default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
mat_a_reg[2]2default:default2{
eD:/Akif/ITU/Semester 7/FYI-I/Vivado/dsd_project/Conv2d/Conv2d.srcs/sources_1/new/conv2d_controller.sv2default:default2
1202default:default8@Z8-327h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:12 ; elapsed = 00:00:11 . Memory (MB): peak = 570.047 ; gain = 269.066
2default:defaulth px? 
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

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
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
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     20 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     12 Bit       Adders := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 1     
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
.	               20 Bit    Registers := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 5     
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
Z
%s
*synth2B
.	   2 Input     20 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     12 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input     12 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input     12 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  10 Input     12 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  10 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  11 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  13 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 33    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input      1 Bit        Muxes := 17    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  13 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  10 Input      1 Bit        Muxes := 10    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      1 Bit        Muxes := 1     
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
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
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
#Hierarchical RTL Component report 
2default:defaulth p
x
? 
F
%s
*synth2.
Module conv2d_controller 
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
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     12 Bit       Adders := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 1     
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
.	               20 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 5     
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
Z
%s
*synth2B
.	   2 Input     12 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input     12 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input     12 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  10 Input     12 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  10 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  11 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  13 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 25    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input      1 Bit        Muxes := 17    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  13 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  10 Input      1 Bit        Muxes := 10    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
?
%s
*synth2'
Module Static_RAM 
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
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 8     
2default:defaulth p
x
? 
G
%s
*synth2/
Module matrix_accumulator 
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
.	               20 Bit    Registers := 1     
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
Z
%s
*synth2B
.	   2 Input     20 Bit        Muxes := 1     
2default:defaulth p
x
? 
C
%s
*synth2+
Module matrix_compute 
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
Z
%s
*synth2B
.	   3 Input     20 Bit       Adders := 1     
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
.	               20 Bit    Registers := 1     
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
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
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
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
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
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
reg_data_a_reg[2][0]2default:default2
FDE2default:default2(
reg_data_a_reg[2][7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
reg_data_a_reg[1][0]2default:default2
FDE2default:default2(
reg_data_a_reg[1][7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
reg_data_a_reg[0][0]2default:default2
FDE2default:default2(
reg_data_a_reg[0][7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
reg_data_c_reg[2][0]2default:default2
FDE2default:default2(
reg_data_c_reg[2][7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
reg_data_c_reg[1][0]2default:default2
FDE2default:default2(
reg_data_c_reg[1][7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
reg_data_c_reg[0][0]2default:default2
FDE2default:default2(
reg_data_c_reg[0][7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
reg_data_b_reg[2][0]2default:default2
FDE2default:default2(
reg_data_b_reg[2][7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
reg_data_b_reg[1][0]2default:default2
FDE2default:default2(
reg_data_b_reg[1][7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
reg_data_b_reg[0][0]2default:default2
FDE2default:default2(
reg_data_b_reg[0][7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
mat_a_reg[0][0]2default:default2
LD2default:default2#
mat_a_reg[0][7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
mat_a_reg[0][8]2default:default2
LD2default:default2$
mat_a_reg[0][15]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2$
mat_a_reg[0][16]2default:default2
LD2default:default2$
mat_a_reg[0][23]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
mat_a_reg[2][0]2default:default2
LD2default:default2#
mat_a_reg[2][7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
mat_a_reg[2][8]2default:default2
LD2default:default2$
mat_a_reg[2][15]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2$
mat_a_reg[2][16]2default:default2
LD2default:default2$
mat_a_reg[2][23]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
mat_a_reg[1][0]2default:default2
LD2default:default2#
mat_a_reg[1][7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2#
mat_a_reg[1][8]2default:default2
LD2default:default2$
mat_a_reg[1][15]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2$
mat_a_reg[1][16]2default:default2
LD2default:default2$
mat_a_reg[1][23]2default:defaultZ8-3886h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
RAM/din_kernal_reg[7]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
RAM/din_kernal_reg[6]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
RAM/din_kernal_reg[5]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
RAM/din_kernal_reg[4]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
RAM/din_kernal_reg[3]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
RAM/din_kernal_reg[2]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
RAM/din_kernal_reg[1]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
RAM/din_kernal_reg[0]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[0][7]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[0][6]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[0][5]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[0][4]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[0][3]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[0][2]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[0][1]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[0][0]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[1][7]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[1][6]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[1][5]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[1][4]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[1][3]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[1][2]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[1][1]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[1][0]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[2][7]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[2][6]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[2][5]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[2][4]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[2][3]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[2][2]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[2][1]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[2][0]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[3][7]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[3][6]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[3][5]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[3][4]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[3][3]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[3][2]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[3][1]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[3][0]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[4][7]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[4][6]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[4][5]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[4][4]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[4][3]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[4][2]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[4][1]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[4][0]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[5][7]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[5][6]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[5][5]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[5][4]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[5][3]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[5][2]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[5][1]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[5][0]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[6][7]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[6][6]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[6][5]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[6][4]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[6][3]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[6][2]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[6][1]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[6][0]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[7][7]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[7][6]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[7][5]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[7][4]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[7][3]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[7][2]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[7][1]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
RAM/Kernal_reg[7][0]2default:default2%
conv2d_controller2default:defaultZ8-3332h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 697.379 ; gain = 396.398
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
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
2
%s*synth2

ROM:
2default:defaulth px? 
x
%s*synth2`
L+------------------+---------------------+---------------+----------------+
2default:defaulth px? 
y
%s*synth2a
M|Module Name       | RTL Object          | Depth x Width | Implemented As | 
2default:defaulth px? 
x
%s*synth2`
L+------------------+---------------------+---------------+----------------+
2default:defaulth px? 
y
%s*synth2a
M|Static_RAM        | p_0_out             | 4096x7        | LUT            | 
2default:defaulth px? 
y
%s*synth2a
M|Static_RAM        | p_0_out             | 4096x7        | LUT            | 
2default:defaulth px? 
y
%s*synth2a
M|conv2d_controller | addr_data_a_reg_rep | 4096x7        | Block RAM      | 
2default:defaulth px? 
y
%s*synth2a
M+------------------+---------------------+---------------+----------------+

2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys2+
i_0/addr_data_a_reg_rep2default:default2
Block2default:defaultZ8-6837h px? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
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
|Finished Timing Optimization : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 702.707 ; gain = 401.727
2default:defaulth px? 
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

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
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
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys2'
addr_data_a_reg_rep2default:default2
Block2default:defaultZ8-6837h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Technology Mapping : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 702.922 ; gain = 401.941
2default:defaulth px? 
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

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
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
uFinished IO Insertion : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 707.711 ; gain = 406.730
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
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
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 707.711 ; gain = 406.730
2default:defaulth px? 
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

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
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
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 707.711 ; gain = 406.730
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
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 707.711 ; gain = 406.730
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 707.723 ; gain = 406.742
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
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 707.723 ; gain = 406.742
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
|1     |BUFG     |     2|
2default:defaulth px? 
F
%s*synth2.
|2     |CARRY4   |   190|
2default:defaulth px? 
F
%s*synth2.
|3     |LUT1     |    14|
2default:defaulth px? 
F
%s*synth2.
|4     |LUT2     |   360|
2default:defaulth px? 
F
%s*synth2.
|5     |LUT3     |   101|
2default:defaulth px? 
F
%s*synth2.
|6     |LUT4     |   253|
2default:defaulth px? 
F
%s*synth2.
|7     |LUT5     |   140|
2default:defaulth px? 
F
%s*synth2.
|8     |LUT6     |   310|
2default:defaulth px? 
F
%s*synth2.
|9     |RAMB36E1 |     1|
2default:defaulth px? 
F
%s*synth2.
|10    |FDCE     |    60|
2default:defaulth px? 
F
%s*synth2.
|11    |FDRE     |   201|
2default:defaulth px? 
F
%s*synth2.
|12    |FDSE     |     1|
2default:defaulth px? 
F
%s*synth2.
|13    |LD       |    63|
2default:defaulth px? 
F
%s*synth2.
|14    |IBUF     |    86|
2default:defaulth px? 
F
%s*synth2.
|15    |OBUF     |    48|
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
]
%s
*synth2E
1+------+----------+---------------------+------+
2default:defaulth p
x
? 
]
%s
*synth2E
1|      |Instance  |Module               |Cells |
2default:defaulth p
x
? 
]
%s
*synth2E
1+------+----------+---------------------+------+
2default:defaulth p
x
? 
]
%s
*synth2E
1|1     |top       |                     |  1830|
2default:defaulth p
x
? 
]
%s
*synth2E
1|2     |  comp    |matrix_compute       |  1261|
2default:defaulth p
x
? 
]
%s
*synth2E
1|3     |    acc01 |matrix_accumulator   |   399|
2default:defaulth p
x
? 
]
%s
*synth2E
1|4     |    acc02 |matrix_accumulator_0 |   400|
2default:defaulth p
x
? 
]
%s
*synth2E
1|5     |    acc03 |matrix_accumulator_1 |   399|
2default:defaulth p
x
? 
]
%s
*synth2E
1+------+----------+---------------------+------+
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
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 707.723 ; gain = 406.742
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
GSynthesis finished with 0 errors, 0 critical warnings and 94 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 707.723 ; gain = 406.742
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 707.723 ; gain = 406.742
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
2542default:defaultZ29-17h px? 
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
00:00:00.0012default:default2
814.0702default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2[
G  A total of 63 instances were transformed.
  LD => LDCE: 63 instances
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
522default:default2
942default:default2
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
00:00:312default:default2
00:00:382default:default2
814.0702default:default2
513.0902default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
814.0702default:default2
0.0002default:defaultZ17-268h px? 
K
"No constraints selected for write.1103*constraintsZ18-5210h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2t
`D:/Akif/ITU/Semester 7/FYI-I/Vivado/dsd_project/Conv2d/Conv2d.runs/synth_1/conv2d_controller.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
xExecuting : report_utilization -file conv2d_controller_utilization_synth.rpt -pb conv2d_controller_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Jan  4 06:15:06 20232default:defaultZ17-206h px? 


End Record