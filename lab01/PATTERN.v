`ifdef RTL
	`timescale 1ns/10ps
	`include "Booth.v"  
	`define CYCLE_TIME 30.0  
	`define DELAY 0
`endif
`ifdef GATE
	`timescale 1ns/1ps
	`include "Booth_SYN.v"
	`define CYCLE_TIME 20.0
	`define DELAY 0
`endif

module PATTERN(
in_1,
in_2,
in_3,
in_4,
in_5,
out
);


//---------------------------------------------------------------------
//   INPUT AND OUTPUT DECLARATION                         
//---------------------------------------------------------------------

output reg [5:0] in_1, in_2, in_3, in_4, in_5;
input signed [11:0] out; 
reg clk ; 


//---------------------------------------------------------------------
// PARAMETER DECLARATION
//---------------------------------------------------------------------
real	CYCLE = `CYCLE_TIME;
integer PATNUM= 2000;
integer seed = 11;
integer i,j,k,p,total_latency;
integer patcount;


//---------------------------------------------------------------------
//   WIRE AND REG DECLARATION                             
//---------------------------------------------------------------------

reg	[5:0] 	initial_sum;
reg [5:0] 	average_num;

reg	signed[5:0] 	temp[0:4];
reg	signed[5:0] 	temp1;
reg signed[11:0]	ans; 

//================================================================
// clock
//================================================================
always	#(CYCLE/2.0) clk = ~clk;
initial	clk = 0;

//---------------------------------------------------------------------
//   TEST PATTERN                                         
//---------------------------------------------------------------------

initial begin

	
	force clk = 0;
    total_latency = 0; 
	#(10);   release clk;
	@(negedge clk);
	

	for( patcount=0 ; patcount<PATNUM ; patcount=patcount+1) begin		
		input_task;
		check_ans; 
		task_pass_print;
		
	end
	@(negedge clk)
	@(negedge clk)
	
	YOU_PASS_task;    
end





task input_task; begin 
	`protected
?I7jGSQV5DT^<:2XB:TblQ^ZGWU=B;njm?=<J_PXH\HBE2l:ZKW5a[<J633GC\AF
H=`gpc=i;Fn\:PMa[7ZLnLgUBNKPQRnS<4Qk9=d?GZSJMNMYY\3MT0OqDC57@0B\
1Z1i<Y9Hc9X?[3c88RKBd5Bk5L5dj`^mZGFWejP;V9=E]`Vccmhq11U;DHpFi]3h
HD_ZaA30U78<\nCEkf2UfLoRMdK;YOk5KOYQ2A1iSXp?GPFSfDiRI^\5g6\WFa=7
T5a61ZZWK\Np^I6Dl7[AGDPOL=KnL;=c<_iJZSP_RJ@Qp>jkZa^;b6<coTXU;:me
JHNAIL]MSl5GY<F3q>@l\VJE7qN`@d@;_Eah6[<n;_Qh77<i9^\YiaWDVo@Q782Z
DM22[\3IqPH`<hFcfDMjo9hqa`j6:o\d:0=fbSM@4OL:=c64kAmgB69q[B4]EeYQ
qgICGYfnc?o[h_WPFFo63h8gmM`MMK=1YQW\2Bg`_MX<iUOgqI[REW<V7dAR0VJh
]Y=VITnA9ogW\mOASq6C\AP6dLo\f=hf4WlWI=_U0hf@<iB`X:VYlp7YajS8J6q<
PQi[n5UV6O18`kXAY`[m]f?9R9Z<Jgopkjd@Z<6D]e^k@Tg5OZPASAO]l16c\aD_
RHUPf0Zi75f6;np?`2DMgS[4m0XK5BeNkWLmBJ6Tm6oZc?p7COlPBX^qB4[NNbV3
Kj2\XW9og[;9L9f\Z3Qf4SPLoFU_<hc]IaA4D7[p9^IhSPN3lODajl^FNc69Q6<g
\KhFmETeq=J0AWRMZd<AigdX08ljfEXg\f6Y`B;fnC`\p7LZGP8BYqchFKRjC3_T
?9C\[eIG<GE:9iAEch53Eb:nh[Xln\E3V>XCqm4_CCI4c?@:3c:83Z7gRgJ0J[`]
2E_jpdnolQUXZ?:Xm7>F`13U<R>VHaK65;7^4Yd1gGLo2Pghin3eeqM\lPQZF1q:
97?VcHA?h[_c52NLI?7RN5;RQJL>1RH4575`]\]dbZQM3_q\8]0A6b70_ZY<C75b
mUJf[A6:VB7<n3]pW;R68OT:Q>Jg8h=c\4h3\4D[OOV78I54C?aq>ENk^aFkq;QJ
g2\\No<Gl;V19QW<\4PTNT=MjL3mfgWZTFmHIUShi1_p?oabQ<3Z=^;HMiR:mT0a
L<j930?iIj9^BEX4NRF[\<L`;8KG5RM2T6A2K32[ANg5p<lAIT;jg?N\a_ioLeCW
ji>_gEOG7<hFT87qlSNC8oXep<gfXPCIL_aS<fHhYbdgC<`WMGI4XK2nF0H_O@NW
;1fhMNW9pdEl=2_g3GA`GMTA0SA>j>V9=3gmd6n75q4TB=AA5ci=57165G1VCAW2
?HoPZ]^fa7a:BqQ;_^eKj3qD6nDHJZ\kPRKP0V02\=nHfKaRI8UJB2Oj4n<OWDXI
F4;k>pX=7kZm2NeEj`Ef^AVXmWiHoJ6cU6nDmpMTR7Hg]\pmnUV=107gP]UjfBnG
dabknhIo<AR0fPC8`nq6<@KeGq4Pj:Z>q@[99VJ\5dSohnf8lDI6b:;AYHd`f6UW
I=_X;mTBpfl3R<k4Jp4h1Je6efQ^aZJZ[fUZNo2A63A43XQ7kmY@pHaQ7Aa]X9BS
LNBJ21cXjgTF_aI=P8aqU7cd97fb7kD\?am>I<a\QA>`Bfg<HTYEWhFMY1eqk9TC
E8I]MJjchX]<W?O2`f0_en\mW?N54Rp94@f1fYlpQ4Y^^V1pPef=lR1nVQAZKQc?
YhadOcCWF_GfO:4kRmOG\oMqT_kJ]b:KpAGeH0=FR<mg1;?`>W^a97M_n?mGd:\n
i=7pQk`h;Xe:agEP;XbeWVb1GaRZNVm8Ob<M^8hS?33pHUGl>?5H0>]2?B0HOTf7
`;S^=[HP1SEi\Wp<`O<59b;4knBJ4D8hVX4A7HUeC@Y>Pg>DW12Ld42@6\lg>ApY
bY[^\YHqNKC`D_9qK1m:m3FkNnj[CkDWmHIdHB6WX=nHlVoOZ3b=jJhpTg3l:Jna
p:eKDLI]9B`1RV@<agIki41;W@X\^1DmmEcqJ5651`iD2;hCBn:miDNm\I8=1Kb`
f3a]H8@Cg@9qU2GD1JO\l?dTKU20VLoVYJ:l8[;H<MiaGPq5E?9nfL:qH<i9<e:V
ni_Rh:kgBJpXoW:>^HqG]P5==fV8@S7:YiYZ0Ejg<imLDfJCY0A3OYFElTpYTeJ]
7l<pg<8SCjBibYKHRK7`ZBhgd5gl]gDlXJP[61qToeamYC@g[h67?id`=Y`LVNg[
MWn;0XU19U5OERqb3KRV@nC;DYCPgUlYNAnc;]2>LL6FfmTB^q>=e4i>Dc3ke_5N
Cp3B:IS8J3N_qoVU^R]^pK\7n6WC0CDgXe5Y3QX=c3[19GAdCMoRWXEhj^_Sp@Wl
:`HekqHjFaTmhZ7nOB@nZAfh=`4Sf93@HUOdeT^9q_dGgXVYnD>2g=8X[68dMO5]
C5?3OCDaT=1ZTRa>:7HmNWNG2Te<0jc`AT^KcdPNVq4bM[Qf^:H_39d9HYcdiVMm
83Q8`3LK=XnMhB@BUqkjE1ojO^60Im6M?OYLU5g]6eaShX`74\P0p;UDcj;FWp<H
7QI\Gqfg0DL]:lI[]bobSB1kP^9kGImT3VmFPmEm;1@ghpGT;1_nEbpoTQ:3H4g@
7_W\<;OM@^Vp55IN`f4GLXcP@?09d:<I\c5AFjGO8od0=GplGkcWiG6<o0Do0aC\
M=]74AlafQaeR>QBoGJdckqI3GV724XF\4PWi8C4G5R39_lAN@FAmco8mqJKKDkZ
]NpnHb[Z=lpBEhhRo94McIHjGOJ_an8i3Mn^mbedPNj86C1[8fqB60MA>n8q4SVU
:Gj`Af5hje:2_nYa85^k4Y^<dXBbg=oLQIZ[HGp8eQn=njl_]YHAddQchl6LNTe@
FmB75d@4_poB;UD2ieT5bCDL5FaeX[O9d;R?OIQ@[AIIF??N@pobXGNSHTH=lNbA
cQ9R]E6[JJbJb=SEAaYCpGeXjAP4`qnS8cc6Ep7V`k1e_RjHlg]DHj4>M?872H0o
[@7>kfLDMa=^:qOL_h[M3N0NZ1`leSK;N^4j=@@0mLfN26SOQMi4DhbLHKQWKY_b
YGN1\jQ9Z9HQZ1IhpZoCofDbVqXJMPnB9eh;cKRWo=G]]OF6_<ZLFA@Lm:_CpG9k
HJ97L6M9i`La1jReW@>ZiZkQLOnRc6_?OE>Cp>cI8Sb0nmJHh==VRG8h\jk@:8Bm
7:2ZF:hq017=lk6;CVqTg7T2dkqE@X0=NMNC6O16mYEZRM?^]YgjU2YW3nCHcRff
7Gqi63djQUHpj^kK;L]2Wk9V_@_onN2;UiJO@Y75a=CbZ>FPpMT2Tk[NO=5hkclb
l4VGMPX@Ql5dD5``ZEapWFMSm_[dfA;BWmebLMI1cWi8EVF1fjkb:YI_`SYpaTAO
;EimTD0OH\g6GV9>G@Tdbk5ZVSjM>5qFDcnE\Ciq_WaePm@qI_UNlFfGc^X>46D<
aJNAfj2J;G;L3j2nBY7LbJ@pB8cmTUXmpdo<Yec`@n_b[BRj=9\gCOjGAR`Y2Na8
@kWaE1B<q7d5C@aHJ]MGnZLk4d665kXCQ[UmQA6YBe`qnf]@VgQ]Sb279<FcYLAh
PMRg[7Nd@fWYi\[Y5bhqDUdbZoF12NjQFWlIcgi87Jhn:Zg7@4[NYmpn4?;0:m1p
Z6^9l:ApVl\WMYfkQa;8@^blm09JOoVZe=WHNKcCPA;:0o0kck2j8^qTb;E2a9$
`endprotected
end endtask





task check_ans; begin
	
	

	
	@(negedge clk);	
	if ( out !== ans  ) begin
		fail; 
		$display ("--------------------------------------------------------------------------------------------------------------------------------------------");
		$display ("                                                  Your Answer: %d; Correct Ans: %d                                                 ",out, ans);
		$display ("--------------------------------------------------------------------------------------------------------------------------------------------");
		$finish;
	end
	
end endtask


task task_pass_print; begin
	$display ("-----------------------------------------------------------------------------------------------------------------------------------------------------------");
	$display ("                       PATTERN NO.%4d PASS   Your Answer: %d; 		Correct Ans: %d                              ",patcount, out,ans);
	$display ("-----------------------------------------------------------------------------------------------------------------------------------------------------------");
end endtask


task YOU_PASS_task;begin
$display("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@8OOOOOOO8@@@@@@@@@@@@@@@@@@@@");
$display("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@O               .o8@@@@@@@@@@@@@@");
$display("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@8:.                   .o@@@@@@@@@@@@");
$display("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@o                         :O@@@@@@@@@");
$display("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                           .o8@@@@@@@");
$display("@@@@@@@@@@@@@@@@@@888888@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@88888888OOO88@@@@@@@@@@                             :@@@@@@@");
$display("@@@@@@@@@@@@8o:.          .o8@@@@@@@@@@@@@@@@@@@88Oo:.                      .:ooo                              o@@@@@@");
$display("@@@@@@@@@@8                  .8@@@@@@@@@@@@8O:.           ..::::::ooo:.                                        .8@@@@@");
$display("@@@@@@@O.                      8@@@@@8O:.        .:O88@@@@@@@@@@@@@@@@@@@@@@@88Oo.                             :8@@@@@");
$display("@@@@@@o                        :8@@8.      .:o8@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@OO:                         o@@@@@@");
$display("@@@@@8                          :o.     .O8@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@88@@8o.                      8@@@@@@");
$display("@@@@:                               o8@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@8:          :OO.                  o@@@@@8@");
$display("@@@o.                             :O@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.              OO:              :8@@@@@@@@");
$display("@@8.                           O8@@@@@@@@@@O:.    .oO@@@@@@@@@@@@@@@@@@@@@@@.                o88          O@@@@@@@@@@@");
$display("@@O.                         :O@@@@@@@@@@:           o@@@@@@@@@@@@@@@@@@@@@@.                 .88o.     oO@@@@@@@@@@@@");
$display("@@O.                       :8@@@@@@@@@@8:            .O@@@@@@@@@@@@@@@@@@@@@o                  .@@8O:   o8@@@@@8@@@@@@");
$display("@@@:                      8@@@@@@@@@@O.               :8@@@@@@@@@@@@@@@@@@@@8o                  O@@@@.    8@@@@@@@@@8@");
$display("@@@@o                    :@@@@@@@@@@o                 :8@@@@@@@@@@@@@@@@@@@@@@o                 O@@@@O:   .O@@@@@@@@@@");
$display("@@@@@@.                .O@@@@@@@@@@8                  O@@@@@@@@@@@@@@@@@@@@@@@@@O             .O@@@@@@@@o   :@@@@@@@@@");
$display("@@@@@@@O:.           .O@@@@@@@@@@@@o                 .8@@@@@@@@@@@@888O8@@@@@@@@@o.         .o8@@@@@@@@@@o   o8@@@@@@@");
$display("@@@@@@@@@@8.         o@@@@@@@@@@@@@:                 o@@@@@@@O:.         :O@@@@@@@@Oo.   .:8@@@@@@@@@@@@@8     @@@@@@@");
$display("@@@@@@@@@@@@@@@@:    8@@@@@@@@@@@@@8               :8@@@@8:              .O@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     @@@@@@");
$display("@@@@@@@@@@@@@@@@    :@@@@@@@@@@@@@@@O.             8@@@@@8:              o@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@8@@@    @@@@@@");
$display("@@@@@@@@@@@@@@@O   :@@@@@@@@@@@@@@@@@@@8O:....:O8@@@@@@@@@@@o          O@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@8@@@@    @@@@@");
$display("@@@@@@@@@@@@@@8:  :O@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Oo.    .o8@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    @@@@");
$display("@@@@@@@@@@@@@8:   o@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@8  :@@@@@@@@@@@@@@@@@@@@@@@8Ooo\033[0;40;31m:::::\033[0;40;37moOO8@@8OOo   o@@@");
$display("@@@@@@@@@@@@@O   O@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@8. .8@@8o:O@@@@@@@@@@@@@8O\033[0;40;31m:::::::::::::::\033[0;40;37mO@@@O   :@@@");
$display("@@@@@@@@@@@@@O   O@@@@@@@@@@@@@@@@@@88888@@@@@@@@@@@@@@@@@@O:oO8@8.  .:    o@@@@@@@@@@@@O\033[0;40;31m::::::::::::::::::\033[0;40;37mo8@O   :8@@");
$display("@@@@@@@@@@@@@O   O@@@@@@@@@@@@@\033[1;40;31mO\033[0;40;31m:::::::::::::\033[0;40;37mo8@@@@@@@@@@@@8.              :@@@@@@@@@@8o\033[0;40;31m::::::::::::::::::::\033[0;40;37mo8@:   .@@");
$display("@@@@@@@@@@@@O.  .8@@@@@@@@@@8Oo\033[0;40;31m.:::::::::::::::\033[0;40;37moO@@@@@@@@@@8:              .@@@@@@@@@@O\033[0;40;31m::::::::::::::::::::::\033[0;40;37mo8O    @@");
$display("@@@@@@@@@@@@o   O@@@@@@@@@@8o\033[0;40;31m::::::::::::::::::::\033[0;40;37mo8@@@@@@@@@O              .@@@@@@@@@@O\033[0;40;31m::::::::::::::::::::::\033[0;40;37mo8O    @@");
$display("@@@@@@@@@@@@O.  :8@@@@@@@@o\033[0;40;31m::::::::::::::::::::::::\033[0;40;37m8@@@@@@@@@              :@@@@@@@@@@8o\033[0;40;31m:::::::::::::::::::::\033[0;40;37mO@o    @@");
$display("@@@@@@@@@@@@8:  :8@@@@@@@8\033[0;40;31m:::::::::::::::::::::::::\033[0;40;37m8@@@@@@@@@              O@@@@@@@@@@@O\033[0;40;31m::::::::::::::::::::\033[0;40;37mo8@:   :@@");
$display("@@@@@@@@@@@@@O   O@@@@@@8O\033[0;40;31m:::::::::::::::::::::::::\033[0;40;37mo8@@@@@@@@O           .8@@@@@@@@@@@@@8o\033[0;40;31m::::::::::::::::\033[0;40;37mo8@@@   .O@@");
$display("@@@@@@@@@@@@@O   O8@@@@@8O\033[0;40;31m:::::::::::::::::::::::::\033[0;40;37mo8@@@@@@@@@8:       .O@@@@@@@@@@@@@@@@@O\033[0;40;31m::::::::::::::\033[0;40;37mo@@@@8   .8@@");
$display("@@@@@@@@@@@@@O   O@@@@@@@O\033[0;40;31m::::::::::::::::::::::::.\033[0;40;37mO8@@@@8OOooo:.     :@@@@@@@@@@@@@@@@@@@@8OOo\033[0;40;31m::::::\033[0;40;37mooO8@@@@@o   :@@@");
$display("@@@@@@@@@@@@@8.  o8@@@@@@@\033[0;40;31m:::::::::::::::::::::::::\033[0;40;37m8@8O.                  .:O8@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@8o   o@@@@");
$display("@@@@@@@@@@@@@8:  .O@@@@@@@O\033[0;40;31m:::::::::::::::::::::::\033[0;40;37mo@O.    .:oOOOo::.           .:OO8@@@@@@@@@@@@@@@@@@@@@@@@O.  :8@@@@");
$display("@@@@@@@@@@@@@@8.  :8@@@@@@@8o\033[0;40;31m:::::::::::::::::::\033[0;40;37mO8@O    8@@@@@@@@@@@@@@@@@8O..         :oO8@@@@@@@@@@@@@@@8o.  .8@@@@@");
$display("@@@@@@@@@@@@@@@O   :8@@@@@@@@8O\033[0;40;31m:::::::::::::::\033[0;40;37mO8@@@:   .@@@@@@@@@@@@@@@@@@@@@@88Oo:.       .:O8@@@@@@@@@@@.    O@@@@@@");
$display("@@@@@@@@@@@@@@@8    O@@@@@@@@@@8Oo\033[0;40;31m::::::::\033[0;40;37mooO8@@@@@O.   O@@@@@@@@@@@@@@@@@@@@@@@@@@@@8:.      .o@@@@@@@@@o    O@@@@@@@");
$display("@@@@@@@@@@@@@@@@o    8@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@8:    :O8@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@o.    :O@@@8o.  .o@@@@@@@@@");
$display("@@@@@@@@@@@@@@@@@:    :8@@@@@@@@@@@@@@@@@@@@@@@@@@@@@8:      ...:oO8@@@@@@@@@@@@@@@@@@@@@@@@@O:   .O8.    .O@@@@@@@@@@");
$display("@@@@@@@@@@@@@@@@@@@O:    :@@@@@@@@@@@@@@@@@@@@@@@@@@@O.   \033[0;40;33m...\033[0;40;37m          O@@@@@@@@@@@@@@@@@@@@@@@O       .O8@@@@@@@@@@@@");
$display("@@@@@@@@@@@@@@@@@@@@@:    :O@@@@@@@@@@@@@@@@@@@@@@@@@O   \033[0;40;33m:O888Ooo:..\033[0;40;37m    :8@@@@@@@@@@@@@@@@@@@@O:     :O@@@@@@@@@@@@@@@");
$display("@@@@@@@@@@@@@@@@@@@@@8o     .O8@@@@@@@@@@@@@@@@@@@@@O:  \033[0;40;33m.o8888888888O.\033[0;40;37m  .O@@@@@@@@@@@OO888@8O:.    :O@@@@@@@@@@@@@@@@@");
$display("@@@@@@@@@@@@@@@@@@@@@@O        o8@@@@@@@@@@@@@@@@@@@o   \033[0;40;33m:88888888888o\033[0;40;37m   o8@@@@@@@:              o8@@@@@@@@@@@@@@@@@@@@");
$display("@@@@@@@@@@@@@@@@@@@@@@@:          .:88@@@@@@@@@@@@@8:   \033[0;40;33mo8888O88888O.\033[0;40;37m  .8@@@@@@@O    \033[1;40;33m..\033[0;40;37m     .::O@@@@@@@@@@@@@@@@@@@@@@");
$display("@@@@@@@@@@@@@@@@@@@@@@@O.                  .:o          \033[0;40;33m8888\033[0;40;37m@@@@\033[0;40;33m888o.\033[0;40;37m  o8@@@@@8o   \033[0;40;33mo88o.\033[0;40;37m   @@@@@@@@@@@@@@@@@@@@@@@@@@@");
$display("@@@@@@@@@@@@@@@@@@@@@@@@o        .OOo:.                 \033[0;40;33mO88\033[0;40;37m@@@@@\033[0;40;33m888o.\033[0;40;37m  :8@@@@@o   \033[0;40;33m:O88.\033[0;40;37m   .@@@@@@@@@@@@@@@@@@@@@@@@@@@");
$display("@@@@@@@@@@@@@@@@@@@@@@@@8o         :@@@@@O:             \033[0;40;33m.O8\033[0;40;37m@@@@\033[0;40;33m8888O:\033[0;40;37m   .O88O:   \033[0;40;33m.O88O\033[0;40;37m    O@@@@@@@@@@@@@@@@@@@@@@@@@@@");
$display("@@@@@@@@@@@@@@@@@@@@@@@@@@:                             \033[0;40;33m.o8\033[0;40;37m@@@@\033[0;40;33m\033[0;40;33m888888O:\033[0;40;37m         \033[0;40;33m.888O:\033[0;40;37m   o8@@@@@@@@@@@@@@@@@@@@@@@@@@@");
$display("@@@@@@@@@@@@@@@@@@@@@@@@@@8o                            \033[0;40;33m.O\033[0;40;37m@@@@\033[0;40;33m\888888888Oo:...ooO8888:   \033[0;40;37m:8@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
$display("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@8o                         \033[0;40;33mo8\033[0;40;37m@@@@\033[0;40;33m888888888888888888888O.\033[0;40;37m  :8@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
$display("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@o.                      \033[0;40;33m.8\033[0;40;37m@@@@\033[0;40;33m888888888888888888888O:\033[0;40;37m   o@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
$display("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@O:.                 \033[0;40;33m.o8\033[0;40;37m@@@@@\033[0;40;33m88888888888888888888Oo\033[0;40;37m   :8@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
$display("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@8OOo::::::.   \033[0;40;33mo888\033[0;40;37m@@@@@\033[0;40;33m88888888888888888888o.\033[0;40;37m   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
$display("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@8:   \033[0;40;33mo888\033[0;40;37m@@@@@\033[0;40;33m88888888888888888888.\033[0;40;37m   .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
$display("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@8:   \033[0;40;33mo888\033[0;40;37m@@@@@\033[0;40;33m88888888888888888888O\033[0;40;37m   .O@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
$display("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@O.   \033[0;40;33mO8888\033[0;40;37m@@@\033[0;40;33m88888888888888888888O.\033[0;40;37m   O@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
$display("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@o    \033[0;40;33m8888888888888888888888888888o\033[0;40;37m   o8@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
$display("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.    \033[0;40;33m. ..:oOO8888888888888888888o.\033[0;40;37m  .8@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
$display("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@O.           \033[0;40;33m..:oO8888888888888O.\033[0;40;37m  .O@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
$display("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@8OO.             \033[0;40;33m.oOO88O.\033[0;40;37m   O@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
$display("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@88:..          \033[0;40;33m...\033[0;40;37m    8@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
$display("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@88Ooo:.          @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
$display("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@8OoOO@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
$display("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
$display ("----------------------------------------------------------------------------------------------------------------------");
$display ("                                                  Congratulations!                						            ");
$display ("                                           You have passed all %d patterns!          						    ",patcount);
$display ("                                           Your execution cycles = %5d cycles   						            ", total_latency);
$display ("                                           Your clock period = %.1f ns        					                ", CYCLE);
$display ("                                           Your total latency = %.1f ns         						            ", total_latency*CYCLE);
$display ("----------------------------------------------------------------------------------------------------------------------");
$finish;	
end endtask

task fail ;
begin

$display("\033[90m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@88OCCoccccc ccooOO8@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
$display("\033[90m@@@@@@@Oc@@c\033[32m@@@@@@\033[0;90mo@O\033[32m@@@@@@@\033[0;90m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Oc                  c              \033[90mcO@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
$display("\033[90m@@@@@@@\033[32m@@\033[0;90m@@@8@@@\033[32m@@@\033[0;90m@@8O8@c\033[32m@@\033[0;90m@@@@@@@@@@@@@@@@@@@@                             \033[93mcooO888OCCCCCCCCCCCOOOOOCCCCCCc         \033[90mcoOO@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
$display("\033[90m@@@@@8\033[32m@@\033[0;90mo@@o\033[32m@\033[0;90mc@@C\033[32m@@\033[0;90m@@@@OC\033[32m@@@\033[0;90m@@@@@@@@@@@@@@@@@@@c  \033[31mcOOOOOOOOOO88o      \033[93mcoCCCCCCCOOOOOOOOCCCCCCCOOOOOOOOOCCCCCCCCOOOo                        \033[90mc@@@@@@@@@@");
$display("\033[90m@@@@8\033[32m@@\033[0;90mo@@@C\033[32m@@@@@@@\033[0;90m@@c\033[32m@@@@@\033[0;90mo@@@@@@@@@@@@@@@@@@o  \033[31mO  8OOOOO8o     \033[93moO8OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO8Oo     \033[31mo888OOCCCocc    \033[90mO@@@@@@@@");
$display("\033[90m@@@c\033[32m@@@\033[0;90mo@@@O\033[32m@@\033[0;90m@@8OO@@@@@@@@@@@@@@@@@@@@@@@@@@O  \033[31mCCOc C8Oc     \033[93moOO88OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO888CCccc   \033[93mcc     \033[31mO8OOOO8  TTC  \033[90m@@@@@@@@");
$display("\033[90m@\033[32m@@@o\033[0;90mo\033[32m@@\033[0;90m@@@8\033[32m@@@@@@@@\033[0;90m@O\033[32m@@@@@@@\033[0;90m@@@@@@@@@@@@@@@@  \033[31mcOCCOc                \033[93mcCO8OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO8OOo               \033[93mcO8O    \033[31mcO8o cOCO  \033[90mo@@@@@@@");
$display("\033[90m@@@@@C\033[32m@@\033[0;90m@@@@\033[32m@@\033[0;90mC@8OoO@@o@@O\033[32m@@\033[0;90mC@@@@@@@@@@@@@@@   \033[31m8OCO    \033[93mo8OO8OOOOOCCoocc   COOOOOOOOOOOOOOOOOOOOOOOOOOOc      \033[93mccccooCCCCOCCOOOOOO8O     \033[31mCCCCOo  \033[90m8@@@@@@");
$display("\033[90m@@@@@C\033[32m@@\033[0;90m@@@@\033[32m@@@@@@@\033[0;90mo@@c\033[32m@@@@\033[0;90mo@@@@@@@@@@@@@@@O  \033[31mCOOO   \033[93m8OOOO8OOOOOOO8888OOOOOOOOOOOOOOOOOO\033[0m@@\033[93mOOOOOOOOOOOOOOOOOOO8O8O88O8OOOOOOOOOOOOOO8o   \033[31mcOCCOc \033[90mc@@@@@@");
$display("\033[90m@@@@@O\033[32m@@\033[0;90mO@@@\033[32m@@@\033[0;90m@@@@@@@C\033[32m@@@@@@@@\033[0;90m@@@@@@@@@@@@  \033[31mc8O  \033[93mc8OO8C\033[0m           cCc \033[93mc8OOOOOOOOOOOOO\033[0m@@@@@@\033[93mOOOOOOOOOOOO8C\033[0m               o\033[93m88OOOOOOOOO8C   \033[31mo8OC  \033[90m8@@@@@");
$display("\033[90m@@@@@@\033[32m@@\033[0;90m8@@@c\033[32m@@\033[0;90m@@@@@@@\033[32m@@\033[0;90mC@@@@@@@@@@@@@@@@@o  \033[31m8c   \033[93mO8C\033[0m O@@O          @@@@o \033[93m8OOOO888O8\033[0m@@@@@@@@@@\033[93m8OOOOOOO8\033[0m o@@@          O@@@8C\033[93m C8OOOOOOOOOC   \033[31mO8  \033[90mc@@@@@");
$display("\033[990m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  \033[31mc   \033[93mOO8o\033[0mc@@@@o          8@@@@ \033[93mOO8 \033[94m oCc\033[0m O@@@@@@@@@@@\033[94mo  \033[93mcOO8\033[0m c@@@O          O@@@@@@C\033[93mc8OOOOOOOOO8c  \033[31mcO  \033[90m@@@@@");
$display("\033[90m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@c    \033[93mc8OOO 8\033[0mo@@@8          @8C  \033[93m8OO \033[94m@@@@@@c\033[0mo8oc  cC8 \033[94mo@@@@\033[0;93mCCO8\033[0m  O@@          O@@@@@@ \033[93mC8OOOOOOOOOOOO     \033[90mc@@@@");
$display("\033[90m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@8    \033[93mCOOOOOOOO8c\033[0m         cco\033[93mO88OO8@o\033[94mo@@@@@@C\033[36m @@@@@@@o\033[0;94mo@@@@@@\033[0m @\033[93m8OO8Occ\033[0m         Coc   \033[93mOOOOOOOOOOOOOOOO8     \033[90m8@@@");
$display("\033[90m@@@@@@@@@@@O8@@@@@@@\033[32mo@C\033[0;90m@@@@@@@@@@@@@@@@@C   \033[93mOOOOOOOOOOOOOOOOOOOOOOOOOO\033[0m8@@@@@ \033[94mO8OOC8\033[0m OC    c8@ \033[94m8@@@@@\033[0m @@@@@\033[93m8OO8OOOO888888O8OOOOOOOOOOOOOOOOOOO8c   \033[90mC@@@");
$display("\033[90m@@@@@@@@@@\033[32m@@@\033[0;90m@@@@@@@\033[32mc@c\033[0;90m@@@@@@@@@@@@@@@@@   \033[93mOOOOOOOOOOOOOOOOOOOOOOOO\033[0m8@@@@@@C   C8@@@O         coo    @@@@@@@@@\033[93m8OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO8c  \033[90mc@@@");
$display("\033[90m@@@@@@@@@\033[32m@@@\033[0;90m@@@@@@@@\033[32m@@@@@@@@@@\033[0;90mO@@@@@@@@o  \033[93mO8OOOOOOOOOOOOOOOOOOOO\033[0m8@@@@@@@O o@@@@@@@@@@       8@@@@@@@  @@@@@@@@@@\033[93m8OOOOOOOOOOOOOOOOOOOOOOOOOOOOOO8c  \033[90m@@@");
$display("\033[90m@@@@@@@C\033[32m@@\033[0;90mo@@@@@@@@@\033[32m@@\033[0;90mC@@@@@\033[32m@@@\033[0;90m@@@@@@@o  \033[93mOOOOOOOOOOOOOOOOOOO\033[0m8@@@@@@@@@@ o@@@@@@@@@@@@ o@@@@@@@@@@@@@@@c @@@8c@@@@@@@\033[93m8OOOOOOOOOOOOOOOOOOOOOOOOOOO8c  \033[90m8@");
$display("\033[90m@@@@@@C\033[32m@@@@@@@@@\033[0;90mC@@O\033[32m@@\033[0;90mO@@@@@@\033[32m@@\033[0;90m@@@@@@@  \033[93mo8OOOOOOOOOOOOOOOO\033[0m8@@@@@@@@@@@@ O@@@@@@@@@@@C @@@@@@@@@@@@@@@@@ o@@@@ c@@@@@@@\033[93mOOOOOOOOOOOOOOOOOOOOOOOOOOOO  \033[90mc@");
$display("\033[90m@@@@@@@o\033[32m@@\033[0;90m@@@@\033[32m@@\033[0;90mc@@o\033[32m@@\033[0;90m@8@@@@c\033[32m@@\033[0;90m@@@@@@o  \033[31mCCCC\033[93mOOOOOOOOOOOOO\033[0m@@@@@@@@@@@@@@ O@@@@@@@@@@@C @@@@@@@@@@@@@@@@@c @@@@@@ C@@@@@@\033[93m8OOOOOOOOOOOOOOOOOOOOOOO\033[31mCCCc  \033[90m@");
$display("\033[90m@@@@@@@C\033[32m@@\033[0;90moc\033[32m@@@@\033[0;90m@@@@@@o\033[32m@@\033[0;90mo@@o\033[32m@@\033[0;90mO@@@@@  \033[31mcCCCCCCCC\033[93mOOOOOOOO\033[0m@@@@@@@@@@@@@@@  8@@@@@@@@@@@ C@@@@@@@@@@@@@@@@ o@@@@@@@C @@@@@@@\033[93mOOOOOOOOOOOOOOOOOO\033[31mCCCCCCCC  \033[90mo");
$display("\033[90m@@@@@@@O\033[32m@@\033[0;90mccoC\033[32m@@\033[0;90m@@@@@@@@\033[32m@@\033[0;90m@@C\033[32m@@\033[0;90mC@@@@8  \033[31moCCCCCCCCCC\033[93mOOOOO\033[0m@@@@@@@@@@@@@@@@@o C@8@@@@@@@@C O@@@@@@@@@@@@@@  8@@@@@@@@@ O@@@@@@\033[93mOOOOOOOOOO\033[31mCCCCCCCCCCCCCCCc  ");
$display("\033[90m@@@@@@@O\033[32m@@\033[0;90mO@@@\033[32m@@\033[0;90m@@@@@@@@@@@@O\033[32m@@\033[0;90mC@@@@C  \033[31moCCCCCCCCCC\033[93mOOOO\033[0m@@@@@@@@@@@@@@@@@@@@o  oO8@@@8OC\033[95m   \033[0mC@88888888@o  @@@@@@@@@@@@ O@@@@@\033[93m8OOOOOO\033[31mCCCCCCCCCCCCCCCCCCc  ");
$display("\033[90m@@@@@@@8\033[32m@@@@@@@@@\033[0;90m@@@@@@@8\033[32m@@@@@@\033[0;90mO@@@@o  \033[31mCoCCCCCCCC\033[93mOOOO\033[0m8@@@@@@@@@@@@@@@@@@@@@@@@Oocc\033[95m coCOOOo  \033[0m  TTC    8@@@@@@@@@@@@@@@ O@@@@@\033[93m8OOO\033[31mCCCCCCCCCCCCCCCCCCCCo  ");
$display("\033[90m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@o  \033[31moCCCCCCC\033[93mOOOOOO\033[0m8@@@@@@@@@@@@@@@@@@@@@@@@@@@@8\033[95m O8OOO8O  \033[0m@@@@@@@@@@@@@@@@@@@@@@@@ O@@@@\033[93m8OOOO\033[31mCCCCCCCCCCCCCCCCCCCo  ");
$display("\033[90m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@C  \033[31mCCC\033[93mOOOOOOOOOOO\033[0m8@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@O\033[95m     \033[0mo@@@@@@@@@@@@@@@@@@@@@@@@@@O @@@@\033[93m8OOOO\033[31mCCCCCCCCCCCCCCCCCCoC  ");
$display("\033[90m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@O  \033[31mCCC\033[93mOOOOOOOOOOO\033[0m8@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ C@@@\033[93m8OOOOOOO\033[31mCCCCCCCCCCCCCCoCc  ");
$display("\033[90m@@@@@@@@@@@@@@@@@@@@@@@\033[91m@@OO\033[90m@@@@@@@@@@  \033[31mcOOC\033[93mOOOOOOOOOO\033[0m8@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@O@@@\033[93m8OOOOOOOOOOOOOOOOOOOO\033[31mCOOc  ");
$display("\033[90m@@@@@@@@@@@@@\033[91m@OO8@\033[90m@@@\033[91mOccooooo\033[90mC@@@@@@@C  \033[31mooCCCCCCCC\033[93mOOOO\033[0m@@@@@@@@@@@@@@@@@@@@@O o@@@@@@@@@@@@@@@@@@@@o @@@@@@@@@@@@@@@@@@@@@@\033[93m8OOOOOOOOOOOOOOOOOOOO\033[31mCCOO  \033[90mO");
$display("\033[90m@@@@@@@@@@@\033[91mCcooooocOoooooOOCoo\033[90mC@@@@@@@  \033[31mcCoCCCCCCCO8C\033[93mc\033[0m       o@@@@@@@@@@@@@@8@o  O@@@@@@@@@@Oo  cO@@@@@@@@@@@@@@@@@@@@@@@@\033[93mOOOOOOOOOOOOOOOOOOOO\033[31mCCCCc  \033[90m@");
$display("\033[90m@@@@@@@@@@\033[91mCooooooooooooooCOOoc\033[90mC@@@@@@@O  \033[31mcCCoCCCCC\033[93m   \033[0mc8@@@@@o\033[0m       c8@@@@@@@@@88@@oc    cCO@@88@@@@@@@@@@@@@@@@@@@@@@@@@\033[93mOOOOO\033[31mCCCCCCCCCCCCCCCCCoCo  \033[90mC@");
$display("\033[90m@@@@@@@@@@\033[91mOcoooooooooooooCOCoc\033[90m8@@@@@@@@C  \033[31mcCCoCOC \033[0mo@@@\033[95mOOOOO8\033[0m@@O  @@@o\033[0m   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\033[93mOOOOO\033[31mCCCCCCCCCCCCCCCCCCoO   \033[90m@@");
$display("\033[90m@@@@@@@@@@@\033[91mCoooooooooooooOooc\033[90mO@@@@@@@@@@o  \033[31mco\033[0m      \033[0m@@@\033[95m8OOOO8\033[0m@@@@@\033[95m8OOO\033[0m8O\033[0m  O@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\033[93m8OOOOOO\033[31mCCCCCCCCCCCCCCCCCoC   \033[90m@@@");
$display("\033[90m@@@@@@@@@@@@\033[91mOcoooooooooooooc\033[90m@@@@@@@@@@@@@O    \033[0mC@@@8@@@@@@@@@@@@@@\033[95mOOOOO\033[0m@@\033[0m  O@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\033[93m8OOOOOOOOO\033[31mCCCCCCCCCCCCoCCoC   \033[90m8@@@");
$display("\033[90m@@@@@@@@@@@@@@\033[91mCcoooooooooo\033[90m@@@@@@@@@@@@@8    \033[0mo@\033[95mOOOO\033[0m@@@@@@@@@@@@@@@@\033[95m@8@\033[0m@@@C\033[0m  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\033[93mOOOOOOOOOOOOO\033[31mCCCCCCCCCCoCooC   \033[90m@@@@@");
$display("\033[90m@@@@@@@@@@@@@@@@@\033[91mOocccc8\033[90m@@@@@@@@@@@@@O  \033[93mCc  \033[0m@@\033[95mOOOO\033[0m@@@@\033[95mOOOOOOOOOO8\033[0m@@@@@@@8\033[0m  8@@@@@@@@@@@@@@@@O     \033[36mcc    \033[93mc8@@@@8OOOOOOOOOOOOOOOOOOOOO\033[31mCoCCoCoCc  \033[90mc@@@@@@");
$display("\033[90m@@@@@@@@@@@@@@@@@@@@@\033[91m@@\033[90m@@@@@@@@@@@@@  \033[93mC8O  \033[0mc@@@@@@@\033[95m8OOOOOOOOOOOOOO8\033[0m@@@@@8\033[0m  8@@@@@@@@@@@@@@   \033[36m8@@@@@@@@@@O  \033[93mcOOOOOOOOOOOOOOOOOOOOOO\033[31mCCCCOCOOC   \033[90m8@@@@@@@");
$display("\033[90m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  \033[93m8OOO  \033[0mc@@@@@@\033[95m8OOOOOOOOOOOOOOOO\033[0m@@@@@o\033[0m  @@@@@@@@@@@@@O  \033[94m@8O@O88@O@O\033[36m@@@@@  \033[93mc8OOOOOOOOOOOOOOOO\033[31mCCCOCCOOOc   \033[90mC@@@@@@@@@");
$display("\033[90m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  \033[93mOOOO8c  \033[0m88@@@@@\033[95mOOOOOOOOOOOOOOO\033[0m@@@@@O\033[0m  O@@@@@@@@@@@@@  \033[94m@O@888@8O@8O@88\033[36m@@@C \033[93mc8OOOOOOOOOOOO\033[31mCCCCCCCOOo    \033[90m@@@@@@@@@@@@");
$display("\033[90m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@O \033[93mc8OOOO8   \033[0m8@@@@@@\033[95m8OOOOOOOOOOO\033[0m@@@@@@O\033[0m   @@@@@@@@@@@@@o \033[94mO8@@8@@@8@OO@@O@8\033[36m@@@c \033[93moOOOOOOOO\033[31mCCCOCCOOOC     \033[90mO@@@@@@@@@@@@@@");
$display("\033[90m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@C \033[93moOOOOOO8c  \033[0mO@8@@@@@@@@@@@@@@@@@@8@\033[0m     OO@@@@@@@@@@@  \033[94mO8@O88@O88@8@O@@O8\033[36m@@@ \033[93mc8\033[31mCCCCCCCOCOOCc      \033[93mc   \033[90m@@@@@@@@@@@@@@");
$display("\033[90m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  \033[93mCocCCOO oo   \033[0mC888@@@@@@@@@8@c \033[0m   cOo  o88@@@@@@@@@@8 \033[94mcO88O@@@@8O@8@OOOO\033[36m@@@ \033[31m c           \033[31mcccccccccoo   \033[90m@@@@@@@@@@@@");
$display("\033[90m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  \033[93mc CCOo ooCOCc88888888888888888o cOc  \033[0mcOO@@@@@@@@@@@o \033[94mCOCCOCC8OOC\033[0m      \033[47mc\033[0m   \033[91mccCc \033[31mccccccccccccoooooooo   \033[90mO@@@@@@@@@@");
$display("\033[90m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@O  \033[93moCOo cCoCCOCCCOOOOOOOOOCCCCO  oO  \033[0m   O@88@@@@@@@@@  \033[94moOOOCCOo \033[0;47mC8@@@@@@@@\033[0m \033[91mCOo \033[31mccoocooooooooooooooooo   \033[90m@@@@@@@@@@");
$display("\033[90m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@C \033[93mocCC coCCoCCCCOCCCCCCOCOCCOo  OC c o8c\033[0m  O@88@@@@@@@O  \033[94mCOOo \033[0;47mo8@@@TTC\033[0m      \033[91m O \033[31mcooooooooocooooooooooooo   \033[90m8@@@@@@@@");
$display("\033[90m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@O \033[93mc o8  CoCoCoCCCOCOOCOCCCCCo  oCo o o8O8Oc\033[0m  8@8@@@8@O \033[93m c  \033[0;47mCOOOc\033[0m   \033[100;90mccccCCo\033[0m \033[91mc \033[31moooooooooo \033[31mccooc \033[31mcooooooc   \033[90m@@@@@@@@");
$display("\033[90m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@8 \033[93mccc8c oOooCCCCCooCCoCooCCC  cCCc o COOOOO8C\033[0m  o@@8  \033[93mc8OOOO\033[0m  \033[47mO\033[0m  \033[100;90mccccccccoCc\033[0m \033[31mcooooooooooc \033[31mccc  \033[31mcooooococ  \033[90mc@@@@@@@");
$display("\033[90m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  \033[93mo 8C   cOCoCCCoCCCoCCCCo   OCC  C OOOOOOOOO8c   O8OOOOOO8C\033[0m  \033[100;90mc\033[0m \033[100;90mc\033[0m \033[100;90mcccc ooC\033[0m  \033[31moooooooooooc \033[31mc  \033[31mccooooooooc  \033[90mO@@@@@@");
$display("\033[90m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  \033[93mC O8c     OOOOCCCCCCCc   CCCCc TTC OCOOOOOOC  o8OOOOOOOOCCCo\033[0m \033[100;90mc\033[0m \033[100;90mccccccc oCo\033[0m    \033[31mooooooooo    \033[31mcoooooooooc   \033[90m@@@@@@");
$display("\033[90m@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@c \033[93mC c8Oc Co              CCCCCC c8  cCCCOOo  OOOOOOOOOCCCC  o8\033[0m  \033[100;90mc\033[0m     \033[100;90mcccooo\033[0m    \033[31mooooooooc  \033[31mccooooooooooc  \033[90mO@@@@@");
$write("\033[0m ");


end	
endtask


endmodule

