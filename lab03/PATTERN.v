//############################################################################
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//   (C) Copyright Laboratory System Integration and Silicon Implementation
//   All Right Reserved
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//
//   2018 ICLAB Spring Course
//   Lab03	    : Tower of IC designers
//   Author         : Ning-Kai Yang 
//
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//
//   File Name   : PATTERN.v
//   Module Name : PATTERN
//   Release version : v1.0
//
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//############################################################################

`ifdef RTL
	`timescale 1ns/10ps
	`include "TIC.v"  
	`define CYCLE_TIME 3.0  
`endif
`ifdef GATE
	`timescale 1ns/1ps
	`include "TIC_SYN.v"
	`define CYCLE_TIME 3.0
`endif

module PATTERN(
  // Output signals
  clk,
  rst_n,
  in_valid_1,
  in_valid_2,
  in_stone,
  in_action,
  in_starting_pos,
  // Input signals
  out_valid,
  out_combo
);

output reg clk, rst_n, in_valid_1, in_valid_2;
output reg [2:0] in_stone, in_action;
output reg [5:0] in_starting_pos;

input 	out_valid;
input 	[3:0] out_combo;	
`protected
jH>9?SQd5DT^<ZC1;37W02S<5@Bi80g`1A]JeUoRTQGNFCk6Pc6d0821:gNjC\AF
Hf^IpeN36i^2kILPW8;7LF\:Uim=l3o4_4nS=37>LY3Qm[[O<M8]We;bJk39jH^H
d[B00poLl=D8T0fofEEae7j8:LeT;cOJSkD6\BoIhNBdOJ_TEmL>ETAmqGYOiU7p
bB`:IW2:c4eaaLfI>P4kcFVCiMOaijn9:5S8qMmdlkkoMC3XHJA01diHRLBl<1<?
9pS=7Zo^>Z=1OCMdO]`T5S\Y9T;FJp7cD_9nS6\\ShelRhI@KFG]E[UTCG0E6J<4
7g>=G39lb;21=>fQHVqkoUMR1NVb3oh\DAWkERMA_qT`YX6Po`o_\OCc=lHjLVR`
SHqQ]0?Je0Loal6;0UJRhRE55bXmCc:U4oBoR_K5FS:q=ZiMOi:[d:M\>gQi7ROJ
7JWE\k1pK4>HK811^0Ek;QY09Un7SUYlnkR;VYU7=ELfW]a4G4\;j`KF[<qYon`J
f0^kKFJ6Kooi2cUM9cGfBKW`WK\jWTn1XpA5E0CQ3HZJH`]KY[cO9GMJ4MG1LH^l
O7j[4i7i1Z_h55>^Z1i<2q]=Z3nCVY^Qbfe;4VdOe;`10WH3d3>V6VZfmWI4UEpE
2=K2Q>l3\TLeX2P<oKjgO2oi;5qg2kKJM?QOHC1AKRW3cQ75fhYB27ADbBBl1be7
jkm5a76pL@7cX3qa\>9`_A3i4037;<T4II>8hOaLg<>0SD6J<W;=I5WpkC50jhBN
nN3[E28^]85GkKSoh55bZJgG[la7PJWo4Z[D?\nW14Bk35YlDU\3k56=@hd4fCm0
EgZKMccjU^jSk;Gq?OVi:hLERH2I=NJ7La<=oU\m`VIK7ae\QO?G\KP@WBTc<Qbq
`5`Gl]KC>cC\bCQdBe9Oa_eq5Dd8IHl1fHp1V56=4c9^=h6agc`:9:B;m8M5M3^P
KFeU1gl]Tbfi4[\fkLKEV^kenpBm@1Rfc;oO4i;cnDb_6TKU4;K:?EA4g<?5HV_h
LNl0cI8o;kO]`IT_iV;5W;B7ZMbSGlJV6o^SpAc3:SNoYS2nC<[O@Hl3FDXii9og
2eX^^B>PoAl?MS`m\T_iDL3kAo1CW=>laTR`Cbi9kG`a_5aJZZYlg@lhP>WEURPb
G@kYFRD?@OcpJ842[Phbegca9=NnE`Y@n\^Sqlknf9`?p6cXAXCF_ek2;T0a7g8P
^C3G6TJE9f3[hIfIp7gJ<<_UEdmKEF;MoJ51nnl@XPab0pFGa`D__1[a5k?V^boC
1\FI3\EBDVnj<<p_NaI[iYqER=2\JUY6h@H<k?AdDUODK3_>ikLC\kW967KYP:nV
n2N>S_7;l4BW;R<IHYIlTjLbg9L4FL0`a5QW5SU69Ff[?EXp0UOl5]R34KihHeXd
1imGfQ6pgZomP\7WUA5Z\MWTnW`2qUFV7@4Rld>`5\[ZBTSA6D;hISaKcqfUVj3N
^`[P^<NYg]HL?g[m`BUZKeL;FZnNCV1dYONWLEpK9NPPcVcom]D\4;n5O]giapgW
g17YSqXO<bAU2m>@7j2OaaKE1P[agLF_LFRT3qbjOMNmog\nfVT6hHWfD_kkhN19
8ip1[9\Jc=Zm;W]Z7k11lWUpD9>^>ARZ8oLoliI`IeJ2Bm?P3_]XpT@[i_c]Ib`;
8m6\QebfRoHp?PBQgTqDcoilFT_F0=F2VHlEESQng4Z_^OjWY<qUS;bE>0a:jhO`
;8gUWl87N>0mEA[Lam5eVT0KLofZJhnY4q0@`nj5KBQ@LaiT6ZUE[HC3hUmQPSpe
fK9^83_ho`3G3KjWc2Mqi>?Dn8_ANST<dH[Q4WjGhZLE6WbUp@nl70Tk]X4;aR=D
XUFbhpl`gNC8>XII9Jh`_[XSg6LOJf1gQ<lA:p[03H6Zl:KfDDJmV;?cV?CWZ_1a
B;bSUc>24?N2g6S]94Z]@fY5NGD\DZjP\6Sk>83M2qFih8[D7?^_k0TB0Y?U_Y^k
2JZC1jpVMG53@Il8<kl@APC\O5Hq68><WG3hXQ>G5j7[ih=mV;?^1K=Pp=oF@o2f
hI13Kg;WbDRe0q16CHKgd6Jl?HkP5MM@oDdVKRE9kV9D7q6?`ICjO5idh>?CclUd
S>EnTfX8`F7amj@mD`eefQ<L3?PAHTNb:\:ml6p?NHX423a<HVDehLn]5j\G2l4d
kBXq=E\U43oSb4TPJ[P38^M3qA^bie`dRTaICgDdYRJAfAaW]3B:`pUfU_VE`C;0
nFZL>@1g6Np2J9DX3pd^YH\D?Y4Wi_h`Mk4U>e:F8TMLRpIU1kZC7qd;_;:Rp1BJ
^6D7oEd5iTjOZRiCEf2[63Lh2BL`O@okFIDp\P=OUoDfRcCgKakJeAM@SZhFE?5e
dT11:OPea^=OfmhRCO[DPfWa;LS\qJOKTij`\HLHL]eOX\l^5aVi6mDl3fkSndEF
pR]e71\88n3K_mGk]:4npVkWf><3B?4n6oH3f7LaOS@4Gfi=:Db;odNZNj^W\CK;
:4PP1V2n1D[Ue?7n\9[@d0LJVbOL>M`p>:`FASn32ji^MTUa]A;_PZjdJSnFZh=<
Jjb<k>npS4CI<;gIMoR2F_oAgYNIh86R37F]`mdk8E0F3S9nDL_MW>MQKhK1:=c8
NoiH1R:iVFECTdgDMoR2F_oAgYNIh86R37F]`mdkQBd^7`16LR<W;0o;?cpj:G9X
NA6FC_E:KK\YVZm665UYo1EAfnF9PZn^3fGm<^8REmS1GRP4M=l<AAmA:JJjQ0W0
bKIFC_E:KK\YVZm665UYo1EAf:FNOdT[S`\8]G1LaUQ6\pNd?N`S@7E`W7>1Ma;E
gdC_6l0Q6\fTO6TMm@c`eTE?FiSQiIj8bGHBonaKna^Pj5FEH8EU]RmaWHU_POgZ
2SC_6l21Ie>M=bMfNmfo?Yf8k=[6H[DBpVPkb_>5V0KI7LWb_p?<OS^j4TSYa>dM
8dnUYeNEDI>cBjgXl8gJj:9K\Ck4<lK@^B9E`iY=\H5a4kGI4;IM[c4Y41SYa>dM
8dnUYeNEDI>cBjgXl89OZ^^9@i`B@OoiQH?1qTR_m_WHV[9>ePGZmqiQcNf^1Xp]
SBch^Z0\eW1mI<cPQCU;@jASLfp:kkHRI;gg^3ZZ4]dEJ>2^mI\5cJ9Uoh;hXqOA
2AT7013B9b;6WoGi2Poj\;mTkq^09>0^IAP0paoFXkSqS7NjHR6j>K9no_;7fllQ
ZU0ZVc@p\9NaQbIJ:F_=BW?jjW;77fFX_O2AqOe[j0\clFeLfLUTme409`a`^J\K
hlgSp2f;fI\EHiO5?;F`dbe6;GH2<QS1nOlKg2@HY@9MGUGGm7l4SplR4fG\;IE;
@dDDPUjXXd>@iJehW9G[cR;Fo7WYD^@TMb>J;G3TCp4kAeYYgmYRO8eJeLcQ^RWf
Bn8kFYS]X`c>a\dIlmGVBH1i=Y<iTpC`\mD1I\>lWJLJcke9C5[l6aeJLPM98InM
IQb=Pj<@2p3Pc6]29ZoMO`PfM;hQO7qMaD_J::pN8Hb5f^hPT?9Yh7[0=DflkEe<
P7dj4q=joKSfS=E730@@J;fTa?TI2jN>mgl8`cq]486X;9=CiIQSn=]G:Zm2D8__
gO=ndS6Hj<UPAojC^N?TXSJmHU87cg96H?jiE77pL`@Y\`?Y02ZnZO9UN[H5D98Q
ECDYLgn`AjY?f]?E42pOlkMA11l`g6BIZEUZop37[`=UfeRknZZ:4<CGP]Td3WQ0
ok8aq4MC976;_d^B^_FXbM5E[\[eDRjF:R9<\P7TVj8U4=AFN5bQQ`=ThDJ]<R99
T`V75Y_6p1YgAZdXO0MAGAVJbOREm:Wn[c>@kWno_P8>O=TCa`_OQ9JlmWSPfhJA
La<Pp02@TQ?hiH?bYShHXF<bWqiPS1LQBIUFLjebEhUhm[n^J7IFWWUYWogj[TWG
WP`>QWOkVp_d8]ledh`0F4dMiC:QFBidNJ7c31YU`B?eD;iTa=ReMb9W>pmlZ=K6
>4`7W>GLFef1b<HQNWVe2`S\gVe2H?j6=XI_?KZH\eheIlUbJ\?;jq[Pa;VH;KAO
GmibI_YE:l>5I4o5ibi?\jFm;935R>j;ldED=LhanhZCqj\cWMneq=UcLLE:q;bB
EO>0KPkIbHZ]G9L`ge`FhZ`B9mU1`M8Kk]2M^\PqladDkK1`7^]TnJXE9F?Y:RW:
WMMlZoL\_l]hN\kg9gO4HX9nGcDhq^oQ5=L_Qb:[KQ85X;H_II^KdVARi`45iinG
<\GAP2^PNqQRf[DcZjE_KiUkSQUj=Y4]P=ClaSfipX0jN1ahEC9dE9Q:k1D=qBM^
C?UEq1S]jA[C]<L>>m\HNPVlod3KJY^neeTqiFJNkTReAM[E2dAKeNN>=cQk4\0_
1Ob<2N7pYH7k\UBNXe1];Nee0J4ULJM1^laWA`FC]HHEXjP3R>JAPf01<m0o1PWU
Nbh?iCS_]=DOpkmh^l89YpJ3]l0TJ^N`n0MJPO48\F?Q4>QGXLS>7q3dWB3Kie>I
m^CD=33]9\A6FkL9_BqWX?3Z5gX^Gi4EHHWLdASikToZA3UQoRqFZ=BLedcOcEZB
fUHg9Oh^UOD6[mTMje[WcTRAd_BY^EoYaXCqi=oek2iQ7JcSj`[QCURCE4jk:ZiK
Nc^i1f:]G2@7`ToWDjZhOCS;5@pildJTVQ9?eA:=Tkg?T?7^K=@W]jqg?h=onG`]
J6AV_PA7HdF1EoG]Lm^B2KQbJ03=Lf6coApW3:?NjYTPo93RlZXc6j;qT6WF9ES@
5Hc04Q_9RmaJN`In4n8A=XEERK8^KfKH=lYpVD7ePJnp@9[YM4g3=nJ6[RTNcn<4
[bbM<gi1RlpgOE[kRT\=\`TD823]03C1Z]ALR;2^]=LpQdG2IWAe<3G\P3nU8JlR
14BmNj_i\2NPnP8FWKHo`h^oVDn7h]MEgf>lnJlFF3DGqA_@F4XP8EmBTP;Q8=e^
V]TOfLbU]\nYeRVVFpKPH1]^XBY4`d]5;<j:99Df>Nd6OZmlDQ]cFc06MKJlp[Xd
D8C\TI^J^RnN5:WQ8V:Y9_^DEB`pRNHd\?5B1bLjWX1V5SfbaJhPa;[Cg:JP5\;8
TjOnd`G7>aldnkoY3=C>Qj:g:@OC<O=pk`j=]H9C`I7I;VdX5BNC2SP`ePj1@<;\
Pn<R;RCFXXl]bP`aQVD[O4k@c_`pmE:@e1G\[QVL>hmi;@^bqmb[EgSTQ[5?LSQ=
3VT<]CD3KQYI0nOaP3EpJNfQ<_iIT1g1bS9UQ>[2lm`PVH>jOSLG0T3JGV3NoHcW
8k<pkFcd>S^AloiichePX6;EHk^@9P=9g[1`]3L76N[Gk8ecTe0pYgaeYbPf<^Le
ElN;J:B2VRCLC=6iGAScBO0N^Z3>fhBho9gcj6EdVBp=jhe968p::fD<kDq6>[V2
3D3cL0XXjXN0D_e6IA2nA@FQPL<li@EQQlSjlqmg6UT2WUONWKW[fiK0Yb\IcffO
b53h5UYTa[:Oh5IJ@qRd3^[\:@n[@2o?Z;I`9gi<JTkVCESfgL10T2?UiD[7AKj0
86OamSq:KLlF<OFGZL^L;m^L<kaNFJ@P^BUGQnhAMB:`Q<UhL]5qhFUXF9J46>[7
R@YPb`JpQ>9g0XbplJObRHLfTheWQNP>F;A`\k\0iS;M3Dp\VA8lM4W1T9KSYej>
U=Ck<`ZML_iXT?lemaqLR9<?O\op0NTUV;2PXGbJePofba9oYlVQMG]\0V369]WG
?7Z[^i84Rg]:U58GUIm`lD8QN6`fj9pn0PT]@NgYGCHN7EMn6^kRg1mU>4S4\bpf
c;68<UiHfof6=Y0A^2docRi3OLApmn7dYiXiHNZ7W2b=L9YibR1kd3Dc7fip\h^Q
GP?MB5o_dKc1;A^YWWbG^=VW2?=>S1e[ecVYQ@On>^hqi^c8YhmciA8^2kZi1hY=
FW3F]6GpU5WcekeWa9e_4VVQa[ZLCXIRA<Zc2f7be6M>F4Ubb7`pMLN5nlV95hE@
SiC<cT2<q?cP5^\0qOn<^A]@[51U_ZjFUBZ<91H9O>GB[BKlk5eS0A@_>KbV@0Wj
Nq]1VakHHk;>hX5QSp853kBL`827`XH<b_2aXER7Df8YNpDfDf\R[<\:`FI_R?VB
C2b@b5=gYKl49C]YZQ[O6I]RXqjSnBk7j=m:YOCFQ>jTWIp4Q7[A7LpV801?g7\\
4=0WREj_8eL8KZEhXjO4nZGe7mak_;_AJMn[iA_H^p0=l9c=bNRLFETDBMA0d3bK
c>l4eqK?UM0aiJ<i=][d2^_HqC5SMS5]^Bb=0KkV2N;088mmWSjS0bAOI9DY`<dG
TZLLq2Xhl8o3YNfa<4`hbhkLbpKZHLRL<qW\7fBc04SV^]d>V_\780hDRf=Bh>Ae
Dl_eJX1EGJLZo7:U[[kHqfFVb5hCf;WF500Y=c_9mbn`W\_`p`0Jj42GP4IfBT<=
SeWon0[M=g;XoL>eORgoQAUfMh>EqBSmB5ccCB2CnkbD?kjP3q1M4ZECLqn:;nLl
EUd28iZI`FLH\eP<Gn]<\?mF2M_K81A?Je:DGV6`cUjhpd?^bY@51CIhL3<U4[KZ
7@MMmFiFgE@4jPKFnQdFmKa66H[I?cZiI40cqd\\o7KkB@DgP=WO[I3mMeb3NYWL
pGQ^C]?^][I@0Wd415lM_iJO4`[eHA5<]Wj:2<6e[>>^pFcTi:;86eJl[3g>:B\k
epdQ?L@9Bq@^;gVjSG8PUZ3TFFDVJFT1b5kgikCKq<3[W_e5FmkH;c\_nRhqGl?j
nM72MVofG\VDAZ4Q4;V?QLc4=0T=q8@eM9ETNXUnfXJU[elNY?cSXGB_K46Z@:ah
LUTBMmV0^>Y?Zh@bF8C_FS4iR^ZiMq;:Aj@RC\Og7PDEPY6]U67>n7^DK@kOdg`d
3Y\2=c:>pf55jl7?8Xfb2BG:=QETiSV`KGRm?ZMpE:c9XBFbWUkc2DjF50A0UHgP
b_og3OTTpj0BK^`UWcmQoWI7S]4YGD]30ORd0AVX5YEJDN@=79BQUjkC_[F1`hLl
H:^=_AR<qk3`mX0:oc7n=70i7:3YPW`Yp=3VYd[8l@cG;ekcW=M^PE1NqNaVOeVf
^1[Y7P?OF1i7QRinE:IRdXd0G9P^TJV>oPUdP9b]BADKSeOpkdc\>gb65:P?BELi
Ybf4RB2EOFQ4pm0AEIl^>jSKQh3H]Y9>4Y=^CoPZj6<lT]aZ0`6Pi4_lU5Xq3EW5
MhoIijX@i1nP?@apA7`2Xk<jV:?Z?Q`C=2o1Tn42_;EAOOM95D?_mOMm>KpE@Z9>
No0MdWoaMnUk>:i`1F7RRV_qEaJY9Fkba9;MdOf;CX^TLQe^N8XQG5OM05M3a>2F
_EJ2B1q^EIoT_`5460QEQY]7G\NJ_cG1[O7HY[QD8SI]CS480mLbepVQh3XI^7d<
=_KEKfaV<qmGi`HEFN=;n<BIUg2on:XSB5\d;6pE_71H;YU`0>W7dW2A0;^lE3K]
:iV5H<RlC>h2gXliTW1=EqlUBCeeQB`>;UehiOHhdq_Q?Q_f4D]_d4QmUSIVCI`H
9LlRB`p]N78mIQXjMT^`IMS_4F5NO]ZHLUChdSPNjCQ=GW`46l96\=7j0djV<qXB
8_fINJFTFc`hFW:f3jacIQCWTik<Jn>1:eX:dPVi8LLaqVa1[bn_Na7SUoc>RZ=L
q?OM^=lUm]^HOldj;KIGE5>nEl`0_pYj[9H27LWnUK\ij^:b]XYn?93H6f^HLH:@
L@me>T3[:2@bqEV;aG^FW?JbVjdI?3K0p?Jj>S=k5bNbfh<NVMi`R8fZN<<UbpGa
Q2@f2]iliLmm0YOcVK[W7J2ml6@gMl^AfaZk;H_KI2XLOeg_le6j3EZiEY=jXO6g
>q5oQdLd<>>d_Jm_`_blP4<`KQ<OaSAk3QTH_2WK\JUO^g6nqR>Ie13SNZDV`MYi
J80WqHZLe@XOUb9D;AKamAX^UM=icnRTJpRX7=HC;K@hbYD]YR6iAodQI?CJ6I]I
eWogkecmR7e\:BMKk:>d<2g?EcVCpQmMaI>o_dmE0Zk48J=Y2gSVFF6R]^PMf_`^
Y0@6T[^Zk[Ipo9X9IWk]bGPH3o5g[_0qIQJW1XC^U^HXT^2biESZdmk7c_5dqh<i
\]_OX\eOTf_YSboj?4HZOknO9_U6KLXMLO];NC<;A>dq=i1Gi=<HWN43>_;A`3`p
=1L87mgnFml0>fiF>kFa`d6_m:P<hgpQ@J?NPboCg]JH[ohRdG8>=_[]DA^8T<qQ
QOV^\UXN9WNNNPVS3LYAiXU;`JMHj<:NOTpgi?>aU\Mp?b\ECfEjnc8TX9kEHkg6
FT3^Aai=J;Qql=;Fm=MjFJToo27=\^LTV]I61faoqk:ZRBVK^jCcXRESTn>5INTM
U@TQY@<q2G^GnVm`l1UGhfZaa3i35fXD5oRcjf93X[_3S@E8[cNq[8Wg:bp\iLY_
U[DmVG07Z>8`^YK31iC8IdPC>TYfCbi\:ADO=ldOJqU6ARgRY0e:j=RK=b=d[EX_
Z0WJMn_YVDa=pnKb^L?]4IV^]Lo^Y`oZ@8X2_J7ZYM7N8\cOP^R^SI;fApKH7Ckg
3SF2bRT0XD_3:NKE7Z?_GMX0C\IRp84d?llG6j\Lo^5d`kC_o\4iZ2eMI64IYDl=
YRMZH1OUO0KMn9jMq>=_M1;Q>LdTAOIL8[;Kda?F:`ooAXX4YOU`0`=^5BAG4qD`
[aGd^CKaSf96IQN]40=KgYcB6ZahN\8OqjXU4OU3agT^YZ>2O\`]2a?^[E<:I9ZL
4gg7[;n@<QQnhpGC9`OH0CQ1nGk^\^Sm?abn]VBbnj^7j6l6p;JJQ]^J\8l9lGnn
3b036`?J^h_Kk?2_Ee>i:`JWWQ[WipnBgP\^G_Yc<gU5DbJWN<I]n3MdUDhlN267
pnfo:3H:`1PaF>iTb7HkfD8Kgi0UPNY_UQNVXfPJ9j]CMpPX`_TfUYT@l^BlXi_`
8:F=A7<DmF\DMSmm@?JIC4i9q]mP_>mhgQI^KCYAS2SUh:Qg8<7a3j;O`G]q3je\
a9Eba_Z0K=a@3`_0;9J6;:<GYS<Pln6`Y?fi^eO2Lk?;qgOnDC?DOL\;aQMLl^;[
JW9Vbb3?=oc]O`38J@K0=?YhqdK[kP^^2mmFj<4LdBDjKpD;>9??=q\\BVQI52@2
CDL^kM;SD0\UR]GC9[R=n^I@a:JSfMGUZb8[NaSi4Q;CnAp;6c\QPZeWYS8ij:[Z
REA:?JnC5NNLBq>36i:U>eO14>[Vf^Z?55hcG<m]P3cGk\pkS`KDi@7?YAl3hP:W
4FjdWV9CZGmOHCjclE4[cC^oa]fQLblU3AheU`ZTD^VM@8kpkAk:?4RRmdd]VUBM
6K9VV`?AX`Q@Td;HH>aBKIHCoIqhIRFXN`GMT;Y[fgJMf>E^Y>HR_XLRMp2_j]V^
D`M;Xj89nLT1L:MOVV;8o5mQCXqUGLR5l5U_joXh0ZP>hC73FY8dd3p8M;\A@V][
f7gg>go=7`bjPoqlT9hJNV2URiEg9F9@;mWdo@pomBB>WOb7BD1n5fhm:K>GPhJX
og3JjeDEK81h>VC\@kdWGlT>XX[WGqF:1if]GVT<^Y1E^36I@CWd415B`GpOZl4]
8g8WXSV<MHhVnU_WUQlC7ga9fI^iTD^6B^XcgN9P1fnaP?D646[a4WMAKEL0BFTo
jlpg3XHEo8mFfCa?4QfJ:NgJMn3o:?Zic[Z1_o?mA>a@kd7F9p4EoSCMaQnYh4HI
?P6b7p^8a4FAAdI<`R?dTm86DNd?73:FdmoKHlfk3hOlAi7npCHh;NT1^LLOVU11
;8O]XkP`VfRc=q\;P[@XeJni9oJSb@TUAg]:@ag<L7QUT\[9XgE\<hU?U^j[pePX
HDAgOh0HoGGlAcY0qmH^2V\Cf3ho7=Wl^O<eLe5CZJlkU<NKjXFi@N3=4P4mq_QB
H79JdCLOTVN@mW_mIFPfodc0ZqaP>aece5beY0W=QQ^2[lXd=A1XTA0KY<UNBc2e
A81UIC28pJDF8\;okFmk39bE4UVLqMbN4P0f1Z\T0\=>ZSZZ2h?gV6FCAqiD1H3g
55nnHbeFjK1IPANQ=m^IagGDF_A0MeD`Qg\o_570qm2K]To>>LLW_64^NP9^q1[X
hXD9LOW;TGZ4j_3mWE7g4ZL0UM;@FLmpi`O3lC4GXDUa`]\_1hEBeV_b>F>4pP0J
<8:n?QVkD3oo2D9Sk<bRC2]2G`[V93XBg>k8fOY:U5^p=T5>A1Y<;\6ZkYLl=oeq
1AcVfnU]YJODFCd8nKPfG`7mdni:q4fF:MA5Lm^8ck?OAC^dkRo<MPLTl_Kd715L
dXPS9M6biimpFN2U:cCnDBAMYO`PdDgqn]fk>3ZBaFn4GbFA2Mn@PMM`O[d8fkCT
iG@domIY=RPfX]`DlI5i`>CFF9Qe:7jhbIkcpgE@YBlT59`E=eP;eiRULJGdUCCi
1pYDSLjD8<E;\1:m5oQPo:n9j^D0KOYSdWYAj@IRmajle5c`qb6f8cB3aDIk3H3l
NU7lqLNEnF:6Cl]_5KZkaeJ@G7]Jg?T9`pI8<7LfRl[blFKH:4MMOU\V1Vm>MA[U
mff;9>h4k]gG<maNqce9h4>8^D6hmH7\@b7Yp=mJkkGBP41J2IYZOQ?FK7mUFJVK
bcGpW:FUUXJGI6W`9N=mXQ5VMTCR@3Z>\W5QYb8W9L_2pMGNPCRHa[2Xm54YGiSU
Z:VWBN;SX]Wa?kILqIkF@ORARp4=iMl<S05V]?4Xf\QMFWjVFXfI8QhPhqQBn\ND
0N=KTZX5cJc`EFf:_SmI1\qI2c_3GbZD;CTU?F[71IgUL7g9CCEG3Bqo>`XF=Efb
lJ7>^adK:F=:fB3TPPlm<ijP0f@gSIl_WKGO20Y5kiN84SU^bpUhS]OR=[ZR\X2e
7elDLKE4La6o`;1>^GXa@ZT\[L0V_m8n<qVGW>m7LeH4`;87f53=`TER;Sh`dq:1
QH>Pe]8`U7k0J;abX2YWA_@I>NQeIOBCC7mXB5C<Tp9DRGMXIAjQd1@_<>86Kjp0
e2QUOjqKan3H>gmEm65j_h2n;EZjT1l4=UH:X4?d?SED>?daN1cD4^p0P>aDL:@f
Ybd;16=hXNd`WZM<4c6PmFEWh0>=XmlTK@_f8\p^6ei@o^_8Pm`]WZ?SGT556:6X
O=pd?Z1:=2L9fD:PnNkkZ[6j8e98TP]=gXf=KG5G^F5=A]pQQOV7WfnGZ`jc6>cS
>VZpO=a`g^PpN`]H`hNA\^iBcCQLE8AKgCOJj2_a9Vf2TM8cY;=FNRom_BIqKHnB
TkR7^9D^N;ikYMEh;bBO?L3pa[<n@D1S2Vio8B_C[S<U4Fa5Uk8O6:pbimG^D:3Z
R?E?cf5Klfjd?c@4mXknB0eF0>EUM=7MRSpS>RFC;d8R2M:k?K:0o>VqoHb8Zgnp
c`F\4igaPHcYGPJ2:mFl\IeON_TbcFT9^ON>AOmPg85BXe;WqEiBIWL_BXaL5gOQ
4M3;9@>_0`Njqb8GG;<H2ILWoCXGH1B;;DA4ajK6\F>m8mJEUJ8FdW]aqYbTHl9Q
9T^j9TLmMdcT1p>?E[Jk>oP3<oABCihi2OIkYU<OhdmaZi:NQ5Heq0VoH^^LqK2C
_LBV`Z8Oc9g?T`jRIU6^dG4EMhBn@HlmK3ZQXO2VFiFnQ:IqFOnjfhSjiPgJ71O0
ZeC5[@`Th9ip1XY7j9hYTB2oM`oc`B_dJM\4Jel[ZR?[4BXDZ4O0fMa9AQEJpcTU
C6W?ikQL_I[`EoePTogj6ZLQ6c\bJm8Wo[fT7;URpV2M3O9Y?9n=OJEMlKmlEq8?
4I8Deq=blPhnCK<MadARl03i:?KGaJ^MffD>V5ZU8QBMOY_=>`VjJ6enp]=FYSE7
QiQk_[oE;kOdei]`FN=hp^Zo0=JK`]GDLm@i`^IH=KoNU29n4mnQJdI=e5L3nRfj
pN1T2[Va3@1<H55_k\H`^qmFbW6X]pK4QLdIcJI8W;JI\g[f`C>MNZL?4>7RS0;?
Y]Wi5kMj@_^DnAVDBWn7P0W=6lq]g:g69O22F\n1TZ2nAjlNS9_7FbM`_mD6e9fW
B`RIbDHAfW^@9pJa^AdBJX`ddlFfbVFl2H<iSCiT3pOoW]Sk5dFL92^9Pgm2EFMo
MS2JgPZ@INVN8o1fa\34Bq1dLfl4]STXP1[8POV`>>qI:CT?1;?@Y]LLXa9=e7ko
>h[WcBT;[C:A8h2[V>54iHC@`=TnhO@8@k\fAPWQcpeQ:o<8Wp[4lbG[?7h3DIJc
]DfQVY6aNLA7UL<R4nA8Q_5`:OJHTBfDT8c9qBhOkjlGj@Jd;cD@KfBJ@QTJ;FK6
p_i302l2Mbe9W\kW_33o`jgYoXH:ASb=C=aRSDT30>f<q`lOfP<=j\KXGI`V6cA;
Vqn[H]bYjp^YH@lTMK?;gN8nadTQE4H2k]>lUbiWJ2kE762F4D8]K9U0pW3dgb7^
Y=Db^IjIdE9@W2VVDL@_21Y>MgO_4mgjC^NWC`86c3bp>JGP=dIYYk3KS3M=BI7e
f^1BSF`qARbik0M>Z94^\85KXNBA:URIa`hlASBJgXYS^gID3h;p<fM\5Ug=5i;E
<;]OCA;@pn0K;bKZqJ3P7B99@2;L:Qd[=o]lc9UKM8XFeRelFDdCU?cb6L[c=?\4
Lg1pPMg8lN\\```;C6<@XS>NH<CSWnSqiA:0kE<ed;AJdmEcKRFBnklPDiOB\?gD
aFmBBgnpf21VfHlgiRemUSfc5j4EMX=H3c4kT_Vd?D_hTL3MA`PqQbOSTB89W?PF
^j4U0bSUpS<=go>gqYk?U;VO]2kY><kf[4ad3\]OC]j\O6WpSFGBM2ISB`TJ9nLe
bC<T@O9`2_604Vekq@7FD`O]WPY;mkfWmf>T\3a9BXLm>7NmPSJ5Ld?]\]migDAN
SUl8h0^[O=1PhQVR@qKV2G=^VS7ZocKZF:5oUYT0Y>:P?I18eeiU?HkJi`^1qT7`
Z1\\l^0<;kf^:TTn0\Qdl7TXNgBpE_[1VdN=b;=H7jJ?FlKoII=N4Y[S]3=XpeMc
J]D_c>N3d;]T3ORlRFE=EW[9>\bFI`UnikD5b`i=o>I5WDBWHococ0En5MTGpVfT
nU8h_WO1kZfbmIlG2E^lp_QZ]h^ToUXR@0j_<[ch:STLpIV=C:oZaLWcNDHg@O^V
K]Q]?XkkeZKBo@A2clb0]CBAMWJ`aYGnHJ=q6K@57Kn2DUm60i:^=KTeE`o>gG0L
qJ;>jInel?3W:SegU:8io4G[3EEMS2KTA8^a3m2DTWlLY]bqT]a:b;iJU;cOXZfW
<GjqgkkNQQaVV<@``eFC;CZ25WFacRThk5QiX9giHYR`;^pfUWdaKJkZm?7g]KVj
06R3EGfifGOqgW>V<GMAJk@KHMQ;>`9P?:d5IDQfTQZO1>c;BJ;`m?MGpPMCS\SP
`^_7M9AJH@;GgdXAG]U8X<0ahGBVg;;0K==8^2`p@2ef@9HIAJWa;O?TKo<qLhOR
j?NZ_AGicHPoAZE]Y<]G9JC3pfJA2YRKgO0VQ<8=FZG\:QZZNHj\U7G21YQDA3Y;
ZT7b^QTq=MM_=@]OXPNo5Y6ENHIqTEkO7BXCKWOYDX[nO`_3MGTcPZ5:qia6PBY4
OQR]<Kb:<H9A?05m?BfC_POBJFlng5WSaJ6_mOdqiO0E20[<o<RMbToQKn@Dj?3?
`emelfO?Oo9=f>WJEbNRSiOFEcAG6UX?C@M>p:>`9J^ONR2\QoWN;`[aphe9F@9e
dEHN6Y7K>ZGcoAl^Uf^DCqL>RhfPEh68j?f\d5jHb?94jo[1i6I8H0HAn?IL[N[2
kY9iq?4CScEL:ngHNCV256@PU8J6;cLDPTFYHM\T323?oUO9A^E1:3e?XjiWOH1R
XLQQJq75g9KOH3cHD?EZFGP64p?Gg[V<Uhi=IhVnIm1eFYbeDPc[iSqQ@Baje1Qc
T^`O_J`?U\g5@__cdl@5DeEY=eIb[MOlQQC6=qG1o5SOOOH4DASAYX1OGpIhn8Y;
^h2l7`Umhf9YUIVbVOL`30p58BmEl:mm?=WXIS0pYc`3A4OaSg1b@54c?l;66NnE
:03@]0BL];UK8XO^UWe;8BqED\hJISGSg4ZV713m6ap1]KYb\^WgiBF5LgZPSo6H
?3SV2i?qkghZ1b7?2SkVkUmV6F:5Nh?nJ\MdE8U29:[;cgM4X^8mCBpXJlhEZ3;>
SbNLF]NLoepo\\NR4ZDabgZG9mbRR^7G]mWl0l;[opHUlY<f\GoF@O;BAF7PDa9B
HP;CbkVKF89bap3BQ;[LR2?7pTb?C3:o=ElDZPCnQ:e7>IJS]?dp6GbJ?9pJ3b:1
BgS2T86gMOa\I[96c>EqINKcd6]jY0JOdW2e0G6DkAP>QmNS>dI^lN?9J7WdDOnE
5X^V_A?cCE_1l1mq;eZBX0`\5Hn2Ro3iJ4FZb>f6in1R>YJ^<?DLW<o33GmJIG<l
>ZSWXlp>IMUNM3FZc>ePPkRHk`J7anQIT7ee;:eRbO;JP?PIKCo081q9<Zmd4G7>
iNiBmj;CfbFNCbCE@QY1<pNcA2ID_<\9`XbVCPp^nM>4TcH_:GRHA:Re5ogfLEkH
3Dp8k;9PjVZELgS5WnACW`[JQ\kUQ76gEHS88j\ZGBJ]F;=2>1pSa3b=nnm@hB1Y
ZGKEUVQMja<[hM0R;?Zl`oZ8;<j0:<Ck02^<6@Z8:hbd8X4qLF@HbaEF98O:D<G@
^PKf=QDUR2ke<AN6bD?NPo8K5K4_2e157]TiAMpJ1\:l85WToI4HHeg7:A9e_BSb
K4bRQIToCoKGGEO[:4o[k1;HC<d86pm_[6_9C;SZNaMX\aYdDd9l709eDbSna?Lf
f;q>YFXMDVnb4j^j4FGNb4UdJm`1LUp>k:ee9lq:25cjLW[UM]b=oUAqW<GI1hmZ
SHK:n<f2JCMI90PaIDoR<R1=o3apbC6lc^WHC6Ri1n5W?ROTS<X2Z=oqiendj>@^
Nn?Vn0NnWSS40<f1G?iQ2U7IITT0NLPh@JJenjap[I9TIU>ZKMaWOJaVEL;n62CW
l[nG@oQfOhI?:h4L4<d[`f60hT?YZ<2nh`=9qO\3[<cjg2jhn<fNYJF6;;jKjpGX
>[6[Li^CNQY<j>4cK[gHb9Y5GkY^f><^VDPR0fN=WEPkfl>8gBn5q;QMW[mZZIPY
7:FB^Y:[W\igD>8OmJD`TUiU3q_39_b`2LI_C2DP\OF^ZnRWmkPhoqc6To5A<p47
==l4Alk^9h27?9p9Ho8b8DAXmECZ<Ca[jKhC2956\mq45k\::S_FQ\iX1YO3kY\0
4J`hW_FE]a[1MR7K;`ImFeTm3Mp^2777H3EH?ad3nO7X1]q`?c0kB7fo_o7IQUMg
o[hT\]G?ZPjLZ=B@hB6=AWJRBf[8Z38JO>GZe<l5]i<qAl5L^`D;VFHVHUk3D;On
\KS`e=STn@0KM7W`=SimN12WFLMkVN5If]pOmC3]T?V26oi]Zc^^g@I\J\Hb9fqe
3a5X3h^n6C5G8oBS2HFDAC7mIlkm5h8ag9F6UWNGnZ:0lLa>S]c6_;eejm8QH8\X
ed\;RqEXADlXi2_b?<`Qf6_;PQ4N7I^:PJnQi?UUgeqJRE]l;`p;^;adcnA7MRN>
CY7p8C=TQ7oUa]a6;@P@R:4G^`hLVH`poEQ3a[nWeEUM=<]HIiAFlDRVNd[J2dZ@
FKBA_l;4@WNf7`=p>T:o:_;ENeCgAUfYojC_H8HANDdmElZnB5l8P:OmJSNYaEMQ
[J?8XM23mgX]qmbi^97^Y6n]jT`TDakLa\mOo8IEP<^\OhgP^7Z;FI5@<GC<3VOI
DC9p<U^NJ>Q\?2377H8ddb1Z<kLP\hkp3VV`ZI`;=Qj\CiKZ:U^]DHcRC6iY;GH1
Nl4hpUO_3JXP0V2olfgjNP\LFP7<=TC_b_\gAC4ZqT`K?C[]plnkib5;[N3>e`_U
hqLjg?C=a:h:O1CGnNFRLj303F>YPn4^9BPg_6V`[DUAU\EaqNQ4`8BM>lXi;h_K
2a=hPF2jRb]nD`mNamA\i=CP:[6j1BF8qD[@8oRVaRCSO\JXG17e4gVo<eXq1YP9
1HUaQNWK\Z@FViYLMKHM:MYg0@3Y=SOX4bd;69KYS>08_>8cPjK7i@4aqEjg_]YD
^l\7>liG;nVYimOe26=:nh=]UHnZd1B7jgg]gGdVH^Sn41Aq0KhRV7_2db=ZZm<A
9OmDT39NZCJ5fLGFlnTYpMGCT`B]k2=\8aA>3mWenTCHlDmNlHc1=5`3=q`jh[`^
Tq^jegbS7ZEM3bBkjZ[hl^NLF39fMPOfW_OZ6AUF<mk4K>JR6l\:FNQTkg6gi]0B
pgj>=T329FkMW>h>DpEbn_4Z>;4@HVXoDalbkQbHb9^6]4D6`74cdaZ?cc_lUYaB
pShQf^T=jAHfTK=kCc^K8iZM8>[7YfWXPDcGPgh_lQ81e?i_pPMa?OH]8HPelJI_
FSg27Q1a=Vb54XhTSXI?WQF?InMkN^Ih[g]MHQa=0IE6lq_<?9`XaWm]o=37H:IO
JS6`Z<L46FeS>`O2al\@?iEg_:=g2a\O>mIKpMS>g;_H3SkP_k=d?kdnJelYJ=l]
BKb2>b>3npaKRO`b3d<;PJ8@Uk>GJ_J@T4o`j77^9\RPqH4lhkZCj7a\o_Jf5elj
IEEYJ:`9AXUN@M<_;qDmS16`>poX67@jhM@5=D\mKmqaX<2Y2Aal>COlEdeOT@9H
FmNSk@R^`OmR:fHYQZLMK\`jiqWY3?ddc0b5FJfAggR7J@cZ?X`V_G<R\2F`8?dg
LGYol2d`7pA8K\K9Lib@jYMbQ;ZU]mT4o:N6Z9JmJo;SE\EYZg6]ASPnai?ZScgl
n=8\0ep?ghSlm35lmXhLoa`_lU6CO[:2:_Km4_V;9GF:D[0GBOPe8HOVVHi7Aq4f
Cb\@?g_PQTiQ9d`Z_\nJgZR`UdJXTghbbTCM]L9VNMXAdIk\[Ycg@ij2p;4MYOi?
>VHd3Ql_e`2gW2VgmWLiF[LYFo1:KqWd@AkeS]F1:>J116b3j5STKNOfPWJjCMi;
<IqDhZDee[p?PIfNjJQc\g07E79pW^aR:AK0>;W7PF`:_N<f@GObH5TFm;jY`56:
lMiAn7D;h^pD6aD>d;D>\`CbBE?DM01X52FlQ@M:I6];=G9I9I\R4PXGMVqbbLTL
;<Vcc[>E=]lo`G9iK@q;AeXmnA[mngigZj;_YH<VH@MPG_IGRfg^^d60[=4`_AVg
k0BL0Ml^[UM71?apMJ@2j7X=al7jAD_J^Dh`b:UES`HH=HIL>h=L<eXeVncYBfcC
BITnWkpSYkh91aiJeU<GRnM]k\W;D:HU71L_`1eF[2jpb:JDS2[[CJnD@2SIl[W0
NPRT@3U@TeJ7m4UaqW7YQSU6pCSPM_;i@a?dqDZechGE[]\i]C\m@Jc>N`nAb8j?
K@h8pnaM1mi1P]5[Ya>A\K_kXRNbgEZdGXghc3;IXo6pZG`6K]hNR^@CYLHT=oIR
l0jB<h[c7>q4A?L;k]UATAO]FEOC<jSdNJbp=]CUeJ\3`3JFl<5WeQ_N4eOIp<4`
QdU_pD@7oIMep]CCcEkSp<oH\KkRhQe>iLfIf\>b87[h>g7IIEgSjC^=a[2d9KV`
p[>?eS;3J:\MOPgkD=<LIU654RYl3PjTIdS2LhQc@\b5I<2qV=ejX`IXOKSMFE_j
Xo3MZT5XI<]`Cc=7g[mqbhJDcg>jIf;BI`3oZQoi?lE=10]\LQRUY<kn6=GHH]lq
H2B:=;dA^nigjNVRPZ_LWDq8N[[\oC]`?WhD6C6g^UcNIV]g3ZqN6dC\DhmK9NQY
I50o3;cij=`D`CpgJP46f;hEcJQd8ek[CXj4AGc0M<pN=4KB[0BW_7N]XNKGfKod
gZXLI`=2kHkk>WEKSj9g9d<Oge@XJZjf\]cAmjHCYipN06oFfjc::DhXK9:LX;io
NN:aNMpLRY5mQI2[]LfV<Wf3ePenb1oZ_nqP?=hl_dcTJ\<?db=M`RqUGGh[oVAV
Uk`JiNdnWVo7JOE4b\86:;pZ_^ldiWp\l^^RXPnGUTNMLIf_FCM0mJ5DhB4AnEkW
;BNhJgJk4NK1cJSp`HEeFfUeT2\EhKAl2hLA1\nOX]?FEmGqJOTcGNT3JZfTgMgD
I?iq9J>C=mlQhJFU18O97c?VZOM@E==0a5]7NlKKiGIJ:Cq4gO[9m^;1o4l0On2n
ooDYG]gPK;p4JSTXT3\m3@;ETk@Lkj1IL=<8TCqUM=Q7k?knYFRX4dmX7:m?CBn\
mnqaFHjf7DCid1Bg>4cC`Nf:;RP@_np<m1TiCEEdHUX3So09hXnZdQRoCCpD;NA6
mf1dTXeR]DjB@99F=Y>4dC1C[Ha7>D_9BmJ`KX^l:?\o\<HfNb<Noq9]EU8Y32>J
3WZe9o;T4B@29hmk<pl@>dj^J`Y[5[X_D[bNA2GgMIbDk]oDiT5V@32A@[mOWFZg
g4hnqlke50:TqHGU8AimRflW1jI2Ak8>mH:S<BYV]q;Lmh8PnW>Bc;Pg1<OMNq^Y
[7:Md]0H[b`^9lNIm]B_j;e4HqC^KVQi`I2kDkb=V1<Ve8\R?M;^V7[E2kbV3WcZ
EKh7qIE\\5<XDlET[>j3V`>a1CPXQ121pTakF\a^6Tn9Q<0UCMRdiLRA]^ZZp`7M
U?@J0LVAaU2L<o`l5<iK3_UVpA3]=BQR`9LOI6=72R5Ya[CThe=<pDFL^9lBB1aE
;H@l0X=3gZCJ[<o@pVU\bXn;HYZclOmS8KNkc;M`9cgk[kKLgfgc]qmZ35F0d6gh
jhGCI[iSeHeU3];AYG2DJDbEbB7Q71ABU1f2o2=Dq>[>YDX]p;^_I\]ZjXAaL06L
CAe`pOeTo3;VUTiohCCBNFmo?5F[a1A[pKTVFcMY\TkNdha3?h<>11FlnATlqiEC
EPg[=S;jERQDLL`6bFj947FTmLIB?DNY3=nUCJPpN5DahdUDOgT_mG=VeKh1amYk
MWLpl>eP\0T<kYTROnN:Rk2P5?NHL9:qP@X=3Fm9WCd3SSWF>341hG\d1MAU@=qR
@U1kScPdN4D8aalDGkTIj[R@=2pJ6Sd0EE>S^oLQU3aG]aaX`GB]ZWp<ki8o0@<7
gDMX7S`P9dS3QTc^ZaPo_a@YmlLI7EojK[B2:LjL6pJSc7VKCpd2NMg91bhG6]ae
in1W3pZ58Y5OakoQd=22mF<09gQkN930;p4eP5LDPE[TZVgl9`j]l34lXXf1Tq0J
Oge;>o8N0mBQ33cZ?B@hdRI=3p2B?94WOiOOefeb:;V3CmUQLJ4:1OeZPVh2Ga_;
FjQ\A38:LYnC>354\PY4I?9opOMH[9WkUYcBXkG4dnS>?U_82e\UHi[8T^bTkgaY
AIoqDZ7;AG<mC68M7iF<UPlYVE6[8e5qR78G`HS:LZeXTB`>cK]Y@H?HKhVqlUdC
d`7\6Y@fKi=6eBG?KIo3Cb<q1R5CbicU;\]NF<T:_E68NIiieYfg[bT]Fj=>n0bU
eOV8f^af<=pU<JbWZYIm^a^6goT9`nJAH73Wcm16Uk>SFD380RG\6<:SV4XRFS8@
og@^ILgm3hjpoFbi7DaqA6C=FWE;>[MR68QCO<>q1gGo8aeZ1OijB8^AmOoZFA6B
6japK72dbhYN`67YS^DYdD=_R`\APBIpM4;oj5Oan>GGWdf7`FhNL55Xbn0qUDAe
AOPDO><1YDFiYBe:UHcB;c1ql_V?gD2CWoaR^^<:OY7OmQlJgMX4;I027chJnG[Y
CJpFRR5kcAo2Rm^`KM9FGCN:_[hNg6qeZP:@TM@Gi7m45CoVW7=kRgY6[lpeC]LO
laL<g4nLZRkk7^c21V12cji7g^i[hgFl<XYkFMJI6^Jmf9<<=16peL1i4IleB8lj
0dQJZCF5E67?]S]5h2RUF^?<fA^9A=G6bVeLL6qX@d?HKdqObC]A7kb6PhpjM:Dc
:\edlLN58eIOB@Gl1<8:8\pFZFPHf;S[XIOS;9mM?oVbGS<X=\pD2gAnL@@n<SNL
DK4hDfWKOj5]k8qC8cXlA:9e33_K`Q1U;17AP40:Y5p355]1P8_KHhbNV1bLh0XW
QaC4<AFfbMPaZaYH>ioig=bcAG`:kmfpNjP]o;l9d\_ja`Uk?a:fdH2oBEEqORPS
BKm1fB59`AbRn\EjI8LVQW2\Hg<pMT0S=a^q2`agmX^m=^JV>40<h]_h=<65m[Mk
h59J=aPCIoj1X7gPp;Q>daIHp3d6;Dcipm_i6SKJk5V`4E:;?<;_NF:dn@FbX9cb
mDVDY_XiQVeWqCjXaa6VjlZ@d;EYUC0eZ6D3XFPjAiXRXBNSBeP0PYb:nk?pe:WR
0PZaI>DcHI:J=e@I:JP=V?K3F68GKl3pA]S2FXBPT9Wc2`o?^lYHZJq@?Lmo9;1H
ZJn@MZ5EQ2k\kWmd>Afk8i^[SL^?KJ;``]i;Bdl0LZg11SJ@S7FN8bbLPN6_MJpK
Tc<HE9XfWIZLP>DC^=TWJ45ge;pIOQJXOieF96GYI23C82K]SXDbkgp14]IHnFno
>XAV1j<>eAIMHm1n0op=Aj0?SPEQ9A7Mam_26hTOaMmoWlqPjVk\MYo4X[UYhQT@
P3Wl@]RKE;qkF\oC42TVNkC_3^Y`c2qP=[f<Rkln0P?[N2Zk_Xo1b<J6\_C7\Cpa
3bBIPeYlGBkPkDhB4:I8:^7k]0beP^PQibBKBNXR:qMG[oSK=qC@^<<edn75:CGL
fZE\`iFT`@SU5iFkUpZDg6Ja6Dno9XfdT]JZapV6>lm_?lYGd`;G0CDXHUZP]kAG
X1>5Fm6?mI6kVSFWqBbGEdLTa8l0MD[g3UPcia>k:1RIpDS\5VfO=gGlf]d:02Wn
EV>HA^BepSPN0g`6C\d^2K]\5V`ZRe7Z6]Ugqg]T^]E5UC;dZFSR23f4[N[CF9Ka
p66NDWg3k`LFhXXT50^SYc5WKUd0pHGIj47OTK9]i`mM`DI=mjn;O<b]eh<MLMbl
KqNdM^P@M^VJAWl6^70Ni1i8@2;=Sph;C3N5[69_=P8gMj6ogbeMJQldFFZEYMHA
B8`i=jJ\@?ZZ@3>mpB5:CX`fp8On`969QGO=oJ`2^\T@p5`ABCJeDn\>?49UKJ3;
?[44Ge`EpncAb:4DOnEjViEHK<6=l3IP1:]036AA3?_1>EIEBEWpHG;blYPTRkkf
WmaMT;;V1<lSYdApbc7M1^R=`2T:<C7fO:G6>]df0F0YVR3RY]SM0RF[iINobcfJ
[2>\oPq]UB<XJ:`Vi0@ggU:KHehcADXdL3pN;hM<XOTZm^l8l6k:;[enKPieXKqm
;HbSQ0m:fBM`@QEVlTI?L:B3g6p7l`]`\:?4=2a^6_7QCo]_=Xb;jYp\SOR\cHaW
YoINmYcL`V\g;NleM29_ncZ;?hP5X28V_;Dn06;^Epb`ZP7kCpZK8Ua:@BklE4`6
1VO4[qdLB_`[BXMTePhdX`1_IgFP6f3dip7gE@>fR4HX>7T9HD;0gJFeGLDQXqf`
B7;n38:4ko@@iH[a<I^MiP6beIDh^oToC@43lYqk@>NQ_C;8He5;SioQahhJ@``:
IIj3Dc^3HB4F\21PMpd=2<@D0FAKA:0fm=\TJh<J0o1ZhqKHnBEGjKBOo\>FiD=C
481bBJjTnqZS6XEbXhB<edZKdXCe=IVe]Ahl=pXb8T3h^MZFfG:N7e9gkH\3U1mT
@pNHV8UD`B_mZ`:`C>nlU>Y:FA>m<:;N4b\JGP13f`YP\f;0]Vh^p1coOkZ>qEVh
`6P;DeThGU\Qg@=D:5oniL2]VF>j@O<cV1aSNR7?NCL]WJUoW^ESRSi8:;^po9<a
R\IE4Hj8X5`50KJp?a_KG5WSKjUNRam;IEcXi8Y0M7cplDm>]9RgWJZ?kP0PNMmE
>QkKV[>q`1<6mPM?3noaK[Q@B:]>UF_jHB7piT^K21>:U<QU@cm:mMc07dJZeEc@
I:^jnniLojHnm2qK=P\SU02_=OJY\Cb;Q\a`hMhY=Cqh^R=FLUe1DTCi6?UQD@Bb
Qfd8G]pYcolM?ch?fh9o?oO?9N5K8dDZ>RqQ:;KEZhCHIbW>@fY=_`6Z]2;hDkMi
QnIhC59^;aJ:VlHbg9F7fcjWS=:JVpk96a`@EHLDAel9J@dQMll5N_9J1ABQ:CF5
T\Qm@>4o7OU_`J0cq<RI72DapiYIa8UG7R@1<fMDa7Ulp^\EF\cd^1i2<9feR1Fh
>O`K4R\2pKLNk1EM9^>2K0X4ZCZTji9A]d^lqaHVN<3O>P=SQ2DI?E8@8_L?^mag
p;5J5FF:0mn2QNG^fnX5:0SKgP=RpME0EeF?M::95?4LCFiQLa>2BjkEZfN9oY=Y
@i^>WC=p5[1m7@LT1gh6H^al5KNk]MheF3EoAE]e=1o^WC7=[CQg3LF6`SeBmhl4
9P2_A\\?@IToL2p\6X0<=feT6oRG]e]7bEanc>^3@Aq`63>>Fd[8Y9k>@G_QO[mA
VM@ha`q@JgWMVLK;PODB49HE?FT@iPd<J4@lXAE[gBZBDAae2m<_R:eJmq28C2Bg
ape]OfaE`7lWhq[:1H0NK\GU8]dKm^oo3OVQVa6c_pZhk0bIde>9a@oDbo;?fMPi
iDcVDK\H6I2BMoD7WX?Y`OlT]i3k^_ffDT4eTEq5hhScbh0MKRNW3bcl;]8=IS3K
b?pAAOVJYOh9TTEbN:J_QDYd\5Bg`4q6Y:jGoZ@d4afJO5T4^QQIIE\@m7pagDO3
7_OoiF<gSo@0>Fl=3kdf>2qF7@b:Bod>gT[a8JIKWqF=O9Wb3EMS\D3>;NKhj2D4
ldMIPK24jp@5BVLAJqdP]m2?Uq^H3O]@[MqPWCQCY2pCCo]XV@6a[pG]8e^CqdG5
?Y;hVcSB@kZP0I]m2M`7[@PmSXAbfqFYHm]]0MZ9l3oEGX6=A1<T>:889h<fST^P
]qR9WeNJk[T?\P_T6Z11B[;OQq>VmA^Qnn<kiei0iH9m8<W5m=fFL2m4GQe4UpTe
iLT0BDom4F:5?\1of_3aJWHL2Dh?^pHbYHE6NdFiEh`c6ma5>hgU9ZTPc7q2EI\K
1i4hUKoaS9kTlIcF[0[BZ66:[_JgeaEM_]BEc5dq?C;FS]5DdLFd7fX<oZHY2Sne
C>D5J;_6Md:SXhUGVM11QRUDJK8MocK1VO@j:7?9hWLZj?5NdLFd7fX<oZHY2Sne
C>lGV9Q^AIC8F7k@T1gXq[H2SY[feAXM9R=o7m^ScGIlgMfUKJ=XId?d4FhFhdd^
O0=c]4>b9E<0bB=ljegK3[IW`6laRAXM9R=o7m^ScGIlgM<5NcQAYZ2CjoTOfOXg
^pBMocmBF?`^F;SG=Yo[fe3[ZX9bU8hF:OdjbkeAM;I3^PY:^iJdn7Mf322RPd3L
^kjQMNP1BY`]8oQG=Po[fe3[k4l^g5GF1[_KEPd7cR=eSYq4V4HKCQgEkd6h4Dg9
Lk0]cFXZU\iQBC5dd4iGU9l:VA[4hnldiD1h^a^NV7dTUbV>jI@5JQREkd6h4Dg9
Lk0]cFXZU9S1e49D>?]D2K]kPfIp[j]c0DF:mN`SR`W\@?@X<BXgjVLIqGoiL6@d
Of904>L5:3=Ke0>39`Ti:chXEHdp]7W4SYbCHjTSiPO7A7qci2WRK^fqOejj@TL_
C?BNJF[o2]Tnp3dA:Yn<IAo@5R[J2k:Xb<@EA`V5OJhZ6AB]5`<h31Vhl;7WSbn=
L]a2J_a<F31d<RDHj9:4pQ1OPUG@EqcPBY=^?S[HoZY_PnTJ[;Bi>j0a=RNh6e1V
<1O>ND<]7Eh2blOZ@4GQ5n=j1p[dI11^QBE>pFNlm4^pC5LaVT6U8j_OZfR]Hfof
Knm1qm`bcm;haAhIF^iN1m7pd>d^mJlma_[3Q<ZeG2afj4DEqA_7fBh3qQBhS9oa
?_cE1f[K9[d5p6mkl^OlLb[FO^Y8CTB>Oq2=`V2;2lqlA_Z1`k<6io8HQQglIe3e
l835Io?S4_cT1^0:ngD?A95dUDEH?D:^m\TLc:A?R\PK;n@i1k_6io8HQQglIe3e
l835Io?S4_cT1^0:ngD?A95dUDEH?D:^m\TLc:A?R\PK;n@i1k_6io8HQQglIe3e
l835Io?S4_cT1^0:ngD?A95dUDEH?D:^m\TLc:A?R\PKZ1enkI5;dd:KhCaao>Gq
ERk\9mGT0]Wh`HIoSm`eDi\SeP6g\@7?BCkT6?Le8h]3KJ=I>k0;[HU2F[>APfLi
E?JdlQG=0]Wh`HIoSm`eDi[SeF[ILk7TVQk59OUfGF0jKJ=I>k0;[HU2F[>APfLi
E?JdlQG=0]Wh`HIoSm`eDi\SeP6g\@7?BCkT6?Le8h]3KJ=I>k0;[HU2F[>APfLi
E]3ZlaVnnc2]^I?QdV8MqonZZ_mf?ZdkEMHh_P83be>2imj=TA\BY:DBihbDAcV?
dfJ2\e4NP3^dD^gbJTB`coA?gh@fZZd\MMjd>I_3dY>7mai3_AV:gWFB[NaDg9OU
nJ:M>PlNM3^dD^gbJTB`coA?gh@fZZdkEMHh_P83be>2imj=TA\BY:DBihbDAcV?
dfJ2\e4NP3^dD^gbJTB`coS<Vh>dV8L\SA74?la9Dq1[_C`n:;h<eOChT=jb?0je
7e;n_M8PJN0MLRFN6K?ZkO`]M7o\@5OABNgcK7=DFo;03:CL:?h<eOChT=jb?0je
7e;n_M8PJN0MLRFN6K?ZkO`]M7o\@5OABNgcK7=DFo;03:CL:?h<eOChT=jb?0je
7e;n_M8PJN0MLRFN6K?ZkO`]M7o\@5OABNgcK7=DFo;^Qjo5<WTmEmC58FZng[pl
Kdj\L`A4K`X3fT0>nK0O3?Jd`Q3Eep@?8gQHb71dl8D?8NTepSR^E?nVp76LBSIA
PCbKHT4;Q30Ep35ENf6XW7W^6;89Qb?>ePJC^bWPa7gS94^l34[Wf5YQNELCdYN[
?dL6WPi6p:3_B10Fd?neBE?fDZDXPe^WNfj^VCMWEZdl>1`f]\lpKX;599C]mP`7
WDgh7IiSiL06FGXR0KhW;3n]o_C11A@3?oNG0PK<9l\PnoYRB2Jmg[_5LRC;mP`7
WDgh7IiSiL06FGhAElV`9:n>JdaMcG:gp`Vcgj8hN[aoNkPP>>f[;Of`M[@McEGe
GgbL4O>PNl:Ck<=BiiGj95iA_Wl8[R\j0`\YNd2\<[aoNkPP>>f[;Of`M[MI\XAh
2od@HG^AfFDV:poVEJ2loFPL=F8XIUYKMQABo@_3h9KFffZV4Xl;2iLnJ29iPGN`
eZb?PcA;MUcn:H^VoXm7jPR^[;?3_b068_KBoO_3h9KFffZVZ452Iaefn=ZGfEL8
7>5dYlpQP?]X7T[Gh]<A5ZC=RYggSX:D57G\@GM64Gj22LOUEDc<0RcjYUmf<0;G
bnHagG>EPE9@2X?0[i?DB6?nhYYM?hl\GCW\:lR^o5@=>Mood:]<KgFjYUmf=Q1U
baJGYIiQj7GUW3?S=lj?Xp[9GDEh^T9fS_5;^F_<V_=62PokVnnI5:JM<`9_in<;
HJYE6\UgYL4Ej;f\[5[JMPR:6\4]^R9fS_5;^F_<V_=62Pokjn]cBDYIf`G0><V]
CQp?aj>Vl9fhPdMJEhH^C^]I]H77@MSiIqcl<L8mgD3hcMKM5;AhblnTHE^KlOEX
n4d0aYMN?7<\j7mUT2bAehg:gkG0pbXaY:I?63M87986ZhHpM1_MRbUqjHaLk^@1
l?iH1k]6IGqIM:^Ng>be3TZj0`06Rj\=UkWl6XfWjbWH66NilX2oYqQ3]1S5`>=6
3DoEI9Bnj0nP=YjDMoD2ZOife3ZkZ052Z;bA:6=Z0n_jZ5kh<21McI4@bL8;`m=6
3DoEI9Bnj0nP=YjDKoJIn<9A@W5Q1ocnW_pc^S^S<aI6^D]SM=mOo`P6>>]d3a_@
ie5M=]UYSYJ\iccW[h<0DkU0LTob]EZ3?Iq\^9O09Fa_0UeCg56DJoMDehe<iWG5
CGf_XLaa5KDIGU5gTEg0SPcYUUaeIN3J^`K\M0V=8=L_0UeCg56DJoMDehe<IacW
X94<GEHJh8nb>m3qeM4[;C@gG449A[=bK>AC0=Y3SJnPF\L5?690SU2ONWBG7cHi
>SnZK_T9H^LS<8b1eJ?WHT39mLg92_TcdSb2;=YoSJnPF\L5?62V9Gfc1eaTaX41
PPUQLapQi1b[j?Kf;TThlJN>hNOh31NMLaked:5ima2\YcUiA<E>cJ1:C>Kc2i>l
dN6Zi\N31]l6S8E[E^?4C@KP4Nok^FnIZ]Ne7P2[S>Wdf]5<B`gd1m::C>KcX@;7
dX_83L63k7C:QATOjjkCaqUOH`C6K?4D9]A38D`Q>1LI=c=OXHgVM819HT8n`C99
DQSJmADR^`<YRAPX`R[[4<Yc>DcLK44D9]A38D`Q>1LI=c=O`bMK3]USc_[O@^ef
BHpV:mVc<0]MFL<M6mdc^NJ@L@DgQ]Z_QqI92Z^L^=06n@M2?CMXo^4V?20Uiik2
EcCb?8\3XPBiW3nlbS6kPS1j;3]cFMB<pK]W6]jQnK]d:Benn:Gq0?21Zg;pk3^P
k70_[Y9if[KPYZdM3lqNcGT`n^XTg<7SE55HK7qaXcKbN_b03A;cMmenG?IHFiRW
<5VY;cfB@<3;RQ@6;K@YiJ9Z6edS\bQIX<bbdLYWAh\Y8T5qXAJgf5Aq\O;a:UM?
M_Q>Lh[]E=2f\`6f\OY0HHkJqO9;biQo84TMRKWn=BngPInh\<2;3[WNFJ3O4\<A
3olgoI5FcgIWSNnY00XGQ9oP@NZU[K@o;4TMRKWn=BngPInh\<2jh^Z7dTJ4^J5V
al:g:qdFHmQIN_Cd[I:Tg<L\ST[AIaF8ORQnCg?RBe=a6SeVqEeMD5Q]Z46S_`gm
NbifV1BUaMDIH3GT@OL2m[agGh_J:m4iU6ncoSim?GDb4h0dmEN3DljW;46S_`gm
NbifV1BUaMcc>N?=WT_Zo9MCMLQARqiJHn_oM5XLPme?hXDoYbR::^Yo71o]0S>Y
B4k\X]2_[fiP98?4iIOcA9JL:6h6Gl;cIGgin4O\:Ye?hXQP0:_=:5T:J;=fi50Z
4]3LLfQL^FqnPT?ibY=I[W8Pb_J3OIOm[J;T7_>Y4>L;]kT7FKY_ec:CQXUVkRi9
I;1Bc3hE2gWQdEPO8Y=I[W8Pb_J3OIOm[J;T7mN\=4b5VD2^YOeGP`jpdZJ59EU_
CE^hhCP79]<BDENl>Qk>pTJ[AeLZ::ed9adUfqH=4ln>jqmm8;0h=__Rjk?g>bVX
p[1n[oYe@AEJW[]2=IGqNJ[=BQ_Zp>H_4RLbb:X6VI:5VdiF0:=TaE]SfZnkTRkB
Pa@^0di2\an2:aF0acXFo?OOSWFYebTlPoabX:X6VI:5VdiF0:=TaE]SfZnkTRkB
Pa@^0di2\an2:aF0acXFo?OOSWFYebTlPoabX:X6VI:5VdiF0:=TaE]SfZnkTRkB
Pa@^0di2\an2:aF0acXFo?OOSWFYebBM4aiX^5;R;4F7?BR8jq0PYHjTD;;l=Sj3
b9:J_dhA=9O_UdKcdJL9k3b`\lf>eDb:GiSMkiLn:lhLMHd9V30@>E_:D9;l=Sj3
b9:J_dhAn9OQaaJhdJfYkaYmQk6IhCb:GiSMkiLn:lhLMHd9V30@>E_:D9;l=Sj3
b9:J_dhA=9O_UdKcdJL9k3b`\lf>eDb:GiSMkiLn:lhLMHd9V30Nbn_:meK3GK<l
W^DRC<ph34R[=k]MHh_P83be>2imj=TA\BY:DBihbDAcV?dfJ2\e4NP3^dD^gbJT
B`coA?gh@fZZdkEMHh_Ph:bSCBRnjfFA\9UBOBLNG9TUV4_QJ_C`HE=Qe44VgbJT
B`coA?gh@fZZdkEMHh_P83be>2imj=TA\BY:DBihbDAcV?dfJ2\e4NP3^dD^gbJT
B`coA?ghiOXZ[5;V_iQ9S3=fQ9cpofo[gU8LGWA2\X5;>Wmm]PDdH5N88K8hV]TE
UR<R^0Vc9P6j_gL[IjOQMQJ1@\[VWRGQIB8=GWA2\X5;>Wmm]PDdH5N88K8hV]TE
UR<R^0Vc9P6j_gL[IjOQMQJ1@\[VWRGQIB8=GWA2\X5;>Wmm]PDdH5N88K8hV]TE
UR<R^0Vc9P6j_gL[IjOQMQJ1@\[VW7C[h9l3ch`>[W_lN;YcpP8OKYSMFTTgnZiB
?m?ROX6VXf2AceNq[efdPmF]f0LLX=N[dNp]_ZkT<X[qXjBEPijhmfk3a4p]dU>A
6<j1]31N`DLIblJWW=Zm[QlRn4]YGN?3:QFUgnQF1P_@:QEVEZ22iiY4K?U76kIC
?jn7N94GT<Dm]bNc`?W9g`KhfmF[Vk;kdNLQ\n9c8ZYCam[FK0Ql1[68XA?EI\W7
C?^dJ?haRl^pb3Eg8eYQD@TcdIcejYg]iiA=Q0J<DAfgCm8=Kf`:gVeQk6jg8Y4=
88lpJ06K=bNR7iQE2?oBDX35RHKGJ84Sc1`;AIHJ^OqHTT3ekN8=L$
`endprotected
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
$display ("-------------------------------------------------------------------");
$display ("                         Congratulations!                          ");
$display ("                  You have passed all patterns!                    ");
$display ("                 Your execution cycles = %5d cycles                ", total_latency);
$display ("                    Your clock period = %.1f ns                    ", CYCLE);
$display ("                    Your total latency = %.1f ns                   ", total_latency*CYCLE);
$display ("-------------------------------------------------------------------");    
$finish;	
end endtask

endmodule


