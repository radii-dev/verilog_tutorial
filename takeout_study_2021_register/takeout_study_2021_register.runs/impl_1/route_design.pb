
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7s502default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7s502default:defaultZ17-349h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
?CONFIG_VOLTAGE with Config Bank VCCO: The CONFIG_MODE property of current_design specifies a configuration mode (SPIx4) that uses pins in bank %s.  I/O standards used in this bank have a voltage requirement of 1.80.  However, the CONFIG_VOLTAGE for current_design is set to 3.3. If you're using any config pins in this bank, ensure that your configuration voltage is compatible with the I/O standards in banks used by your configuration mode.  Refer to device configuration user guide for more information.    Pins used by config mode: K17 (IO_L1P_T0_D00_MOSI_14), K18 (IO_L1N_T0_D01_DIN_14), L14 (IO_L2P_T0_D02_14), M15 (IO_L2N_T0_D03_14), L15 (IO_L3P_T0_DQS_PUDC_B_14), and M13 (IO_L6P_T0_FCS_B_14)%s*DRC2.
 "
142default:default2default:default2(
 DRC|Pin Planning2default:default8ZCFGBVS-7h px? 
b
DRC finished with %s
79*	vivadotcl2(
0 Errors, 1 Warnings2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
22default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
C
.Phase 1 Build RT Design | Checksum: 11b18311b
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:41 ; elapsed = 00:00:37 . Memory (MB): peak = 1735.477 ; gain = 77.8832default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
{
\No timing constraints were detected. The router will operate in resource-optimization mode.
64*routeZ35-64h px? 
{

Phase %s%s
101*constraints2
2.1 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
N
9Phase 2.1 Fix Topology Constraints | Checksum: 11b18311b
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:41 ; elapsed = 00:00:37 . Memory (MB): peak = 1741.457 ; gain = 83.8632default:defaulth px? 
t

Phase %s%s
101*constraints2
2.2 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
G
2Phase 2.2 Pre Route Cleanup | Checksum: 11b18311b
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:41 ; elapsed = 00:00:37 . Memory (MB): peak = 1741.457 ; gain = 83.8632default:defaulth px? 
H
3Phase 2 Router Initialization | Checksum: a2d89c70
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:42 ; elapsed = 00:00:37 . Memory (MB): peak = 1745.055 ; gain = 87.4612default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
C
.Phase 3 Initial Routing | Checksum: 128598839
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:42 ; elapsed = 00:00:37 . Memory (MB): peak = 1745.539 ; gain = 87.9452default:defaulth px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
G
2Phase 4.1 Global Iteration 0 | Checksum: c343f560
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:42 ; elapsed = 00:00:37 . Memory (MB): peak = 1745.539 ; gain = 87.9452default:defaulth px? 
E
0Phase 4 Rip-up And Reroute | Checksum: c343f560
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:42 ; elapsed = 00:00:37 . Memory (MB): peak = 1745.539 ; gain = 87.9452default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
N
9Phase 5 Delay and Skew Optimization | Checksum: c343f560
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:42 ; elapsed = 00:00:37 . Memory (MB): peak = 1745.539 ; gain = 87.9452default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
B
-Phase 6.1 Hold Fix Iter | Checksum: c343f560
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:42 ; elapsed = 00:00:37 . Memory (MB): peak = 1745.539 ; gain = 87.9452default:defaulth px? 
@
+Phase 6 Post Hold Fix | Checksum: c343f560
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:42 ; elapsed = 00:00:37 . Memory (MB): peak = 1745.539 ; gain = 87.9452default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
A
,Phase 7 Route finalize | Checksum: c343f560
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:42 ; elapsed = 00:00:37 . Memory (MB): peak = 1745.539 ; gain = 87.9452default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
H
3Phase 8 Verifying routed nets | Checksum: c343f560
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:42 ; elapsed = 00:00:37 . Memory (MB): peak = 1747.590 ; gain = 89.9962default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
E
0Phase 9 Depositing Routes | Checksum: 11f798f19
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:42 ; elapsed = 00:00:37 . Memory (MB): peak = 1747.590 ; gain = 89.9962default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:42 ; elapsed = 00:00:37 . Memory (MB): peak = 1747.590 ; gain = 89.9962default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
632default:default2
142default:default2
122default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:00:442default:default2
00:00:392default:default2
1747.5902default:default2
102.0662default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1747.5902default:default2
0.0002default:defaultZ17-268h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:002default:default2 
00:00:00.0842default:default2
1757.4652default:default2
9.8752default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
pD:/__verilog/learning/takeout_study_2021_register/takeout_study_2021_register.runs/impl_1/async_fifo1_routed.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
vExecuting : report_drc -file async_fifo1_drc_routed.rpt -pb async_fifo1_drc_routed.pb -rpx async_fifo1_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2}
ireport_drc -file async_fifo1_drc_routed.rpt -pb async_fifo1_drc_routed.pb -rpx async_fifo1_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
tD:/__verilog/learning/takeout_study_2021_register/takeout_study_2021_register.runs/impl_1/async_fifo1_drc_routed.rpttD:/__verilog/learning/takeout_study_2021_register/takeout_study_2021_register.runs/impl_1/async_fifo1_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file async_fifo1_methodology_drc_routed.rpt -pb async_fifo1_methodology_drc_routed.pb -rpx async_fifo1_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file async_fifo1_methodology_drc_routed.rpt -pb async_fifo1_methodology_drc_routed.pb -rpx async_fifo1_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
450*coretcl2?
?D:/__verilog/learning/takeout_study_2021_register/takeout_study_2021_register.runs/impl_1/async_fifo1_methodology_drc_routed.rpt?D:/__verilog/learning/takeout_study_2021_register/takeout_study_2021_register.runs/impl_1/async_fifo1_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_power -file async_fifo1_power_routed.rpt -pb async_fifo1_power_summary_routed.pb -rpx async_fifo1_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
yreport_power -file async_fifo1_power_routed.rpt -pb async_fifo1_power_summary_routed.pb -rpx async_fifo1_power_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
P
/No user defined clocks was found in the design!216*powerZ33-232h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
752default:default2
152default:default2
122default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
%s4*runtcl2w
cExecuting : report_route_status -file async_fifo1_route_status.rpt -pb async_fifo1_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -file async_fifo1_timing_summary_routed.rpt -pb async_fifo1_timing_summary_routed.pb -rpx async_fifo1_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 
?
iThere are no user specified timing constraints. Timing constraints are needed for proper timing analysis.200*timingZ38-313h px? 
?
%s4*runtcl2h
TExecuting : report_incremental_reuse -file async_fifo1_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 
?
%s4*runtcl2h
TExecuting : report_clock_utilization -file async_fifo1_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file async_fifo1_bus_skew_routed.rpt -pb async_fifo1_bus_skew_routed.pb -rpx async_fifo1_bus_skew_routed.rpx
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 


End Record