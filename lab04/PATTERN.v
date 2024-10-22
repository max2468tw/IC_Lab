`ifdef RTL
	`timescale 1ns/10ps
	`include "ALU.v"  
	`define CYCLE_TIME 5 
`endif
`ifdef GATE
	`timescale 1ns/1ps
	`include "ALU_SYN.v"
	`define CYCLE_TIME 5
`endif

module PATTERN(
	// Output signals
	clk,
	rst_n,
	in_valid,
	mode,
	in_number,
	// Input signals
	out_valid,
	out_number
);

output reg clk;
output reg rst_n;
output reg in_valid;
output reg [1:0] mode;
output reg signed[4:0]in_number;

input out_valid;
input signed[6:0] out_number;

`protected
jIj=@SQd5DT^<GXlWoHnm`MLj_j^<e3[a@O_BP]8T<BY>YV;_hipReB=FR]]4>5O
VCLGeLA]9aAX[;8ZQgT85>KODTJ4:emB;Nqc]hXkcm45@L=1W1OaOo2;^LRcd<H3
b`B90hR]2W9Jb`[lBqJRO1Fbpb>Jhh`pBeTcYf9>nH=YYKFk_^2oG[`0oW5?YW9i
W;dLpFX:k]k7ffZhon:c`\f9P=[A7ZT_V]DGqV;d55Kg0gOm<GeeaEGX>W_22qb:
adnZXYM1oS@8JLMI1WeD42:\AE5`\1YoSc5I3l;1DcT\bJaM]6ComD3So:K\T@kn
:EpV@bHX3O5K:a9Ek61\5naGHD6nR18lfn;nUZb[9pjC;SOU`4lajj[lfF0>Ccc0
NBT_l8[?LIS`;4<AAdlm1>c^?g3TCpHc4@@b36Th?a33aMdV9l00;q4c?d4L=jG0
2:akIj7>Gm<H>25LCfn]\@7?OiK<d0]kpH8bhaBZ?JA9o5;`JYKHXBRZW=nSN?Fk
4JMGo^mI3Y@d_C@\TjHDgH]I\MmqO[X?^WGB4HXZ0LH]7mY1d@=k6[H=D34qW[gA
ZmXP;5:l:^Q>@`I4q62Vl<N[Da<:C9<JiYlIfDB\O]EYA\b6RmM_ch4^D?P4omLV
pR`RK@<:LkoXFa^U7WM?XYDnq_BH][WciI9q`00@I6kbc3DEV:3B:hmQE5<BpF7A
;KTham=@RdhA>E[Q3KnWMAhK^mh=^ni<Vl:]H:V5Xek5YQB5pkU[5GJj`V]ZhNi<
>P@d2e3IH`]YZpVJH9Hi9EB@i_eK_n3Z37G<_fA;3SpPShLDRki<oZ62_g^YbY?0
haQ6]c@bQL94LhqZUDGa2nNeH2V?8WkV;1<2GPTLUocaSpFXFDQ_OZnA:W0B\:Pk
L^000p=c@djRqD2N2bV_l9^5O<D0K]kj`H2_Eq4EVODJ;e<46;AP?oTZM:KO;3AV
eOlCB:TfOS;7B?Nlfe`LXI4fiONg_q=X0[ZT]XbVP9^KdoGd<BMWh1=WnYV3gNp8
QYVL0qV@=DVNHD3U;=h_l@cOE<Fje5T>>K\1G6heeYgc@f5;>58<L`I:_iW>K8Oj
]b4SR6K8E^=HdT_PG@GZRYdgmJ\mJ7JFRbgHhZT1oX6@G2gWfkZ3SCXEE5G@fWpD
h1H8F5A]]bkEOGB`=aIlOl1:oKWZi0YNZ1d>EO;4@M8O]dg4MoMdBM:<SARGo[8R
RSWZ_g>Zo^\<h0H\KQCfW4LBC?Ch]hl5b8\:3J_Q]e^T8bV?haN=gK4?FbqmmeA?
mo8`X;ZDALe35Ec8BAjeiBbNoh\iPO^:Za1<SGE0ZU;q8jRd?BqTeiL6d438kNc>
J]hCam;3bQCX`F1BXeP>4ZN=:jX48AhdikK>E;5QIjgIj`NU]qoOHCZ>p_KJ3oP:
PLn1[`W8DmF=XWlCMmVC?SXUMgR]5\;MLmcL6gAQ9JfGje_Vm2MPaZgmWOLDbof:
1L11S`W8DmF=XWlCMV[0NVbTpP85E8c6h7V`VQ5ab1fM><S1j<RhcA@AO2_McHb=
;EG5=K_2cRY1IV2qkl<[h`=:qhe1_Gh=J^V=LU5Jnhe=4HgWPUh7fV8\J=fP;8kg
o^WBi_WikA\[DR4?mC;VoW2LdkMo>qY4HNAR`eO;29WZYikX`mpEd26eaHkIR5V4
dI2C@kJZL3EY9OMq>BdjK[3T8W@UGQh4i3F?SUVqDk:24OnomRARWOLcP>E]Z9X<
?jmm;`=iKWq\_VD4[]^GjL2@M5aV>1<U>IX1PmhLR6F8Gmcf>aTYMkNkQ<0S;32U
;GKGRc;CfTh6TLfa6MRZo:0AjOHHXRa_86hMEfLnIoEMYjclX5Dm1p7Tea8T05pS
BIiIFo6;Qd8UY;]@W5JT\RYUQgEZb0fWDQedEXW?m:OS9SOb]BcE3fD52bpcEZi:
aO0[TfRD;TDicYRab1f<1D:oILj9Ko3HL_:E=\ghFOS?dBP=`TOXPqLQABZ7=HVk
Hd:@3cPjHd]58:A<gHFiN^Sl94]AFGeA63X36;9a<M^8^HRU>f@>c2?Cqneo]9RR
M[:1W4T6BfDAapUgd2^o\2qjTobeK_XD0jC7P<HE35lQ1gXN^[7qH@]KbGh3G^I_
a7l8Z0l<0JB1I3BMpE4T6UWl;EP>_]XD;Xf2H6C;=PR`Q=6n6g>hpE35OT?Y[<04
J7C8aF2S5A_24cWp4JTMflj9pe>ahmD7QTb=YI9p6Uk:;KJ9gX0OMiPFFES6M@nj
FmoOBaR@q<5I3V;HNSTaL5jZE7d>PdmH<SB2qd4ZK\>YpBg[HFVqM?5WGXhAS`Ih
SM:?2L>qW8fFUDgq^5EaUm3b[09NVB_L0j2nL0oEqO1KJaVnbS52eUAq2JJ4DKS\
qOWkim^2En?n@1OI]=A<B2Wq]MUUB;a<VfO>S^?ikeRN2BdZ7]@lXHG^0LEU8`Q?
J13gGfapWNMf`;m;m<hO0cc^0n=djhhoJM7]2XNloQeMC]G4]8CCF03p2;D?llDX
=Vb[g7H64ZT;LI]nLcCQ9_2ZJ@_jOdc7OF[?i5o5Halaad:PQ6q:BBV]Bq_YHA\0
Ynq;N?OGkOq4Jk;L0pnBL6Eg@_28_`g8d`Q[DBOf`RRk@qZ@j8ljfpkb0V4Xh8<O
j0]?aTLdJc[?gEM:LB`bqe;f?L0hqofSi30mS^5kiOXOD5ZNb8ZVh[496@>ZCV17
1Q27C0a\dO[ZgaknBZIpbieIE=q6R9PiXJ:I07nL1?TSKR^FfWjO=@p:ILbIa0q8
d8\Se8jQ;kb\^EX\G2k2JFFTT_c`O;T8DN;6SP_XFnpkI9>Ph^1p>3`0GS=E^9>E
`=K2M4a^`N>ldo:d4[fpIXmO1<iSc4G:^82?CVaWNLnUDbQ57ke9@I70:KPZgl\9
N1l<K>`nHQcX`Z2N^ABIHUBgZJi:c4G:^UOXiE;OaUGUn?O?:I:p6:BLV22OK<Pk
U0nQ2^bio[QbH9jWK?mQ=W28]2`a=9:2H0<jlfB2j7\k3XN4bIZa6a>C[lWGK<Pk
N85YJ;iGb5[]T@j?A`_qB5SS[bF9\YHTR?HKZPkC0R:W@JS?E>b@9I3O6V9`BNAi
Bmd<SR2a2K3=LhGdib7WBJJUGe2F\CJ=;X7BN^;<nZ1ZB^7Gq>Jin]UY_Y7]1N[=
ahgm4D@AfhK1:k]4m>oK0H^2?11Y3W9c=P68LTdB0HlcoYmBMGTef`;YmY7]1N\?
]]3EPo0?5O^;\jFSq5KQfGiIYO9_;`U>_6RpHMBCBbF2qdTh9a:SpJmmnbbpGP5W
gIqncd^AOC:4A`Bnh42_JQVo<9A9c4LCMXK<7mISX1B0cgV^XNjdKfq=Cm_:6pgS
eFHApMjGm4oV]b:]@jFXI]3Tp3PQWUV1qGSPTjCdo_bGGNN;HnLC@TSV0fTob153
a:3;JiLjI?7g?^6D:Ee20;4:o>H=6Wi62]1hqjWDgS@1Xqo08R_4fJ90i:Q>LSaL
fER8TCFcTNlk\E6?qLTlBaV4`Hh0ALA]]`e9iHklq9DSA2IE]fRV@<ZbNUDn8^6E
YXKHgC\=qlRadOQMZpFJ1<h7UbJ=B6>1=n>IMIQ`S<neT1P^^Lb4p6`5^0WjcpdA
THb5`kR4T7Wl@NdG`lEdef0H9<Oh1:mfoY[Xj0LU7@pIOngegkm9@0LcXFma[Ib<
0>qW_8UF7MfqOA=2Za9p6UHQbVq:1@bF<p02Y\j7pJkNSBn;KVYeBG5>qIFfJ_RO
hD]cOL?ggAemEVNNQe:Z2?OKMm`[D17qcOdGHoaTfhJG0e\fb^@D1bRh>WADcHkP
]S[p:JPUa6IpKh^Qb29WYg6>m4Ra>]>pPJ>ThIR``F6;@4Oh6IW;Y2:8A>IcTWia
5Ccg\A8\Cl8_M\ifNc_CSGAamAjgBiTKpBJkoJ`iSFOgbSeHp\VA8jSQXoN_X6S<
BFHXh5jDNU?KRgDRij;V98f^=naS>QHYK4YZK2F8YT=Jhl\53K6TC?_QUoN_X6S<
BFHXh5jDNU?KRgDRij;V98f^=naS>QHYK4YZK2F8YT=Jhl\53K6TC?_QUoN_X6S<
BFHXh5jDNU?KRgDRij;V98f^=naS>QHYK4YZK2F8YT=Jhl\53KfQ=l=5EY\2PFWI
l4[0XqfOj_ACaD<>4FA^gP4@MIQ@DQddC2GO]9FMBni4Kei^SfS7=Yjal[^0<^7g
N;E;fYfMYP:Ra1<>4FA^gP4@MIQ@DQdBZNFlI^2Hgf8oKEi^SfS7=Yjal[^0<^7g
N;E;fYfMYP:Ra1<>4FA^gP4@MIQ@DQddC2GO]9FMBni4Kei^SfS7=Yjal[^0<^7g
N;E;fYf^g::TK<\`RcaL0]SPDJqKdVMXS?H__B[a4:DMDY;BT40IENfdf5^_34GQ
SJYbN]fnkeXn]UOS6aXg?lPO4oTgK>5biI\bNAE4^lP1?7QB:0;Gm\ad:5^So4T?
E1ag64_n]5HbQR:<6P`6JlNY:^DKKNX;9X6^NZQ@E:ZMDY;BT40IENfdf5^_34GQ
SJYbN]fnkeXn]UOS6aXg?Oc\4^lKOS>;aOHCaFXGn43QF:Up:L`kHi53=Mmo?:<T
QGd6^<X@ORdcm@gIlbYJAkZ`<[5QAgAjHdHCqkgh`^?gbGf18AMc<[]4;GWge_8J
]1^A0N26DETQY@8ABJ_ZXBHFbO@OYF>JcSaOI;Y[XHFg2Gf18AMc<[]4;GWge_8J
]1^A0N26DETQY@8ABJ_ZXBHFbO@OYF>JcSaOI;Y[XHFg2Gf18AMc<[]4;GWge_8J
]1^A0N26DETQY@8ABJ_ZXBHFbO@OYF>JcSaOI;_QW0_HgjUda9V29VYi2qICnLN\
Mp\:ClX[pP`PR=<09>No52j4Mgiq=TE2QadCq0KmeGCCeHhbXTUDD73[A;nlhjC<
cj3ZdS5pI3bj4=4WiJDK7H17NTTVEK<:mAPpF44Wg^iDBBp8=MV\Np`l_E5]:AkT
fO\k<NP\;iX50;BBi9T=5QGNJKD?LCgJ9Ci7d[h75dLgEj:6X3SX:nIbp12H8mW8
X\@O2=aCE_QRNdeKqEN>F8meph;HXCOi?1KgXlGd1kE0[EaZg7Za?DXok0D^BSg[
KLf\IK4Ii:;W<9f85@ah0qi>=8P8:PVYA:^8DAd>ID7G9S1L5`9U]PQEWbdh2:]9
Zi_he37i0T17pfOISLULh2i9Q@aOB[EL]_CUmCUgo8GDmA_UDqHdNH:WjBqK;4Ge
?WT?[4;CjR`I7i0399o6=k1QL9VWX7jHH46Wm16eCOhLJfSZ^Gn9g`:TV1SLCP>m
MWT?[d\I3kCOY]NU^DLokN3pY[MRj]8Wd\7<AV>eI6N>hHF_]JQ`_<:[hjNe8_j[
T?UU:WYjbL6L;lRAWPH666HLY5b\K68add;:M8oD``@GK42V]<Q8q^m;D`\6U]NS
U0`MU:eoMdMe\ecSEmP9WPPoSmn2D@B7_e]bA\`mV822[q]<D8kOPh_:]EBko]co
SWW9hRbDRkRbnEDY3e>f`_A3ZTS0T[Hn5c7`j]@Oeec^5O?NoiUjNmQ:Ef7?B0b>
j=d9h3?K1UhX6gECTF0^ZC\Tep]42^k^A:M;K<NULTKL5<?:OEC3M5RmOZhbY2^S
J3i61BCTZ7io1Onh<J4Mc[d>W\nGmnQ?8onBRE1iU;6Yk8C\>R[XWR^P`0>S;Ka5
J7b^1=CTK4X=0SKmFkGfXA^ao\p3S^WVUdBoF:_>__B34<G^E0iF3OP?c535f>LV
5C=E_]N4\5OBD[1b=bPiPkeSRAn98]WdRdgoF;_^67TG08RDm>oZXa`q5h5\\;3U
;iMSZAlgDZn\;Aj]Gg??PmqSIKSCKcTMkBO8Ef?QHpRmYZili9pPcRgB`p9l6KC:
qg`@iJ:pgHTOEHpmbC43E@I;_\ECfFODgE<Z5XfOT^`V0IP>:IgWBp>00`\1qFOM
o=n:q;c^bDZcpNedE3Qp\MfLd6VmAe[X:lOUC[Im?Cf>E]@iYcKTfMLU`:CZf\6`
;ghmM\kY9GbbKgCR9^qMcalnT>PBMUG3\o2mmEFNoQcqj:[dGDZqoA;9RPCTLZfY
fojmkN6YQL6_KF`pDA=]V;1GpDOUTf317`@8D2Jg2iRFOgUccAlnFYdY;c2bjN1O
R6fh_3nB_4H<OG>NSUoLTnObjRJmVND1K`@8D2l4N0GkPcRE;<j54YPAp;C2K<LM
@ck_HNc^G60VW[I5V796no\;A84?hC_iP6^D4h0g>\gRFO7HT?e1Tef^b;Bgecf[
?ck_HFFi^F?HeB:O3TTXQ_51qQNY7;RfjaJQT7=oEIlZD==YG8oT`4GgN[aa54J0
eUWnL0H7T6Zc@3P9l1MZNTPSaEdNHaAelaJQT]Jo?L^4aabgiY9jE3ooqjfcZ;H2
MdGO@Gg2H_M_V58;_5a1@QKW<m68B3O2GFVW`=\R23n7Yj=8_[0O4\F<<lQ\K^m2
EdGO@GfXK\89ZDYAY5^3_CQWpPgU32fgFAh9XAF2kMI7S`3ioP`\3L:Gl[P>ma7?
OFgEnmlD^h`dq8O8^GWg\Okj6[?Jj8nqA<0lD>E7qdciHZ\1q2^6WcmmpF9KHAIq
lg[3V1A<`c=DAZcm^Mk6Pkn]Ok6pBR7Z[2M4b4ILT=UCp9@PZ5>`p>jfS4>;9=l]
gD^XCg=N35_i:\IEldSLkX8VXp1QbE@V2Iq?XDXE:<de==AlV>nB4GW5RPQqKJl[
MYgfaCC:`@ab`SX0GXfpkf7BMf9CFZ8NleIo5W9peU6@9cB9UDIOlH3llJ7OqCAo
o\iJTqHTWDEmlp@F[kV7VqNcNlD2p6jS4>KkE4cGfF483>KhZ7aILKf5I\HP^mi\
^p^VI[N=0L7W49S1UA>EIf`0iaE96D?^q3kI3N@ZqhEnZCa8KOacTOg4hB[c@RA\
qOVD=:?6ZTB`^mb7m3M^cZnfe]3bOq9hidhL54En0S^^GC5BCKoTOF[cTj:=bqm9
][i?Zlh]MB@NK;LkL_E8I<o6J_p;nbE8Wd^Hg0XfG;pXSNGmYf?9L58634SfkIeb
7EiJJV<e2[EYHRi?H6nPk`^R:35Jo:N6D`Dj3_FCkT;DOalf]f99L58634SfkIeb
7EiJJV<e2[EYHRi?H6nPk`^R:35Jo:N6D`Dj3_FCkT;DOalf]f99L58634SfkIeb
7EiJJV<e2[EYHRi?H6nPk`^R:35Jo:N6D`Dj3_FCkT;DA7oVX6ScHkhYmVHZiEjp
ILZB>U:QF5lYImHNWVB>GZhW_Y31d9bJ7Ci3ZXa=gDhI6`nCA\ZoBPU`O1;6D2=W
IQ]ZkW:DF5lYImHNWVB>GZhWP6Ka^bJX@><B^Xa?gDhI6`nCA\ZoBPU`O1;6D2=W
IQ]ZkW:DF5lYImHNWVB>GZhW_Y31d9bJ7Ci3ZXa=gDhI6`nCA\ZoBPU`O1;6D2=W
I7OHk2Ibb<AbQJggj6Pkq]`kcN5>2XG:g>n`A:<nI:cnPZ8OH^hUUWZ6a`Vh`gjL
JW`6Ve8m?RA0fQb_q6c[0]ol]79@T\^89WPPb9EKc0M[T=Y_<DY<Q]PfVOMn^3^[
a0ojCN6\72B`PZ\G<6?[2j5<lh9@7\4YS:PMIaG_b0HFALYoZ]8eQNT1jOm1NadE
[L:PMf6^HPd`bZ\G<6ALVdbl<79@T\^89WPPb9EKc0M[T=Y_<DY<Q]PfVOMn^3^[
a0ojCN6\72B`PZ\G<6oSad3WJSETBf0]d<gYJq0kRQ0I>I28[18\;Bf6=<hEYFU7
WQHB1oX[:QO;;bbdl_\;gk7<FkGX9>8=<2B@akYbdF6i>V28[18\;Bf6=<hEYFU7
WQHB1oX[:QO;;bbdl_\;gk7<FkGX9>8=<2B@akYbdF6i>V28[18\;Bf6=<hEYFU7
WQHB1oX[:QO;;bbdl_\;gk7<FkGX9>8=<2B@akY\@:8Wdg<ei0nZD^nK<iqk:M>A
IpVTXMZmQeQ>i3Vg[8I8aE]J4O5=6Cq1HM@Sg\7O>WKSW9e:op3YILMDgepWAYE=
lGH90MY?@[VU=im^5cjIXcEh\h7nD]OMIN>oC9p`ni=;[eB;n^2mDm3PWP=qYod^
_R@Vqe`Y^@f\F1Vn0Oa[1LYF`JcJ:^N23398T:T@LoMdN009LHeLn\>HB90fSV:G
qW7lEk>XMm2q0[MoD2p8Olo88K?IDj5dkN0IAeJAnHKC5ekI]a5S]SBk`_5=JJj<
6V<;Ne3HQ0OXmqj<MgPg=:ccGfN5ePdZ]P3CZWR[i=b0p3kZJILJ7]Wa3K_31Bn`
e\2QjHOnheJ\W0Xefc=RGX6Gon[HlCJLVU9QAkNCeKHD]VTK]8`J2]Wa3K_31Bn`
e\2QjHOnheJ\W0Jgh?2HeI<;PV[HlCJLVU9QAkNCeKHD]VTK]8`J2]Wa3K_31Bn`
e\2QjHOnheJ\W0Jgh6:[>2N8MMm207SK5p0^?02;Nk<?eV?ZVd?oEK;_E]fNfP\L
IEXae_HW?ClhaEoc`PTg2cNJNJ9F05^Rk0HS2T0FNe<?eV?ZVd?oEK;_E]fcN?b_
3YZ7i^I3B>?cfomgd<512GNJNJ9F05^Rk0HS2T0FNe<?eV?ZVd?oEK;_E]fcN?b_
3YZ7i^Wc\[KPTD?1B6;eeApaQmM;Q54PQZ1\DY3=g@`ejL4Ghb?QZ;?[b^42gHH7
e?8J4]j:dK5kZKJ8V0QZ_\O4[c7eh5gPQZ1\DY3=g@`ej6MW;Mog0>OHV:an2Yf_
AF6L@T]D8SW>8KW8V0QZ_\O4[c7eh5gPQZ1\DY3=g@`ej6MW;Mog0>OHV:aDP\W@
0;Q2UCQFHZiqSM^jCBDMT\ADMZW_3YL5J>MYod?H\ENPW\CE@=ASR<ml2a1aZV<\
78;30_j2YbmKfG]6U3DgT\ADMZW_3YZ5K9oP=G:Yg5M_OM?G9AlG0B_EiX6RNg0f
;fK<0_j2YbmKfG]6U3DgT\ADMZW_3YZ5K9oP=G:Yg5M_OM?G;mkBDCYiDbU5QjMf
p\ID1fb;>bmYV:eJNk]cnmLnJkBIGbN>GP`^f:SGQJo[?E3[eXlGg=5@:VT==[HV
agYUIX2;abmYV:eJNDDWY@PjG;hGXPo4P:F`<\nFmGhD476Xm]]F11aEbVT==[HV
agYUIX2;abmYV:eJNDDWY@PjG;hGXPo4P:F`<5eH5N;dWFd8Lj\Z=q;0`Pa>8fo6
OmYPJ?WlGSVIEkL100DbNe;@KkMm08SOWhX_NGOLZYkg30E8Hn6MlWBS;::VF[dK
?Ud7g0VA67EOcnRoLiHc36TSG;E6UDBmQ?5[dcNm[@YKWdE8Hn6MlWBS;:FVF[mf
6jYPJ?dN2jmkcARoLiHc36TSG;fl3l1C2VM7>WKAB[pcYD5::V33XE@jN5h=O`<<
gd0_][OZ@ihL?h3gSjaJ3X8>M?ACS@bH_Q];9[GE?k2c9Jg;_Lb^9li4LBO=O`<<
gd0_][OR1AT3W]:oVS5@:W0Yl>50JS4TlmP<g@]W4d?X9Jg;_Lb^9li4LR7jaFX_
H<C0;\CkA1f6XTM;R[D56W8d469U54VpG:W4GWgccLM>@GjPGSGOT0>HGK>07RX7
nX@Q0JiJ=QZV;W8Q9L3m:VVf3V]>ggE1GO1oM>`V3;0DQb;5UTAS?C>NGK>07RX7
nX@Q0OP]Z=4?J^9;B54aU2DP>aL5PgE=GO1oM[7=e?aAD`@dGSGOT[F^HGCDabZg
M20V@@NTJdLPljW3;YQlpOG<0<KdD`8SWkDYK?YB0DHI^6Q_O9DW00]RIWgTF3X3
U2DQXKD_dX6ql9^P1KaLc4GeffcZ=WdQBEkOVl=oa5VYPG2VG;^:9o_`BTEVLM5L
h0\X[elUVJ0cdN4_GgaLc4GefmJQDR>N6GTK5N:Hn9VlFU20G;^:9o_`B?O@BKkf
3Ql[TFM4ZhXflU79^2EjE>S0U756=WdQBEkOQR:D?4ZALmo<HVo10cD[g6`7X07`
pVLNLJDddlC][SCAO;LAIh2aabA?1_`jTn2kj>L@kS7GJ;4>g4cYPQF>mkY?[V;V
;m6f>`cdYlC][SCYVGMQ3Hl7Li^@38LRF[i^[^=06<TGK;4>g4ALCHF>OL62Yg9n
MVDlm@g7U@PiNg5AT;LAIh2aabA4D8LRF[i^[^aMRK[eRMiRY=G_Fqf:Fc?L7YPg
jd>@k9<NCX8B>`LOcQ:njP_P<STa4e22S1l46dcHNSB?Bg6MWM>6_JA;VUIX7OPg
jd>@4@AWSCmJfXJlbl[_SfUEMQo]L;j7Lm34GgQc00Q^EHO8HBUMdSf\?gK0j>:C
N:oESl<NCX8B>`LOcQ7_S2UEMQ=G?UEbSL<@KeKE<npmUS@?0XX5YWJLB6GR^Y4]
8?55jDH<\B9@1?b>9Z]FURiWh90PnDknT@D]1;413SSQJ=2_MXXiYWJLB6GjXLjL
l3lTePJgAT2:G6KCXX1fhn:fJAmm7`\nT@D]1;4`JNPm>S<>]m[@KXD@d<l\^Y4]
8?55jDH<6T::G6KKSbJiAo]NWkj1RBmqAecQ@10i3;@S>Y[=K2`Y_FRUmUHIaLaM
mbT_LcjUZiDmRJQGdT@Zd4=0f^ANmDlXW=[@G90o3;@S>Y[=KcRIKXF<]DIc:aQo
@NKnF3@8?f;5d0=ocnM`Ck=6f^ANmc?:A??2:gnWge:Vbi@g=41:_FRUmUHIaHiM
@NKnfWITGCH6XB9a4hBEp_6n5O=:;nHC?P5P]id:Q3Hg6e4`_EF<J;1XV<3dS:VQ
MJC?Cc64ZXKY]?Y11;o[[9C0C85:;nHC?P5P]id:Q3FV00LZTa9FO_1X]4JI;Ih0
kL@HKN9SPIWLclh11;3O4_VV_Ik[LchULMCDcB<>?o<g3e4`_EF\EKmUjFd[nCeL
5<]?^;l?FqXUonKdUk5h:4a8RT:Ufm\CPAMj0NJSIHX_>hM1Pk^Z]VdhIl4A@`B6
VKPJIPUnMDL8Uh0WUR5h:4a8RT:Ufm\CGAFIoK8SI:[SRAB9Po^Z]V=SAiia=n=_
[CCS;1TdC[X6l_PB^3b0m<TH1P11@R8Pl@Oj0NJS2<eY_DEk@EeWZM445fEAJopJ
G`hBoL>RSS2fS`B4dj_YXQX1i><IeJ5@GUH\;ROAPdXaY]CoH1c_\KEW31[HgEF5
UldXTLNRSS2fSZL4dj_YXhXA\N>iHQV1o4\>;ROAPdXaml[\SN>i5J1F50hgBj>J
YDXELhUY<eC8^FJPgTgUC[`4i>NIH?\HGUH_LI66LmNPMdAi5aTqcfkRZa\G5B6_
IijE05cp^Dl@c4F@V8>]5;cI6V\\oI8]7W5TH2LMOH0OTm\jGXafI:Lj;@bd?TGh
SMjLIS5^T1GZi=FL?8>]5;cI6V\\o<<:8ZiWoC\V8OY_Tm\jGXafI:LjiKACQjLS
XJhc4i5eiWZf>TeTjhDTKWSKS8K[5o8]7W5ToClVOH]_5fJ4lYAen]Cj80NNpod6
K[gKU?XIZhN3]R27TQEGCP0_`bRm7^hWn9NQfhV\YI1R^9]=c@8RJPbgYZ3LB3<1
4c3KZ?XIZhN3]R27Td5JWfB_kPc<XL>nE9NQfhV\YI1R^9]CAjQoPj6ajZ3LB3YF
i\E;MSA2c59BTl56f\ZGWP0]CPAme^h72;H2`c_ZImZo794e3p9LkP<`]?lf\CZ]
6X0cScA;kkojO1eFRhHi2eO_>?OGm[oZDgiG`Bf7\PX;0MT6IhCV2_C<]Elf\CZ]
6X0c>D6j_QWj1e2cG\iYS0Nh>?OGm[oZDgiG`BLLgYg;0FT6IhCVg?1g0n_:^j>j
68XHOHA;kke[]1eFRhHi2eBdO4Z?3N7EhOJGRUqb3KRFBVY@RI9cIR7H80jB83Sb
Q4f9a0lJi^^=1oHNSRJkWiELWW5;I:IQRT;OJiMmc5F``F=GeI0cIR7FWI]ASFIb
QDHP:]=50gS:IdUMSR1kWiELWW5eL7KQRT;OJiMmc5FU`0GcQCmP[UlIY0LB8?68
G4c9a0lJi^^L^lR_o?9m^A]UHO4qDKi\R:XSP80HJ=1hm[<_=nHj\OJ>f1?Y2Kc;
_jSJNbFP4mMRog\S4=>Ang8O<_EMl@^3HZFW[@QKj@4W7Q0ncf`o\OJ>gQ7MB;A0
ReGg1n=bCmMCo``EI=>Wng8O<_EMI`L;3M@c[@QKj@cWm[<_b?`=\OJ>f1?Y2Kc;
Hf@NPiSD0DY0mVXVpn2hLX1c?X:AIVPNnMF@=ieLbM@L_`XDEg:DX21kccFJE\7Y
GlTMa=J8VMiNk;4h]1d36=2ELTWD1igNnMF@=imm3M@L_`01n>>^W5TeKhG4HF2>
kNR9;QJ8fMiNk;4h]g`2VfjMjTWD1iWHDb[k4keL8M@L_`XDEg:DXEl^`X1RO794
f`_DAqId9^6=]`nUE3ZGmUBQ39C[Fbk07GnQhLSFPfc3`aL>BAPJD^BlOSoMCU>K
;hC6a^`2La76J^p6[24ZdVoTn2Yb_e\aJ43?D8>d>8dj8VNbZ_H_4[djehM8PQnH
\DJ<=g@Mejc6W;iLRZhn[b=Y2gHl7eEaJ43[3n\j>8=j8aN[\:Ffacm7B7gdZP0=
NFm<=g@Mejc6W;iLg0FPHVjm2gDl7AGKL@O?D8>j>8=j8VNbZ_H@4o0;7nZF^Lco
W:7qVOJkBlEN8I293O:AZZ:kCUV?GZ:H:WLD;OjY;YganI;2AK;n_FXk[g_J0Qh1
]Hc9lO3CRGRmFQ>D[O:AZZF:CUV?oZ:N:WLD;OnA35\0<NNhmLHa_FXk[g_J0Qh1
]Hc9lO3CiKEK8e>=[O@aBe:mCUV?oZ:N:WLD;OjYm1DMVYF18UZ7L7i=p<7e[b;0
8\oh44cDhXkAnQG^njahJ6mOhDN1GcQ2]^I4g9NBNkmZH7=SPY:]4^8^o0MKj59U
:mhjJ4cIO0LAFQG^njahJ6mOhDN1GcQ2]^I4g9NBNkmZH7=SPY:]4^8^o0MKj590
C\G@\4cfh=kAQQG^njahJ6mOhDN1G9b3FPIa;W[:AA8MnpAE:HZiW1DkaYS;cE;e
VNC@^UDF=321Xo^E]f;<W@\aLPST7OkYRbc3eTLgYTTjLlAKgP\UdI[_BZC2W1OL
0B?@^KNF@K^9bojXEhLCGJP]BKZ>kR3@h`_J5:n^5TS=Y>E`6S3`WZDkcYC2W1OL
0B?@^KNF@K^9bojXEhLCGJP]Ko^8L<8:RVHJ5kn^5TS=Y>E`6S3`G62Y]:Og33Sg
;mbAPqGUQ^B__N]i4dm0TBN2:bp1L@ib6Sk>Z5;ASOT`d17SbeNSj70XCTiQUA=K
?<=m<YB6;JlFk06eAa4LF2[[IK2G`9[d[eeCbk@W:XkHd17ST_[n;^6nm;kShc3O
K3Q@k]GKeEnWZAR4ogVQHPb;[816VlT62SL>Z7`ZJ9DHd17ST_[n;^6nm;kSiWc7
g3R@il[]RFU=oc`bogRQHPb;[816VlT62`eifPHOZ8SR@43IOhqk2[nV^E1WJTZ:
SGQY_l;5F\4;9JUQSo@lhTQ_Z;[Eae4_9Ml]c?OSanoHBCdcV:1Fgfe2A^3DdmgF
SkjY_198F9eL5>3LYk2VjiE=eGGEoH9GF6d_WX^@ae35CY;8C=@^c4n1SE:Wo`9D
=N=GCl>kh9RL5>3LYk2V9:WR^1W6foLh9RndJ4@_ehn5CY;8C=@^c4n1SQ:XSKWV
Ak?O1MZSbSp\IO>>ah\SNaBYV?P2jmohKHJEV1;gF[:2U`STbf=2>3EF[T@Oe7EZ
^Fgj2Zego88TNi9eP<\4jVDSA_j@SFTfL7fM\E87NBA<d>E>IO\1OLMn6\O4amW1
G=2;<d]gF\NF1YC?>hG9SU[eA>?Z=>HnNHLfV[MAL@41d__dbf72>3EFhOh`V9fn
lfM>31XLnARTNi9eP<\4SVFSA_j@XZ^fL7fM\E87NBA<9fm>IO\8bOE9df13PT3G
5Pf;<oJRh74Vkn\402jFb:qm9KU>=Y^`6OK@79Tl97Qf2cN0<n=\O2ScZ9Q8g7kL
R^27`mETnf\a:OB:=[TjWCcnWob02S_\^O@?nBCn[@`IRl;<odoGMUQBSS5HULD[
>hUfLdR?J0kQ:ieW1eK<KX7aOKW=_F\2F4V=G>F0IQoc2SZ8<o6D`g?hZd^8g7kL
R^27aJSg82;NZN<\SVSh1KhQ6ZG=3Yk`W9e2PGl`mI2?L]PYod`GMUQBk`m[Rj6e
9KBlNH0VSE<aXhif>qP_OeboYccZS[lkDSf1L1O60l0nUbOFD[R5LdbH@^MjQLYj
6UnZ3Ml3<;Zc3IA?XBb5LPTK^LCiPB^6VTSfDn0DWI0>`VMPCaCb3?^__UR0Ih^b
nac6J2nI\@U@WgJQ5ce0nK8AJTGiPB>8Pg8IK3iThDCYl4:V;K?<@6bH@^MjQLYj
6UnT2e4I:43=ahUo61HeO[>=YTcX:1K19UQVD_:jADS>`RMPCaC?P^hJg69KP7ge
<F_FjIHYenZmq9BM3f_Y[CU4:MICTEWac]LQbkEaffaRJdJVd4eA;io=EGRWZJKl
ebK?S3WDPVB6gJWmD?@G?hl;?Q\9T^3@;_FNGjol8SKRORNo1Q4_AT5W>RlH^_`J
cUfX5QPRPNGf_k;64V\i:dNbj<<76734ZOf40\<k[8^\InNSf4eA;io=EGRWZJKl
e8RGQ@3:`jlXl32lT;GYYCIAi@`0_E;F53Z\8ZolaSKRORT\>j]i;N<W;E5Fje8V
I[nV4jhqgK53mUXaKFPdm02^7<j^VJd6bEikBVUjP2gSh`e>Recfk3=\D0go^V6l
<gLO;2C7Y\4iSg:POIO@jiVhj@c7NeL_M8Vk\5n5MPjL29kI[B[QnY\kP[eO4cnO
A<WXn]\7@=U`FcGY?jBP^ao5<a0c@ThAJnYYO\l6Z64o>`eRRecfk3=\D0go^2_[
AZlKI31aOh4il`WQKUFT9iTe7<iF4@hOP8Vk\5n5MAQOE\__2]LC=YY5PRgb>OhS
=MpfaL>LRYH4_>8[JG\X>6kGoNPA>FZ\8N?ZIaFY23G\3BAc\SNPhf;>ObX5\X7o
i\iHGb8bSfL`]E[VDeA\>6]J^>794OhdVXOiV40WFKJ[Im>;c^Gcme:FBd6_k773
5U:0k]Vi@H3Q0;VVJR>g[[KHM[:C@j]4XIL3``M2Rlo\3BAc\SNPhf;>oI8e8n:7
6A2N=YTi7hGCfIUSG3mX:^l;iej94OhdVXOiVR:P9E0a9dL]HPEbl98Ma2a]6pV_
GQIGVA7]YN:ZWC0<R]WbYp70OIL`LgBLFUEgYZDIb_4FckVJX1;lg[[9bAL[2cLE
m8bFnbDR_=iZAnc1b1>eAHoUNdbk]hBG@8:jTaRIb_4FK:>l?<eWjYP7jc4hha6M
fX8b7P:RhjePHI6K<][3MP:DQ338<X^i8D0BMh@d<j4MU`m5VF^C>\8889SJ87NE
mKbFnbDR_=i_nnX_[S;;aM4M9C[MRhI]PFPmT<DIlL1Ia3>l?<eWjYP7jc44bZjW
GZ:LfB;GgBeG?3=WqnZnb8hRAeDSa;?BKQj21Eg<SGgkBiJ2Cm^Q=GmTOPSi;9LO
Z>PU7kXK\0RKleHS=d1dnc7XIB5O[K260Hj2hEg<SjGIY_<Qlo\G\=T6J3c:kEPC
7NPhXC[S1odHAN8KR<RKhP?>]lM<FiF3U<;K;AkhZaTckV@eB\Pi=P@BW3_LBDQO
Z>PU7k76INj;VEd[@_TdMgOJceDlCY26HH7;nTH?DjGIY_<Qlo\G\=T6JL;iMGkk
hVKlUSFFfIgpaEBVAZDO?>NW;j[E3VQB^ofHF^[5K:f@h6g^MQDU\mK>VFToPU?3
d7`hcMa9:\DNoO8G^DRdE^Chgj[E31U>37KU_6S`i:BDfc?<ebjGGAJ284@TdS1A
W6SkUlXoDlDXYdQkD^@IRVJGnLBcneJ;GAKlgf\D9jaWN`??MQDU\mK>V<=PoNcQ
D7`\cMa9k6_;8Y_LcM;m06WV?8A<MjcSM;Aq0iN18GB1cU<aE]FQDV1fj\bdRA7R
NFj<;4XU>4\g0l9DjaaVKoM5M8NUenBBkkOe08DL1JIVWUZXSdUFa2b;EeWMK;GH
3ijf?gQGeJhEa:=;SjAGa73e:F7Ke5idAS=H\m1gJ;;BdWZZS]FcfN8gB^Yk^MnN
J1nh;e1k>4\g0l9Dj]5CT33cM<ZUMQ807lH\C3iW:QJE:FZ>LNIi]<ZmMBmqK7gk
CCHJbm1GEU\oe=gIDI?`A\34F78iIMR^lmhhELk_8c2nWH9c@4i\9E1deEaAK8lf
BKHUbm1GEjQIL`MP_J?`@=T^LCmFI[7TT7hQZ6dm?R1h\M6;0SEK8m`=moX1<A;l
0:Y3m0B\c748h`Vk>Oj_RX6Gmf3N2[RalmhhELh_7U[AW;V3H;_P95^:6VDNJ8lf
BKNc=A6I<I9eZ4bWFSepImANWTWkOL0B?@95H3JL\DbfjXEhLCGJP]Ko^03\kL4D
`edQd>?6[A6=7]W63`WZDkcYC2W1OL0B?@^KNF@K^9bojCLC7]lUP]Ko`gT3ShOO
2P:G^:>0;Xk4Gd4dMnalV;9=[jIh[7S=Of39ffUEbHie^4]In6^;P]Ko^j3H3@aS
cedQdm56S=Y>E`6S3`WZDkcYC2gLen6^n7dId[\6K1oq\gWce;\3<3Y6N\j8QPdo
fYjk6Wo>AB2dW4JLX6\?=`\1?d9@<Pj?jCH[blfUC6`_Y1EjU4\T<3Y6N\j8SPUm
Vh6>6W;<61clW4JLgR948QJ<mH<34EojoG;Qn`FT76N;i;>XFNmam`Y\K4CC_WmE
@bHN\<AdPB2dW4JLgR\g;O[Y?d2T9PjIjCH[blfUC6`_Y1EjU4RT41_j773LNl`Q
Ai\p:;LeM^6VG^XCO;UT?9a:`R?^h_FG7V3<Q\0Wb1:i6mgLTdI6XmWNqd_<\VGX
`YLl3@TeH6g:J7@14iT]9:fhnNfm;?Pn^e`LJSokBK?YA0QJN\_MTciYO5LBOZjX
3YLl3@TeH6gNJ6I1\;>94eEh5YfJgFmX4TdL<SokBK?YA0QJN\_MTciYO5LBOZj_
3Z]8USQef6gAJM:G3>CX^:fhnYfJg_h5ERB<8mE6?hMd?q92FFHWcB;ge:E5bLfB
<k:KBf8?LGHQ90=KO;daL7GF?P2hoC373KWHL_E9?WH_J_2ddJVcc@;Wbc<5dem^
M\^_Bf8?k8=]fRNi5H8CO_GF?P2hoC373KWHL_E9?WH_J_2ddJPee<Iof:c5b3fB
<kBMZJ9NFC@]fENi5Hb^`Z1kAhE8]em[^np84jk1[`M>3Q0:n;LhfSnBLOmWZPFK
WlK1?Fod>d2c]CTaRhA18AThKM91=VcRAK8WXEgIX:RW<kERcGgD4VK\OnThcED5
boFMci:<CBU:gZIDSkAXISYOSPZlmf56fd^WXEgkd`9>3Q0:n;LhfSnBLh0?9<iM
ck;A`ZoKXD4aR^ToRh\18AThKM91=VcRAK8WXEgkd^88Jk6YVWm=T6V_SAq:e@`i
IGVUAdak`gY<?n?B[LS6H3kY0NgB2EH8`dZZ_fGf2R9nXm@p`@5illa87F6JR_RX
[6=aFnga\<Wl4DdXjHZm@i847J==kY6IXcfIA\OH9f1?G2Kj\LJOE1n2P;KI8HIo
dbRL;BVTfilRQ7ofMU3>j`Ho>Sb69;6B[agMdR<iW7Qm^BN^\_jPdNaF7F6JR_RX
[6=aFnga\<_K7I`:>UJYS[@QXU=@kY6IXcfIA\OH9f1?G2Kj\_jPdNZ6D2VfcKS5
nAIMOYYqL<5_CQN`@`aR5^BNha8nHgJSTdI3]n;`bLc?Bi]>N;eFo;_Hd]^_eVL@
VS6>3GV\gf3Ph`2]oKW@=g1^3G>m^g^b5]1k?\mh02EF<_><3_PDnDCnNgi3BXmM
BAG6=cES>h9dO0NY@`aR5^BNha8nHgJSTdI3]\0U;LcbBA5j3;eb\\jbkN^3eVL@
VS6>3GV\gh9=O05Y2;nC>QiV<P<nT07phDm4iH7oPhInPmMY[S1e]_oJl@TPk\>b
Q04jRT2=[bUgdo[@e1mWI4^1i9eo@_R2M[4:6^nS]Gbbj7;g\CN<QENaJEZlQ9je
=0o?jR]@<_O[GRm6F75Si:16^T>i[G8mU7XTeM7MPhInPmMY[S1e]_oJl@ZRTVFI
HV[0RT2=jC_8NS=bR3[ZJ;Q0i9eo@_R2M7X^eM6n=nma=^dYikIWMdZq2mQd15``
K5]JfD5J0faWZJ>B9;n`Y4FTJ?h8H<P=JVC?X>31D?kSniJB=he2H\N00<DYFjN7
iAm^abJ6Ojc5`MkBnJHeY4FTJ?h8oPeMPV^X\j7:`4R:kKVKZh<;USJ3_C[bIYX8
EF`ORDm9OGcoU[ef\`>D;hgEIgakhRm<eOYWi5fQITjjXS\JV[47dk7I2V@4fUTZ
`a]@fD5J0faWZJ>B9;n`Y4FTJ?h8oRmge=n>P4TL\cOSFN:>imp7hV?ZEZWSN^K7
WAe:K_TRQ1Q>l9X_?TWn32oZ7?SmX3Zm64\akTMS@WYX0S`Im1eXgEALI=NfBbBl
@I?d>XVXm:kogMH<dTDn32oZd;J_8I`W\>;6GT]S4`PQ>l=3jKXnQK7E4:[0\b@l
;5<\hG?RQ1Q>II<O69TN7X<=[LYld_KTOj>OkGM1Ne3>><<IO1cLam\WXiB;j=;[
6jUf4BPW2FEogMHmeo4<TI``Z1F_8]>Dae6T67KNg9Y2VbkB3R=YB7M6LZLSN^KR
0]6[QCP?QQo0F<lpeJ61gEfMh42ZYAN@Fi1>8@f<@MOM3JhLjbZ2he]ILA@FGS>R
;gF;JYWHWBf^jSEXIHSYK5Rn<kU^NWAO]PaO6eU0]f_:5Uh^jbZ2h;Q<F^KK1fA8
DSoXW8FS;B?E2d8NU@\d:nTb29CVV;D]APXj8@f<@M3L7:^<;Zi<_<ofnT_n55^H
;BF;JYWHWBf^jSEXI4W1h;CMY\maPEFk_ehB\]4<7HQaMjII0DXab2<BF^8KAYme
Z\G_aoElZ7gkEI59hbIB;`f0h42Z:nPEM0SSJ\TZKbTMpXCYdmG;BUDX;^LfG`@1
@^e4S@NA;e;11?fAGI33PHLUWZXZ;[_OICHKkc]c]AdLhF<oA4;`V@c]4d>9e86U
eNg>HCBoPNd86e<74B<d5B??n@18YAeLG]lF5@kPB6E6b2ZY@5]IEH;@PK=V:dYU
Jke42@N_;g5@9M9jmoEHYQG[_0D65F;;nLh_\Vk22Sd896ik;8Ic3`^<Xk7iQ7aQ
hLe4M@NA;Kd@bF0_OHYdbB@>M7U?341eHIX0k3OVaC41IjX^VXR;YUDX;^F\UPX]
=KVBWNoWdpmmMb5eeR<l2N]j1`ODdCbMRToT6?IZEg23=^mFe0dbV00gEKhfGf8k
5UjEV;X>UUFjLCPf35>U\g^4UMa^XZLgQ<7oHWldDk8YnT?>_Y=<keS_P:<C]U88
5G@X<C4V9mU7LA_<5`O8MFdKL=f6H@BkQP7;bTg0G`92kn^Cemdb?C0YGO<ClWe:
UXcLVABVQHXOSYnWfnlUVVL4IKaH?Ld19aG;0YldDk8YnT?>_YZj2ZagE1hPQcS[
M69XbCe`BQ2Q7[Tken<l2N]j1`ODdCbMRToT6?IAIgj<3VE\:_ZohBL6pF[[2ccP
2\VU63FEA\ELZhK5VMfDaY0f[\ZJD=9;@[Y4C_P>NkL>\\bMh4cjVV`\?FHO4YV7
1]?ScnK<4d4j3G<FQhXZMHj5MT6W`KP`Tg;70WZUVFLANoeOjZiNbDOS]AlQ67aG
aVYDIUGBNPef?c<Sd7@P>S_3BinMbDnJi<L`>GIgaP3KiKPViMX>H@ZSeFHO4@>7
:\VU63FEA\ELZhK5VMfDaY0f[\ZJD=9;@[Y6K[nWmcc3hPW4;3IapceJQ@6Q10Si
n1ko;MN?chc;0lML?f>^9`NZZQ;ESL6HqdcZ]knXhXg:Lm21IjcFOg\7C3lT9L=J
[;MiNW;4SIg`ggbVe?TkFG0`^mGCPK\aQI[QfkA0518TiicQ0d:[F7m6ePP\0YQ@
>L1=EP?HiF^J:=PUFkY=6eVPE1AIlHboZ`WdM\FJ_[9TlE@N8fW_S3h<D7CF3=0o
5SnFWR2P4cn>P`=2_?TWggigIXMF>hiK4Rf@7N`X[Xg:Lm21IjcFOg\7C3lT9L=J
[;MiNW;4SI<cXU_5k2[e`=j6QGXqk5m``l845_KH5e[fH8b\XO7YEIZAS9CR_X0K
9lf>FR;Mg<K6gnYFN7F[X[9VF?i1cJGI:=f[DEmKgH;?JZ>\JOP1U8`hn2MdMfaT
CXH03\2Xe8NC1OCXPT?3HN0X>cjcm?A18E\AlnJbg?_2bocdU]h`l2>?JLe\L=50
c4^7W2_57JO7gnYFdJg1UF:;le9]TD55J58k5_KH5e[fH8b\XO7YEIZAS9CR_X0K
9lf>F7VdmcjPV4CHB`b\C6qlRMGEkLoM8Vk\5n5MAQOE\__22gfNM`VUGXa5cnfA
<WXn]:7`ihgPbC[RmJ]0:Vc`^@NeSX\el35=`kUbXCA^giCSDK]8j8XnFeGPR`k4
1nd3NB@khH2S]XoKUFTDAo<iaL2VjnU^]2_>`3WShQ@CTHl;G3DQH]GfieW4dC^Y
GAO]he;gih9PI6k32AnhiTd7McFNeL_M8Vk\5n5MAQOE\__22gfNM`VUGXa5cnfA
_RMP=<keZgl@XE7:QpX58^]Ij^XSeoLPfCVU[[FEmKEL`1K5]JfD5J0faWZJ>B9;
n`Y`giI>aXL>`gbMg<cjKM`\b9N:\ZV700?1JI_C[bI:XUEF`OXZnV^j9S;Q0h[[
W>c5K]I?h3oRmg@Am[Z;:3XVlK1W:Qc70`?>mN@kg5ckTfZU@CG:j1GFIUQ@An2@
>Vi2TCB8hfoRmgeOYWi5fQITjjXSeoLPfCVU[[FEmKEL`1K5]JfD5J0faWZPLhJK
Lldl_`?@F6dhpC9l@B;MC1EH3mShGE=BY>cMP03nH_2dPj0oMBegIN1`VWSa?E;Z
g=k9H_7=APnFmY]Iia`bHda:0Y?F?iGbnYiVGZj:M=T=E9hgfWJmj>lP0@X[:l46
:PlWQ:FT``S\POUaB7`8c:cS4m?Fdi`FbVK2XO]33Gi9_:D2aYTAlgM`>WSa?EGk
[RlWN:FT`moIa_ALO4eMH1EH3mShGE=BY>cMP03nH_2dPj0oMBegINTSjYoRAn?1
j4<TSfopGb1<loA6>WDm1019XJBMcZkVOMFA0HiSK;^6351XNmSWXZmYd@abfJ9X
=YhXTf<<X22M?^>VlgH;4QgUOYkJMB1=[SY@3ThLS27;@^]N:\B>D;@3CQ<IT8g6
OmnIBbY5_NC285>GB=YPgWgMOYeiC[]ZN9lihFE[OljiYnXEm;XaXZmYdIm:TUgE
OmnIBleYJBdI;ZAW>WDm1019XJBMcZkVOMFA0HiSK;^6351XN<@<Z5JhKCMfCO3h
fWqEAUTOO:U91bkQ?RgMcJ`3CUR`O<:D@NcokhlVmolbO116U`cY7lIhkR[Hi`:C
Z]Em0\<`c6F_AjU^XNP18l@ZZ2:AhP^OQKShT=OkHboeNn=e<BhFl=1R>91k_J:>
l9@m0>T>0lOSbeM2XNm18L@1Kh`5SK<R>>O7]d]l?9nP36:6U`cY7A2XD^Ok_J:D
\@\6NaWVh:L91bkQ?RgMcJ`3CUR`O<:D@NcokhlVmolbh=ohHo]V_^n8Kk457pgH
_K?DN0l;_:HTPo1_;LQlg@MhV[?9X03lcZ8d@eR?E3hcMBh7WX1C2A?eNYWa`5];
0ciOT=]=I_o^LLFco`LET7jm;WZ\G476FRNDF4\1`ojZGT4fiDV]S]UjB\2cR\6f
XQX7gm5;_KHTPo1_;LQlg@MhV[?9X03lcZ8d@eR?E3hcMBh7AX9Y8c`=<`_3:S^i
FED>>cA5RhVlHN2Ud4WhXpo7ZATQN@0RLFEMP@Y9AZ7Q]O_?;G=2C^Cj;3]c@`\S
pfoSE5?l7n[@>3FE0ZnW]e5FS@C]_nM;ShNZl<iONoC8Y>1I1cRogV>D`X<jHMDO
8mJ`60^`Jo;9G;ojd14gZg`=7j2g=ESQ3OKHkGmXkLXH2D^00F9`jLOHQbELMdbm
naW@3VNgPS[@13FE0ZnW]e5FS@C]_nM;ShNZl<iONoC8Y>1I1cRog^]S?OTgEoSV
mX3dYbAlj3;CE?N`LHcHEngLpOT<Vj:UU0bECaIQUmHM:Y\\\Le=[IWER0E<9:^c
a3jYRc7kWSCgM<jm3lM9>A`V5NmP?5YWH???o^^hVXN=QX9X7[C4<FbEcBAagcdo
D_Na[]F9fS0Rll3PclM`Z^Fb=OkllA0F8SbEeaIQUmHM:Y\\\Le=[IWER0E<9:^c
a3jYRc7kWSCgM<oPR3Ul63a27j9\3m>RZcEX]Z7BY\mCT^^_qI\cl0@0kEM]QASh
d1:8YWT3XMQ[K?5jMj]5h9GaIP[`[L[hjj[6V7KaSE8O3Yc>Vb`faF0?;ebO9O@H
7meHdPAVG4]OIHaDHFhTZ`a:ETAP6<2>WSoHmPiMaE8b25^^SYhT]6;0<EM]QASh
d1:8YWT3XMQ[K?5jMj]5h9GaIP[`[L[hjj[6V7KWbRP^VJbCZYhT]6;k2\>^`84A
VO2Qe3l4qAc?0EQ=WZBUR94KAQH]Wj>1<Do]a[SAG6TWVUm605IR;I9]]B;mN?Nc
a3a4J6AjNQicE:@=J6Eg0GhB2gS<PlkEA=?3X[`g;]kX`=bE8Sg\jH6XlF>8HlDc
Kcje`\8_b5;h^2P=eZBUR94KAQH]Wj>1<Do]a[SAG6TWVUm605IR;I9]]B;mN?Nj
Fcje`\8_b5;h^2PB2fEl@@`Q7b3fR0`ZqJ[5SP2YCjD_TN>nY5FiBYAe=?hlCYWi
3R?W;8ZE^R6KA4cV5=k;ENRoW=7`EKRj:J>L[ZhDZKEoQKGn55FiBYAe=?hlCYWi
3R?W;8ZE^R6KA4cV5=k;ENRoWfRcj:53\3E90@oYBjD_TN>nY5FiBYAe=?hlCYWi
3R?W;fO222GkEb;N^UMZcpU1JA_\U=f:261njeReGhUfB>VYQ9jgAf?IZZ5AJh1a
f5^kCBW>2V2VH@1NbbUjInDo_kU<UJf:261njeReGhUfB>VYQ9jgAf?IZZ5AJh1a
f5^kCBW>2V2VH@1MPKg<HBDo_kU<UJf:261njeReGhUfB>VYQ9jgAf?IZZm^WQd`
@P7aNmjXf8qWI3okRSdGMQXA1lY9@Mh@b\bZf785BPJ;4nQV_M5cKbZ5clo[mUmm
=f6CZIE6C>2PD1cK2S2GMQXA1lY9@Mh@b\bZf785BPJ;4nQV_M5cKbZ5clo[mUmm
=f6CZIE6C>2PD1cK2S2GMQXA1lY9@Mh@b\bZf785BPJ;4nQCn;TG@OZ1L0L3dT=p
^dd5HhdC=8N@loI5Gl_?=>:U65g9M0\nIk<HOlEld58?NHMhYD2M4odk4KPMl9kA
_9`WC@dU=8N@loI5Gl_?=>:U65g9M0\nIk<HOlEld58?NHMhYD2M4odk4KPMl9kA
_9`WC@dU=8N@loI5Gl_?=>:U65g9M0\nIk<H3=4HMF0Ee[V6Ve\K<^pcmV`UO4A:
?\05Voo7niCW4XGhU0EbK55RIbHm>J^ghPi6NDMAJ^DpmcPUSnSHUEEa[Z`K`_7c
^^9NZa]T1<[3X@W@e3_8`Ll_:n0>HCeo@[Sfg:i:STOjd8<=?ZB]]EE\[Z`K`_7c
^^0NA[VCX;[3X@W@e3_8`Ll_:n0>HCeoFYe79VVQM@19mnKf?:SGUEEaLU`ZoY`2
4QUD5MS5O`qmZSXX[]@?j92jf[H`YC77NIJHKaL^];hnWH4nhegkJh\kl^@aPB01
E;joj\NbIhSJAlU_h]=nc_g4fTVj<C77NSJXe4^Pa;GnWH4nhegkJh\lHo3T>TNU
S;IoOgNVIUZmT8TSK]m?j928U[SWo:L=3]=oYRAQ`q\E[2FkCC>gIkjF[RY3Z=O`
F=AM<X=5HHJ850ia7_GHFd@hHW6DDGGGNmbBaRV09]S1`nEaFIlC4imEl\MX2cOi
1:gBkY=OAZM]5oia7_GHFdPe=N2UDSGGNmbBaRV0=O\11g6^NHld4ihFnZG3Z=O`
F=AM<X=B`WJ86P7MZPWG]5\P6q?BWeCh8iN^<9M;bbIcF1U9aTcYJS8Ui<=h9[AO
aRd[7\@cT@7gc`S[RVZ=f]I=RgYPmJd]8cN^<9M;bbIcF1U9aTcYJS8Ui<=h9[AO
aRd[7\@cT@7gc`S[RVZ=f]I=RgYPmJd]8cN^<9M;bbIcF1U9aTcYJS8Ui<=h9[19
8o56M\lNolHUD?@Mp^eg<G\P5=k]C3M3TPDJ>QoBejcA6nFL`4cWG2BkT]bo2mnj
R35<MhK>a:SU>7Zq@L\X]<H>BoB?X>0CgQp]X4Mh_;?W1p`nn7c1pBAH\7GTQKCL
WUSel?8qPPYE8_bd;1TJFSZYQ0Y?H1A;jUDUUEL1AW_RLnlRmLK22ILL:JOUi\Ck
N_2FR7\:d3`U:0bj;1TJFSZYQ0Y?H1A;jUDUUEL1AW_RLnlRmLK22ILL:JOUi\Ck
N_2FR7\:d3`U:0bj;1TJFSZYQ0Y?H1A;jUDUUEL1AW_RLnlRmLK22ILL:JOUi\Ck
N_2FR7\:d?4L;=T=>dREkWk0VdqR6g0[U:^C;3@hd@=8IjCIRN<PG5]JOYE;]?:Y
jY>1kRCnh8:S3RbD]4e6T=>_;N1=9f]4N:^C;3@hd@=8IjCIRN<PG5]JOYE;]?:Y
jY>1kac<g=]b8BThe\WL<1E_;N1=9f]4N:^C;3@hd@=8IjCIRN<PG5]JOYE;]?:Y
jY>1kRCnh8:S3RbD]4e6T=>_;N1=C:\:i[6<9H2mQG`C1qm7g[acWYn?k^IY>Emk
:m6ch3\ZB4fV?JW;M?HLAHhCOeJ0cEG>aMAo1TdbVDMEo@cF8RAOYJF:oE>ZQbHZ
:K6ch3\ZB4fV?JWM0>laPe_VV]15aI_XUBhha7ailkeQo`^JRo8MWUn?k^IY>Emk
:m6ch3\ZB4fV?JW;M?HLAHhCOeJ0cEG>aMAo1TdbhVaL1j^D_?R7X6K14^=7diJS
q76\ZjKGDTP63_;?WlgMghV9\9XZLlc5kd@4S?ES\cMUI7A:PY89c=7_<co>^5XC
c7gj3UFlc1BF0?ZQEHOC@6i2lO0C51E@FS7SVI4W`lRU<7A:PY89c=<fg3:9W`XC
c7_Ec;_G_TP63_;?WlgMghV9\9XZLlc5kd@4S?ES\cMUI7A:PY89c=<fg3:X7iFd
W>>RU5R]WlHiUUd^7fgq@0IG\:DiL97UD^<EDAmWk@h;Jd0AY_P\MLUn8nT?NUU`
hJ\H2745EEN1D:86HDUkkhh1L=D9L97UD^<EDAS_@nU7<mc?B>MSILUA8nT?NUU`
hJ\H2IlfcmXfAQ=]HDV;<HeC1ZD1L97UD^<EDAmWk@h;Jd0AY_P\MLUn8nT?NUU`
hJ\H2IlfcmXfAQ=]HDUkk\XM^4me8Wi>LI<@bcp@]72joPBSn8bTWiGk=pNYge8n
6]52?P]W4R47@d21J<@8Fn>Uk9I7oAcE423=IQF5>@ReE1FFJoiFMeT9iG>f2ZWI
6l52?P]W4R47@d21J<@8Fn>Uk9I7oAcE423=IQFE`XcQ4V14JTiFMeT9iG>f_af1
O;52?P]W4R47@d21J<@8Fn>Uk9I7oAcE423=IQFE`XcQ4V14JTiFMeT9iG>Pi6NO
Xg1i]]bVJ1E5qL768Sd7VYKG?8HNd;VYK=6R`2U;nHk87JZHH=_>lK^nDT9hHC<Y
mMLce7UhJE=BlYjmj5X7YYKG?8HNd;VYK=6R`2U;nHk87JZHH=_>lKS3<9;IRc;Y
EMLce7UhJE=BlYjmjFTXI]KGm8HNd;VYK=6R`2U;nHk87JZHH=_>lKS3<9;IRc;Y
EMLce7UhJE=BlYRBC@Q[e\>C8j<NMe^qBS^4lRD1GPcRL3RT]<Kb9=V>n2b1=UmR
EW[:@Rf9ICKZUOc_W:5Ql>6mi7UmOLiLcJI:[8DEGPcRL3RTD`9YQR;dn2b1=UXh
Uj@e@hJWKZ\F<i2UW85[l>6mi7UmOLiLcJI:`f;K3Pc0L3RT]<Kb9=V>n2b1=UmR
E[mW3JJhKZ\F<i2UW:5Ql>6mi7UmOLiLcG<kCYEf=?LCP_UdBcpj>d8540;Pnf2:
Z<GW6ejQkSacIAgCZ9_KC^`Yn6?[W=IJ4UiaHT7:hQPLdCQCEK0BLFO_c0aPnf2m
bCP];4OGV_mcEVJBQ9ZKjENYVY:22<FJNKHb`Nhe^BKLdCQCEK0BEkbX8LLeef^:
Z<GW6ejQkSacEVJBCadPcaM1b[hk2<gJ4UiaHT7:hQPLdCQCEK0BVAb59^27^0G7
^>X32pHO`7jS7KP@?6E=Mak1nYe\l:;aUkNOQMVJO0jI\SDfNeR>L<Q10^L]D_bL
idjI<CHWklb^7OP@Gac`E[k1nYiT;@j[::^W5LlBOe?gn8Q9NHR>@hO101:EHOPL
Y8H\UR]OUH00EQ2X?cE=Mak1nY^?M9j[::\GUSUBOejI\SDfNeR>L<Q10^L]D_bL
YHH\UR]a\nR5ZZaCnWZZVbblq7VCo<HXAT7hlA_5QF;YB>\0>MC`:0TG<<nT94go
W9S:k4o;KDCW\j>R0Ifc119QV5=MSakANT78@UMi:8JJYB\c>HC`G8WUgfnTU>Qd
63A:UcPh7V6l\]>[YSfX?HaoCglSCMZbQ@Vh5A_5QF18WC?loZC`I0TG<<nT94go
W9S:k4o;KDCNnfXR3IfX3HaoCgPP`;khm?f5F9o=9Q>q>OfGf@alFRTVhC8SYKk9
K_5H5[HTGOX[CgEdSSS;>TMH`OlEB3gZ<kd9S1I8R4SKL0ZSVa\9GRTVhD4h[KWm
E8meJ[HMQW^X8gEdiG1iQa3hC5cLo9FA0RghS1N_hN`94KH<L]SQ4dT`hIJ\6m5R
YH5@5[HTGOX[CgEdSSS;>T_NCN9SB9FL0RghS1N_hN`94Ic<boNKgH<Jm08jY>p6
4<F:b\oj>db4nl`_kG^]JUDTX;GOGgZ`I9_18GTh];Lc^CFi?KSaQM272RKePXC6
i5FDL_DU>db\Il\_GGFf[Bh@X;GO0l5HUBldNa24]=ih^7Jh2W7B>^J72RKCJn^\
KGM4]kdN@d0cHkCGXGB]JUDTX;GOGgZ`I9_18GTh]^b;J<al2WBVL^S72RKCJn^\
6?nf0n@_PldGI[QUdp0lBWaLLKdAQbH5FDhNd]H]MmlI\@;]jP8FFIOYSMJ`?=2m
hHjU\R0LT=3GbfG@]N0SEDQj8TNjP=H5FDDZdk_T77TI\@;]j9H_[m6mS\J`?=6M
<1EU\R0XC]3GbfG;OKUM=IQP7gNhPo[cKVWNdeH]MmlI\@;]jP8FFIOYSMJ`?=2m
^Hc?X^L=>G3GbfG;OKUOhB`S=n2RjQ5i15>]p=\j`8PNYXj?LD2I7>oQ=J3bG>OE
J0b82X;PdFKqhiRVJA6[oYVAOUNaX<3=FN\oASP@6VhfI6W2WAB0>W4LMgRF68b_
=?S6fn]TQ4kGhLDh[n6WOY1?dU4eV<3=FN\oASP@6VhfI6W2WAB0>W4LMgRF6;i_
I=llfn]TQjCgFblNGCO`iT1mdU4eV<3=FN\oASP@6VhfI6W2WAB0>W4LMgRF6;O_
I=llfn]TQjCgFVU40N1iDd88GfUCbCq_]S`4nn8LTj;\SbW7ILIdb2Y9A>KDAkQd
<m8\3H;EB=5>Zbc=\Ze09ZbnG9l1HGD:giijkn;LcVfHPX;7ILIdb2Y9A>KDAkQd
<m8\3H;EB=5>Zbc=\j3;5>5lG9l1iJT=HDILH=aLcVfHPX;7ILIdb2Y9A>KDAkQd
<m8\3H;EB=5>Zbc=\j3;5>5lG9l1iJT=>60I:SKX_X6]0KJC4qQkc7C=h\2B09MX
=POG_[O2NObP@MaFgEihC1HFkoI0^FQe5G24hV1d6KflZTQ^?6KdQ`=eh8B;A7OX
=POG[;@2NObP@MaFgEihC1HFkoI0^FY65>24hV1HfIglZPQ9M9Q@n6UihSB;A7OX
=POG_[O2NObP@MaFgEihC1HFkoI0^FY65>24hV1HfIglZPQ^?6K8kP^o:mOTmk=J
EC:Cq9cgQ?=g`97RGB@VUhV5[IZ?n_^1Y3j[7@h4k\lMgYH6OO\2;g:;oJ[:`K07
A@laQnhlk\Hg4=R`maA_DcPCi`L@G=gHXTKRTAh4c\lMgYHSJVNFPY:;mJ[:`K0`
ACRG[92cc\Hg4=R`m9@VjhV5[IZ?n_^1Y3j[7@h4k\lMgYHSJVNFPY:;mJ[:`K07
A@laQnX@W6GJ?b]l:0Tba62pPXaGDd`kU>aIMD^Tk_J:D\@\6NaWVh:L91bkQ^Ib
acJ`P\d\AO<2D@NcokhlVmolbO116Ulb5>2QhkR[6m@iieHL2P5d`o`e2lFa0m7Q
@Ml1ZZ2:AhP^lF<Bk>3D:fIjbO116U`cY7A2XD^Ok_J:D\@\6NaWVh:L91bkQ?Rg
McJ`3CUR`O<:D@NcokhlVmolbh=ohHo]V_^n8K_4b0qka]6G5\^Km[6gc>L6j_QW
jOGeFRhHi2eN@9f`6h[3OJKka0bXLgYg;0FT6IhCV2_C<]En]6@T[WH0c>D6j_QW
jOGeFRhHi2eNB\W@09>3VT>0L_l4;TDS8LoXEilCV2_C<]Elf\CZ]6X0c>D6j_QW
jOGeFRhHi2eN@9f1ZNg]@Jeka0bXLgYg;0FT6IhCV2_CJaPAlk;lo?Jlg`oJSqCo
U7B8RR?WW<]h_nQ1AUC:N\DmMTK=A`WcV`aJH139UN`M9\QI0<nhNo\GGJgLhbFS
96@>84?`>QLh__Q1AUC:N\DmMTK=IVJGJDaJH139UN`M9\QI0<nhNo\GGJgLhbHk
8g;ERJH`>0Lh__Q1AUC:N\DmMTK=IVJGJDaJH139UN`M9\QI0<nhNo\GGJgLhbHW
W830>LAeghjNS1`aphZ8lgoa:BT[\4?[f@9KeH7lChhMj\9<eR3h?T4=^U3M_j^V
G^iB8`]cCiVpcX1FTb8d>cPg14mBGkDDb4m:YRY[8e>1gBb11SF]S0Cg6SNP;Xg;
YYLQU^IbZ<JDcg;baQ8X]o3aT4mhGkDDb4m:YRY[8ePgS18\1SF]S0Cg6SNP;Xg;
YYLQU^IbVMoQ;9W;DQ89]o3aT4mhGkDDb4m:YRY[8ePgS18\1SF]S0Cg6SNP;Xg;
YYLQU^IbVMoQ;3CnUA?[Y>Dg\cME^>pN1T2[ZV3g1<?AoXkl=Ck2QdCDh:HUSUN8
\jDfB0;C^JY:A]6UDLZ`BNnhGSCOJ@4N2edd9YmF@agATXTl=Ck2QdCDh:HUSUN8
\jDfB0;C^JY:Xo5nDif_]0OjRm]Pc<UJoV7hHV]g:\3ATXTl=Ck2QdCDh:HUSUN8
\jDfB0;C^JY:Xo5nDif_]0OjRm]Pc<UJ]>H]Qa3II_hZY8jX6q@5\LW_TPaUiL_j
l;VFNIB?K[e[T@F4jkM;QP0cLA:1dCaPNb`[^b9i[b]2LQf6]l@41c<e;Q<_i]gj
l?VFNIB?K[e[T@F4jkM;BV4K\g2HDGfC@3klT`JM62<Aj_72W8GY5kQ^TnaUoh6G
lRVFNIB?K[e[T@F4jkM;BV4K\g2HDGfC@3klT`JM62<Aj_72W8GeXQL=nnlg8dDl
G0R^qR;jPH8VXLSne1`=PJA1a0Y[]Ei^XlNW;hT:ne=UXKB1Cjk<9a<J\>7RSQUY
R43L>RJU_dHEo]anm1JVeJA1a0Y[]Ei^Xl[3JLUN8S`KAZH`Mjkhfhj92JGc>Ncm
gUcT57D\:?fV\LomRNT=cJA1a0Y[]Ei^Xl[3JLUN8S`KAZH`Mjkhfhj92JGc>Ncm
gUcT57Xm;I000]fgOm@[X<aq8@<B@@D>=SV<lBaHF1XH;g1Q^c7Xck8@2H;R>g=^
B8[g?UI:V:RmhoGgW?<aBWUIq;]8lPV\M9dDIMCQ@Zog819M^``[9BR5anXa^j>o
ZLYR[dYE=6F_c:VM4S4G4lWiH;Omk4DOHRBD`MCU_6og419M^`Z]9LaY\MAadj>o
ZLYR[H_PZgdO;@m<ok7_c3V9CAR`<F2\e=YKJ@`Q5Zog819M^`Z]9LaY\MAadj>o
ZLYR[H_PZgdO;@m<ok7_c3V9CAod<Td5?GS5Mnjn8hRq2@2UMAnQ6[XR:Bgg\8>N
RfB1RPNNJglmkKamaLKA2;i8eC??1GZ\afHZRCiiDTD22i[Q9]4]3iXUNCF`C8>[
RfB1Rk=dGFD\k0P;kkK[^UAgHo=86HSPn^4^o][g2<=FbM;Oo>nQlj5WTBgg\8>N
Rfi1bk9WcFXXkKamaLKA2;i8G[=\6HSPn^4^o][g2<=Fbck?mnQ<`ejCNZaaOWqN
jXKEJ[Mh=J^QVT1nObOKOGOC2O;fd4@eH`LacG4eb6Kf^M9ha\kc`XJUCTjiPGQN
?bhMXjX4=kMD;RcUVEQ49e8m2O;G8kRPbcm]1WEWD:`f^M9hiP2nZ3QeTiSKX4ZI
8nQJf[FnNA@dVTlne:oW9ecm2O;G8kRPb7m2WG4eU<_XY>I`@`RU?HTeTiSKX4ZI
eb88kCM[8Zi<_4L9:q_eUgClVVb5f[Bg<4eDoHXB`aJdbdG1noCReX>Uf<6M?[7]
MaO2lCIIn=VK]3Fe3U_YVM4_i315O:h2]oMU3Nc]Wmjd0?:_ak2ScKGJHPg7^4kh
hRO2lCIIn=VK]3]B_e4W>GO2V\_1M]4g2VhU38c]`3JFMn176Qo7GGjB<dXVYU@j
gL9?I]C5AMg1a:V^kV4F:XZ\U?[cbjh`SQ:YphbTjUEACR[:HZfieni3LOV]3Ffo
;38HK5Xo=1`IlJ6OBjE0kHhe7cmePgW<nWRK1hK[`YES7c[SUfGgjb13g^kK7Ufo
D38HK5Xo=1`IlJB2e]h@76L=FUjh@?W<nWRK1hK[`Rnokm^S9ff:aIT:C^X]JFeJ
nLgFX5X8XHOmFABcD]h@76L=FOme4F2OAJoK325AYLRZFoMi=70lRHnqTj2nX76f
QBPj9imL]jhMD8@0Te0f`=NkH7@dcd2]\iAPLHA_Q;5<[lLI=@7;Ja@AT^1jeIc6
>k98TTmF]jhM]FlkUe0f`=NkH7@dcd2]\d>HbN3lj@:G`45clcJj26G@Zn12eIc6
JB9bT7^1ko[l>8@WT?IHUd]SI8EPO330UNS3Lc3Wj@:G`45clcJjYN?XdkKR=B:Q
2PDh[NYJC1qeC?11X=hLRDnImhdKUS:f29Wi7EllC^lK:X6YnDUD_^iRQmVaJf?N
D?5JVn@\BX1e>fA2P=eL2QJEDhdKUS:f8\WMfBFlC^lK:X6YnDUD_]iVjRK^PceK
Jo3ehHYKg:GoAT>kfXFA;DLI><]]JJ>lD9hiclR]b6UV4gU5]^UoER2mQ7KfPcAK
Jo3ehHYKg:Go;U>U2WVMUnYaM6fBMpobXn9I6b>i]@_=5Y=Ueb:Tjb8f7V[D47jZ
2^M<fLfUkJEh9cNH]BgOf<AG@@Dh<>oMJ9726g>iV@G[BHLUeb:TFb\]MJo14RjZ
2^M<fLfUkJe@JaMB<k9\7^[DG9ZXQ9b^a`726g;0[__=gY8VkQo3^ihf7gfK7BZh
bh[NaCJl`dO69kZY<D9\7^[DG9ZXQ9b7oHSc\1\d?Z07k=oWp_TDO?@PZf]R70Ub
Xe5^9L31DRT5B^jg;`>2Z9Vk2V`^LNhkJdSb;H]O:qB5a<2;;JJIg\\:=@XFJSUe
V763AT>hic^BMeIN`LDXg6cm7cTKhD_:FPIcNkA1NcM;MhmW;bJIg\\gfl27Xf5e
Vm61bZUak=iYMLIN`LDXg6cm21RjcnKg\[V3l5bL=Wm;MlmW;bJIMgJm=@X?Tj0g
iWLXMe>hicEd7NS1?2;V>kgN5QH1cTKg\[V3l5bL=WmW6G^F7>0SQAbkOIkAp[lf
?43GEF0KEc;3XeoYRY;]5O7omJ6J;7cad0noX8B2TTg[[^4n4Ph_WF[6Ph7IMmiL
?=FG<F0KEc;3X]o_ni1ABI?oMJ0PNM9l]0noX8B2TTg[[^LRRgmPDUWD]37IMmiL
?=FG<F0KEc;Ehe0Y;Y;WYBjjaAWX[7cA?6:7YWS=KlY3l9XRTgmPDUWD]37IMm1H
d_Z9DQ[c72c?nm7qeYjn8hT\=N90Z:Rl=dJebDnW0V8cI5gC96o3\nnmn^M@o`7k
\B?ShPl:oEA`QBl72lIlNYTH=N90Z:Rl=dJemEW]nb>Pf[4FZcal]On8n^M@o`7k
\i<1U;1`JCAeQBl72lIlNYTH=N90Z:Rl=HH<c^nD0V8cI5gC96o3\;Ym49FBCMf8
31<iU;1`JCAeQBl72SO55GP]]n00P9Xf7\p?:`WiWQFdOQkm<hi7_g`V9D9`eO7I
O_=BDCKCXRJog7j9M]7ZkF\R5A9AaWV>oE1YRTV_PQFdOQkm<hi7_g`V9D9R`km2
\5XYKR\`Q6Fog7j9M]7Z]:]aYKRAaWV>oE1YRTV_PQFdOQkm<hi7_g`iiCAOm5iD
O_IBDCKCU0P7Eh@A@YP=D:;aYKRAaWV>oE1Y6Ch`Ea@e]C^:MPOQbpjYP_E<1V3b
6@X;Oh;0GQi`RK3i7OZN84=IYIgOLGc3oXEC^cP54]O4CbXo25=AH1O]U:WZ143b
6@X;Oh;0GQi`RK3i7OZN843Q][iL5IQ?o5EC^cGc_UP2C^Xo25=AH1O]U:WZ143b
6@X;Oh;0GQi?^=Y]3Xl4HR>?YIgOLGcZ0D`YOeWl_NP2C^Xo25=AH1O8MihJ52]`
I7]lF@4HqMQYCd?Ikm;2a<5k@X]ig?k:nS^q_VdMhHCIG>UHoPlIocQSme?V@JaO
ARQW`P0km621ZK>PoIKllmTCZF5ijNnE=L_0R>^TmbC2G>UHoPlIocQSme?V@JaO
ARQW`P0k4ZAUY7>coI?hfV?UOF5bjNnE=L_0R>^TmbC2G>UHoPlIocQSme[Vn6Xi
DMlm[4Td32hEeR?Q^cW_fV?UOF5bjNnE=L_0R[SicV76Gl?1F3WnjPqXecRc;Z0>
F`o91_Wa0d_AXEdIJEK5:B1`IFQe5P9OCV\d\JI[2NRf_m]PCg1gO[8DF1gGWZK>
F`o91_Wa0d_AXEdIJEK5:B1`IFQe5P9OCV\:;]CZ0cSf_m]PCg1gO[8DF1gGWZK>
F`o91_Wa0d_AXEddbUgYMIdj58ageUWWgc7d;]=Z0cSf_m]PCg1gO[8D34gPjdF<
[];I_IX\=pH3S=0[ES]UD0kbC9KcFMg3Vi\<;^=g^;;Y=8e>AEd\\=JNMIXk=2@>
0jb3L@=Fo]W3ZKZdE0]UD0kbC9KcFMg3Vi\<;^=g^;;Y=8e>AEd\\=`0XK_k=N@>
0jb3L@=Fo]W3ZKZdE0]UD0kbC9KcFMg3Vi\f]@iJ1MUG71==]Xg\\>`0XK_k=N@>
0jb3L@=Fo]WC6b^X8:LW5EHQWdU<pYE2BBd1a46O`R:L^kiYIij`0NVXGgeH4^lU
5\USiYV22P5?ELSVIX=aQ_6UU[kJR]JoMCM1@46O`R:L^kiYIij`0NVXGgeH4^lU
5\USiYVPSD?DMmSVHX=aQ_6UU[kJR]JoMCM1@46O`R:L^kiYIij`0NVE7Z28Nc>U
8\USiYVPSD?DMmSVHX=aQ_6UU[kJR]bUX]EfBJMT4TRT1b6qB5bm`PGo4UB5\W4I
K7Lb8ji@LNdR@ELdD34VI?^Z]Y5?ZYhY@QM1^iIk:Z\QiJCl=QM_?1Gn4UB5\W4I
K7Lb8ji@LNdR@ELdD34VI?^Z]Z;V9m3\@QM1^iIk:Z\QiJCl=QM_?1Gn4UB5\W4I
K7Lb8ji@LNdRe^H8@34FI?^Z]Z;V9m3\@QM1^iIk:Z\QiJCl=O5\Wk[@g]X:0FhI
:Cqn=FHXW\XIWZF\Z?P`K659chJE>=0U=2NYYIle_Ud=0S@]ig4lW1OnijD6kCO;
c?;jRDQVP\iIWZF\Z?P`K659chJE>=0U=2NYYIle_Udo@XmZUgelW1OnijD6kCO;
c?;jRDQVP\iIWZF\Z?P`K659chJE>=0Un6Dd5cYe_Udo@XmZUgelW1OnijD6kCO;
c?;jcROj;O8jekN75gDE2p6c[0]oM]j]nRC@NC\j\V?<[0`k_QE7fTEcKB=G8?JM
neY1AgVV]WO:CQEUZWY]]]hU2:aPHlb0@3\^dc[k\Q?<[0`k_QE7fTEcKB=G8?Ag
iRK9A7VV]WO:CQEUZWY]]]hU2:aPMYj]nRC@NC\j\V?<[0`k_QECM4DYEQgG8CAg
iRK9A7VV]WO:CQEUZWY]]]hoS@3d@i>\G^056DJBqc[N_GMX[2HMK0lc]kS=^Z2B
8[90IA^jh:JghKl`9@KcmTbQ=gg[CcA[aV[p0ak74ZUP<>@2Bi;Il=R9fkK6XJTg
;U:ghJiQOPR1h<5eIP<OAKjSS]1L7X=dSeJ2=_Pd=JTJHTX\I=UOT0`5WkKAXJTg
;U:ghJiQOPaP8GIE4P<MAKjSS]1L7X=dSeJ2=_PdL\U;<>@2Bi;Il=R9fkK6XJTg
;^jVjZPTKPaP8GIE4P<MAKjSS]1L7X=dSeJ2==C@<e1QlZOS8fCd;Dp:4693jfjT
CW<9<MTKUhmFJgcAf1X_9OHh@f@9Bc]1::1Tj@CP@b[CI?K=_\1NXKiF2L]C9Q\1
MmJMORP=LmVQ4g;Af1X_9OHh@f@9?iS6VKDTj@CP@b[CI?K=_@NBbIL45X<M;fIT
CW<9<MTKUhmFJgcAf1X_9cT[b6fY?if6VKDTj@CP@b[CI?K=_\1NXKiFPM@haUV3
P5U7d5ASlpa@f`P<4U3BNa<^ji[MQ@m0@`VM@G5E]gIbfG]3_LUXMJjMS>@6cGMo
ZS6\7eYj87aLnghmX96>]Wie>n:mR6e5@hVM@G5E]gIbfG]28RFM6AjMS>@6cGMo
V73eQB5[ngaLa5dc4`3BNa<^ji[MQ@m0@`VM@G5E]geO9fYh8KFM6AjMS>@6cGMo
ZS6\7eYZP:FGO@EB81Wc0BFdH8K?pgeoA7DhIgQU42;aNTSFI0^AY;oD3[L1\M01
[d>gJPG86XD8JiC6HqLPmMRhG^JgLH2HkA<;EV[H`>JLhV9Q1SNC:XH]3liOF3`J
GfWaJK_39]n`MDSdBVLV;2CF0bnC:91Co7?@>oeH`0JLhV9Q1SNC:XHDmaTK=L`J
GfWaJK_3c`Loj`9_BaLV;2CF0bGgLH2HkA<;EV[H`>JLhV9Q1SMdOOWkm^TK=L`J
GfWaJK_39]n`MD2QI3OX>G>ZZ]gfPQTmhGTgqU;f]S=ZYIdfC[W<8_A5OD8XgFXn
0DFFC;92Hlj^>aPh3cM87EnOmK6aKUHA8Oia?Uimo@T=g=c4QTV35mOkdW8XRFXn
0DFFC;92HliF>bnKDcM87EnOmKB^0nFh3Eia>Uimo@T=g=VfF[W<8_A5OD8XgFXn
0DFFC0Aa[I:FWbnKDcM87EnOmK6aKUHA8`F=\;G]SA\X<6YGTdP^bVmq]dX60MI^
Y5_FJ:a_:><1b9VM]Nl2ZM5Y48`k\^T1:UZ]j=N`K?8d^HJKL@W^Cnka]n]f6S6m
Cg?AT\4H_O<\b9VM]Nl2ZM5Y48`k\L`PKX;Ej=N`K?8d^7SI@bNNbnkm]n]f6S6m
Cg1dH:ae:><1b9VM]Nl2ZM5YbMDbXH`hKX;Ej=N`K?8d^HJKL@W^<EVI\GZ9@jV]
=fadOT`H9mpIVU>eOeO@_R2M7X^eM7MPhInPmMY[S1e]_oJl3FhCdRnQ>fca@[k:
C_YNS=b?DmQI4f5FS5g[G8mh94AQC7BPhInPmMY[S1e]_oJl@TPk\>bQ>fca@[k:
?UFdo[@e1mWI4f5FS5g[G8mR9XmeM7MPhInPmMY[S1eZG_ZAZTAk\>bQ>fca@[k:
C_YNS=bR3[ZJO0<Nl\28O\b\Gg1[>p69[V[NNTg3Y9V6UMUSqL=j;0k<VFlDQTPE
UgRVj94fkWR^ClE\VnK]bT3faG]DiGJSYfHcCTjOPBQjOS5^8KGNj?2NaUZQjoXK
OgRVj94fkWR^ClE\VnK]bTlf<mTWAGJSYfHcCTj:Pm`jnSW9YLGNj?2NaUZQjYLE
LgRVj94fkWR^ClE\Vl0h[hnfVmTWAGJSYfHcCTjOPBQjOS5j8c=>81W`^9no9In@
C[6qOGRiLJ47f\gK]6_Fc>O\j_AMjOgiFRNSi2fX@`FiGm`X@JlPa0X>LgGk;0P=
6I7JV2cUmEO44eI]]6_Fc>O\j_AMjORi\GB2YSfDh>mTGmRX@JlPa0X>Lg;oRXRc
clkCOWFHg0]N:^YPjB_:c>O\j_AMjOgiFR`DYSfDk9e:ZNRC@JlPa0X>LgGk;0P=
6I7JV][KUPk=ClY`cC:9`^pgC5H;CAKf[G<a0c\670Q@:c<]1mT7`e]5[LECLJk^
01QMnbH6MbKN2kCdI=?DE<EhEDGP9A0f[G<a0c\670Q@:c<]IARm<OYJcdT1eD>^
01QNBbd6MbKN2kCd=3UY`WXgV]?96hIXIF=M]cG670Q@:c<]1mT7`VYJcdTLe9MH
Ai>FnbW6MbKN2kCdI=?DE<Eh\jhlWDlZ3jddUHbM=qHn3>eL\AkQ;9og_\43O4Ii
fe`O@142gLcPF]kD>TAW0i_mFR68]O?U9B4_MA@o<?JnRXFb\HkQ;9og_\43O4Ii
fe`OOPE>Y9gLFokD>TAW0iVE[T68]O?U9B4=T8\V@CHZC[NPJ3SJ3Xng_i43O4Ii
fe`OiP_iY9gLFokD>T:8Ib2TFf68]O?U9B4_MA@o<?J:HPX76o0lRC>@e<@oq;ol
\i]I8a>hjSjQPQZIn1979Y;i\jUaBD`@dGSGOT0>HGK>0O_fOHLDnO?cRAUOeC9P
hRfI8a>hjSjQPQZIn1979Y;i\m?aQD`@dGSGOT0>H;G=Cb;L7HLDnO?cRAPU4i]k
\F4hMc>h3SjQPQZIn1\T9g97ee?aAD`@dGSGOT0>HG>=Db;L7HLDnO?cRAUOeCR0
L;l8PYgP:AYVi4dpMEV:ZbkNP?BQjZAm3^2dcYO[D2WlGbG@DcAWp[aXYPlYHl8m
\lBX[l01H3L?Z`cJhT[UXZ?agVng5J9=fRSUcR76M\iDBTLS5M\_TFV`c^3Ycl8m
\lBX[l01H3L?Z`cHOYU9L6?agVng5d:O@\_O9k\;:4^D[TLS5M\_TFV`c^3Ycl8m
\lBX[l01H_;b1NN@;T[U^Z?agVng5J9=fRS=Ei\;24^D[TLS5M\_TF:324lAKmA6
I2Bk7h2q6=0bC2]\;XJg[MfDL3\YGeOk>_Y`B85oia7_GHFdPe=N2UDSGGNmbB:@
E=?]=j[doG1c:E^Z]S7U>MfD:feUGeOk>_a`CnYB4>72Ufd00B;ANS[MjUD\ZZFC
d=WOKj[HY09K:`;[]S<4[MfDL3m_AM<X=5HHJ850ia7_GHFdPe=N2U6L:jFaZZbC
HL?VKj[HYbRXm7?M4Ml;_LDi_Kqc2oA[;U:IY0LB8lSWh6_2:]N50gS:IdUMSR1k
WiELWW5;6SX@Z=KJ:WYbN1Hi[2mcQCmP[UlIY0LB8lSWh6_2:]N50gS:IdUMSR1k
WiELWW5;6SX@Z=KJ:WYbN1Hi[2mcQCmP[UlIY0LB8lSWh6_2:]N50gS:IdUMSR1k
WiELWW5;6SX\Z=HJ:WYbN1Hi[2mcoi;I;o9?SV:lJnIi8q[1=VH\1TbmGRe^ShJT
\ZH:9DamYgG;BdX0H454GRldhS\cN68G?hmVCfEmk1A6G7Sf^BWg1DbmGRe^ShJT
\ZH:9Dam?cIk1=5VHo5hBQfPP4\03W5DTEX4`jOmk1A6G7Sf^BWg1DbmGRe^ShJT
V20B9^;GHLa;BdX0H454GRldhS6o3U5DTEX4`jOmk1A6G7S?L0;F^GKGJcd^P2?G
q_0IIdJhQKE_2?Ofl>d2aSL:@BgY=<hg`Bh=f?CTNV46_8:DiMcX;fYI8XECi71]
QT3oifVh]KE_2?Ofl>d2aSL:@BgY=<oSLfHXmnLdWm[9OJB2KPe8TJ9KHXECi71]
QT3oifVh]KE_2?Ofl>d2afHTJ7?DPJ4gkBh=f?CTNZ51FJB2KPe8TJ9KHXECi71]
QTXCbP?4f5NI:nn7?FlpE;:nBLFOU5MVIDlkG4j6?_]6jfPTdQLlJK[h4kiL\^6D
WGTiYc5Y9Mn6?KV>AC009F]a60FhU5MVIDlkG4j6?_]6jfPTdQmadL;>8?f[Q[IA
lK6TEF5g9Mn6?KV>AC009F]a60FhU5MVIDlkG4j6?_E4E\[H9\1E[@R?;IfSQ[IA
lK6TEF5g9Mn6?KV>AC009jH>h\?U8M:5YVGgMhqmX226keM>LC:EZML94Oh9Z?Rd
7D3QaYaA52IY1<pFa6oBfWo>Cf;87NeRa0Nm=^A7Q3=>Q40DT8he279M0WoIo[Bi
Qn0aX`46ki;>:<G0^O4U@WS>Cf;87NeRa0Nm=^A7Q3=>Q40DT8he279M<a:Io[Bi
Qn0aX`46ki;>:<G0^O4U@WS>Cf;87NeRa0Nm=^A7Q==K06kDT8he279M<a:Io[Bi
Qn0aX`46ki;>:<G0TWmoo4SWMkb?6b_1^p:A61GgMq2niC;@mpOS4_@bq7;0_>:U
$
`endprotected
