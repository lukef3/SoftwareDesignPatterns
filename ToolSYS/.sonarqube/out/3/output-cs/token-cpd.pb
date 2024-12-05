™
HC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Program.cs
	namespace 	
ToolSYS
 
. 
Presentation 
{ 
static 

class 
Program 
{ 
[ 	
	STAThread	 
] 
static 
void 
Main 
( 
) 
{ 	
Application 
. 
EnableVisualStyles *
(* +
)+ ,
;, -
Application 
. -
!SetCompatibleTextRenderingDefault 9
(9 :
false: ?
)? @
;@ A
	IToolData 
toolData 
=  
new! $
ToolData% -
(- .
). /
;/ 0
IToolService 
toolService $
=% &
new' *
ToolService+ 6
(6 7
toolData7 ?
)? @
;@ A
	IRateData 
rateData 
=  
new! $
RateData% -
(- .
). /
;/ 0
IRateService 
rateService $
=% &
new' *
RateService+ 6
(6 7
rateData7 ?
)? @
;@ A
ICustomerData 
customerData &
=' (
new) ,
CustomerData- 9
(9 :
): ;
;; <

IValidator 
< 
Customer 
>  
customerValidator! 2
=3 4
new5 8
CustomerValidator9 J
(J K
)K L
;L M
ICustomerService   
customerService   ,
=  - .
new  / 2
CustomerService  3 B
(  B C
customerData  C O
,  O P
customerValidator  Q b
)  b c
;  c d
IAnalysisData"" 
analysisData"" &
=""' (
new"") ,
AnalysisData""- 9
(""9 :
)"": ;
;""; <
IAnalysisService## 
analysisService## ,
=##- .
new##/ 2
AnalysisService##3 B
(##B C
analysisData##C O
)##O P
;##P Q
IUnitOfWork%% 

unitOfWork%% "
=%%# $
new%%% (

UnitOfWork%%) 3
(%%3 4
	DbConnect%%4 =
.%%= >
Oradb%%> C
)%%C D
;%%D E
IRentalService&& 
rentalService&& (
=&&) *
new&&+ .
RentalService&&/ <
(&&< =
rateData&&= E
,&&E F

unitOfWork&&G Q
)&&Q R
;&&R S
IRentalFacade(( 
rentalFacade(( &
=((' (
new(() ,
RentalFacade((- 9
(((9 :
toolService((: E
,((E F
rateService((G R
,((R S
customerService((T c
,((c d
rentalService((e r
)((r s
;((s t
INavigation** 

navigation** "
=**# $
new**% (

Navigation**) 3
(**3 4
toolService**4 ?
,**? @
rateService**A L
,**L M
customerService**N ]
,**] ^
analysisService**_ n
,**n o
rentalService**p }
,**} ~
rentalFacade	** ã
)
**ã å
;
**å ç
Application,, 
.,, 
Run,, 
(,, 
new,, 
FrmMainMenu,,  +
(,,+ ,

navigation,,, 6
),,6 7
),,7 8
;,,8 9
}-- 	
}.. 
}// éó
LC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Nav\NavForm.cs
	namespace 	
ToolSYS
 
. 
Presentation 
. 
Nav "
;" #
public 
class 
NavForm 
: 
Form 
{ 
	protected 
readonly 
INavigation "

Navigation# -
;- .
	protected 
	MenuStrip 

MenuStrip1 "
=# $
new% (
	MenuStrip) 2
(2 3
)3 4
;4 5
	protected 
ToolStripMenuItem "
RatesToolStripMenuItem  6
=7 8
new9 <
ToolStripMenuItem= N
(N O
)O P
;P Q
	protected		 
ToolStripMenuItem		 ,
 SetToolCategoryToolStripMenuItem		  @
=		A B
new		C F
ToolStripMenuItem		G X
(		X Y
)		Y Z
;		Z [
	protected

 
ToolStripMenuItem

 +
UpdateToolRateToolStripMenuItem

  ?
=

@ A
new

B E
ToolStripMenuItem

F W
(

W X
)

X Y
;

Y Z
	protected 
ToolStripMenuItem "
ToolsToolStripMenuItem  6
=7 8
new9 <
ToolStripMenuItem= N
(N O
)O P
;P Q
	protected 
ToolStripMenuItem  
AddToolStripMenuItem  4
=5 6
new7 :
ToolStripMenuItem; L
(L M
)M N
;N O
	protected 
ToolStripMenuItem (
UpdateToolsToolStripMenuItem  <
== >
new? B
ToolStripMenuItemC T
(T U
)U V
;V W
	protected 
ToolStripMenuItem (
RemoveToolsToolStripMenuItem  <
== >
new? B
ToolStripMenuItemC T
(T U
)U V
;V W
	protected 
ToolStripMenuItem &
ViewToolsToolStripMenuItem  :
=; <
new= @
ToolStripMenuItemA R
(R S
)S T
;T U
	protected 
ToolStripMenuItem &
CustomersToolStripMenuItem  :
=; <
new= @
ToolStripMenuItemA R
(R S
)S T
;T U
	protected 
ToolStripMenuItem (
AddCustomerToolStripMenuItem  <
== >
new? B
ToolStripMenuItemC T
(T U
)U V
;V W
	protected 
ToolStripMenuItem +
UpdateCustomerToolStripMenuItem  ?
=@ A
newB E
ToolStripMenuItemF W
(W X
)X Y
;Y Z
	protected 
ToolStripMenuItem *
ViewCustomersToolStripMenuItem  >
=? @
newA D
ToolStripMenuItemE V
(V W
)W X
;X Y
	protected 
ToolStripMenuItem $
RentalsToolStripMenuItem  8
=9 :
new; >
ToolStripMenuItem? P
(P Q
)Q R
;R S
	protected 
ToolStripMenuItem %
RentToolToolStripMenuItem  9
=: ;
new< ?
ToolStripMenuItem@ Q
(Q R
)R S
;S T
	protected 
ToolStripMenuItem (
ReturnToolsToolStripMenuItem  <
== >
new? B
ToolStripMenuItemC T
(T U
)U V
;V W
	protected 
ToolStripMenuItem (
ViewRentalsToolStripMenuItem  <
== >
new? B
ToolStripMenuItemC T
(T U
)U V
;V W
	protected 
ToolStripMenuItem )
AdminReportsToolStripMenuItem  =
=> ?
new@ C
ToolStripMenuItemD U
(U V
)V W
;W X
	protected 
ToolStripMenuItem %
AnalysisToolStripMenuItem  9
=: ;
new< ?
ToolStripMenuItem@ Q
(Q R
)R S
;S T
	protected 
ToolStripMenuItem %
MainMenuToolStripMenuItem  9
=: ;
new< ?
ToolStripMenuItem@ Q
(Q R
)R S
;S T
	protected 
ToolStripMenuItem '
ExitSystemToolStripMenuItem  ;
=< =
new> A
ToolStripMenuItemB S
(S T
)T U
;U V
public 

NavForm 
( 
INavigation 

navigation )
)) *
{ 

Navigation 
= 

navigation 
;  
InitializeComponent   
(   
)   
;   
}!! 
public"" 

NavForm"" 
("" 
)"" 
:"" 
this"" 
("" 
new"" 
NoOpNavigation""  .
("". /
)""/ 0
)""0 1
{## 
}$$ 
private%% 
void%% 
InitializeComponent%% $
(%%$ %
)%%% &
{&& 

MenuStrip1'' 
='' 
new'' 
	MenuStrip'' "
(''" #
)''# $
;''$ %"
RatesToolStripMenuItem(( 
=((  
new((! $
ToolStripMenuItem((% 6
(((6 7
)((7 8
;((8 9,
 SetToolCategoryToolStripMenuItem)) (
=))) *
new))+ .
ToolStripMenuItem))/ @
())@ A
)))A B
;))B C+
UpdateToolRateToolStripMenuItem** '
=**( )
new*** -
ToolStripMenuItem**. ?
(**? @
)**@ A
;**A B"
ToolsToolStripMenuItem++ 
=++  
new++! $
ToolStripMenuItem++% 6
(++6 7
)++7 8
;++8 9 
AddToolStripMenuItem,, 
=,, 
new,, "
ToolStripMenuItem,,# 4
(,,4 5
),,5 6
;,,6 7(
UpdateToolsToolStripMenuItem-- $
=--% &
new--' *
ToolStripMenuItem--+ <
(--< =
)--= >
;--> ?(
RemoveToolsToolStripMenuItem.. $
=..% &
new..' *
ToolStripMenuItem..+ <
(..< =
)..= >
;..> ?&
ViewToolsToolStripMenuItem// "
=//# $
new//% (
ToolStripMenuItem//) :
(//: ;
)//; <
;//< =&
CustomersToolStripMenuItem00 "
=00# $
new00% (
ToolStripMenuItem00) :
(00: ;
)00; <
;00< =(
AddCustomerToolStripMenuItem11 $
=11% &
new11' *
ToolStripMenuItem11+ <
(11< =
)11= >
;11> ?+
UpdateCustomerToolStripMenuItem22 '
=22( )
new22* -
ToolStripMenuItem22. ?
(22? @
)22@ A
;22A B*
ViewCustomersToolStripMenuItem33 &
=33' (
new33) ,
ToolStripMenuItem33- >
(33> ?
)33? @
;33@ A$
RentalsToolStripMenuItem44  
=44! "
new44# &
ToolStripMenuItem44' 8
(448 9
)449 :
;44: ;%
RentToolToolStripMenuItem55 !
=55" #
new55$ '
ToolStripMenuItem55( 9
(559 :
)55: ;
;55; <(
ReturnToolsToolStripMenuItem66 $
=66% &
new66' *
ToolStripMenuItem66+ <
(66< =
)66= >
;66> ?(
ViewRentalsToolStripMenuItem77 $
=77% &
new77' *
ToolStripMenuItem77+ <
(77< =
)77= >
;77> ?)
AdminReportsToolStripMenuItem88 %
=88& '
new88( +
ToolStripMenuItem88, =
(88= >
)88> ?
;88? @%
AnalysisToolStripMenuItem99 !
=99" #
new99$ '
ToolStripMenuItem99( 9
(999 :
)99: ;
;99; <%
MainMenuToolStripMenuItem:: !
=::" #
new::$ '
ToolStripMenuItem::( 9
(::9 :
)::: ;
;::; <'
ExitSystemToolStripMenuItem;; #
=;;$ %
new;;& )
ToolStripMenuItem;;* ;
(;;; <
);;< =
;;;= >

MenuStrip1<< 
.<< 
SuspendLayout<<  
(<<  !
)<<! "
;<<" #
SuspendLayout== 
(== 
)== 
;== 

MenuStrip1AA 
.AA 
	BackColorAA 
=AA 
SystemColorsAA +
.AA+ ,
AppWorkspaceAA, 8
;AA8 9

MenuStrip1BB 
.BB 
FontBB 
=BB 
newBB 
FontBB "
(BB" #
$strBB# 3
,BB3 4
$numBB5 7
,BB7 8
	FontStyleBB9 B
.BBB C
RegularBBC J
,BBJ K
GraphicsUnitBBL X
.BBX Y
PointBBY ^
,BB^ _
$numBB` a
)BBa b
;BBb c

MenuStrip1CC 
.CC 
ImageScalingSizeCC #
=CC$ %
newCC& )
SizeCC* .
(CC. /
$numCC/ 1
,CC1 2
$numCC3 5
)CC5 6
;CC6 7

MenuStrip1DD 
.DD 
ItemsDD 
.DD 
AddRangeDD !
(DD! "
[DD" #"
RatesToolStripMenuItemDD# 9
,DD9 :"
ToolsToolStripMenuItemDD; Q
,DDQ R&
CustomersToolStripMenuItemDDS m
,DDm n%
RentalsToolStripMenuItem	DDo á
,
DDá à+
AdminReportsToolStripMenuItem
DDâ ¶
,
DD¶ ß'
MainMenuToolStripMenuItem
DD® ¡
,
DD¡ ¬)
ExitSystemToolStripMenuItem
DD√ ﬁ
]EE 	
)EE	 

;EE
 

MenuStrip1FF 
.FF 
LocationFF 
=FF 
newFF !
PointFF" '
(FF' (
$numFF( )
,FF) *
$numFF+ ,
)FF, -
;FF- .

MenuStrip1GG 
.GG 
NameGG 
=GG 
$strGG &
;GG& '

MenuStrip1HH 
.HH 
SizeHH 
=HH 
newHH 
SizeHH "
(HH" #
$numHH# '
,HH' (
$numHH) +
)HH+ ,
;HH, -

MenuStrip1II 
.II 
TabIndexII 
=II 
$numII 
;II  

MenuStrip1JJ 
.JJ 
TextJJ 
=JJ 
$strJJ '
;JJ' ("
RatesToolStripMenuItemNN 
.NN 
DropDownItemsNN ,
.NN, -
AddRangeNN- 5
(NN5 6
[NN6 7,
 SetToolCategoryToolStripMenuItemNN7 W
,NNW X+
UpdateToolRateToolStripMenuItemNNY x
]OO 	
)OO	 

;OO
 "
RatesToolStripMenuItemPP 
.PP 
NamePP #
=PP$ %
$strPP& >
;PP> ?"
RatesToolStripMenuItemQQ 
.QQ 
SizeQQ #
=QQ$ %
newQQ& )
SizeQQ* .
(QQ. /
$numQQ/ 1
,QQ1 2
$numQQ3 5
)QQ5 6
;QQ6 7"
RatesToolStripMenuItemRR 
.RR 
TextRR #
=RR$ %
$strRR& .
;RR. /,
 SetToolCategoryToolStripMenuItemVV (
.VV( )
NameVV) -
=VV. /
$strVV0 R
;VVR S,
 SetToolCategoryToolStripMenuItemWW (
.WW( )
SizeWW) -
=WW. /
newWW0 3
SizeWW4 8
(WW8 9
$numWW9 <
,WW< =
$numWW> @
)WW@ A
;WWA B,
 SetToolCategoryToolStripMenuItemXX (
.XX( )
TextXX) -
=XX. /
$strXX0 D
;XXD E,
 SetToolCategoryToolStripMenuItemYY (
.YY( )
ClickYY) .
+=YY/ 12
&SetToolCategoryToolStripMenuItem_ClickYY2 X
;YYX Y+
UpdateToolRateToolStripMenuItem]] '
.]]' (
Name]]( ,
=]]- .
$str]]/ P
;]]P Q+
UpdateToolRateToolStripMenuItem^^ '
.^^' (
Size^^( ,
=^^- .
new^^/ 2
Size^^3 7
(^^7 8
$num^^8 ;
,^^; <
$num^^= ?
)^^? @
;^^@ A+
UpdateToolRateToolStripMenuItem__ '
.__' (
Text__( ,
=__- .
$str__/ B
;__B C+
UpdateToolRateToolStripMenuItem`` '
.``' (
Click``( -
+=``. 01
%UpdateToolRateToolStripMenuItem_Click``1 V
;``V W"
ToolsToolStripMenuItemdd 
.dd 
DropDownItemsdd ,
.dd, -
AddRangedd- 5
(dd5 6
[dd6 7 
AddToolStripMenuItemdd7 K
,ddK L(
UpdateToolsToolStripMenuItemddM i
,ddi j)
RemoveToolsToolStripMenuItem	ddk á
,
ddá à(
ViewToolsToolStripMenuItem
ddâ £
]ee 	
)ee	 

;ee
 "
ToolsToolStripMenuItemff 
.ff 
Nameff #
=ff$ %
$strff& >
;ff> ?"
ToolsToolStripMenuItemgg 
.gg 
Sizegg #
=gg$ %
newgg& )
Sizegg* .
(gg. /
$numgg/ 1
,gg1 2
$numgg3 5
)gg5 6
;gg6 7"
ToolsToolStripMenuItemhh 
.hh 
Texthh #
=hh$ %
$strhh& .
;hh. / 
AddToolStripMenuItemll 
.ll 
Namell !
=ll" #
$strll$ :
;ll: ; 
AddToolStripMenuItemmm 
.mm 
Sizemm !
=mm" #
newmm$ '
Sizemm( ,
(mm, -
$nummm- 0
,mm0 1
$nummm2 4
)mm4 5
;mm5 6 
AddToolStripMenuItemnn 
.nn 
Textnn !
=nn" #
$strnn$ 0
;nn0 1 
AddToolStripMenuItemoo 
.oo 
Clickoo "
+=oo# %&
AddToolStripMenuItem_Clickoo& @
;oo@ A(
UpdateToolsToolStripMenuItemss $
.ss$ %
Namess% )
=ss* +
$strss, J
;ssJ K(
UpdateToolsToolStripMenuItemtt $
.tt$ %
Sizett% )
=tt* +
newtt, /
Sizett0 4
(tt4 5
$numtt5 8
,tt8 9
$numtt: <
)tt< =
;tt= >(
UpdateToolsToolStripMenuItemuu $
.uu$ %
Textuu% )
=uu* +
$struu, ;
;uu; <(
UpdateToolsToolStripMenuItemvv $
.vv$ %
Clickvv% *
+=vv+ -.
"UpdateToolsToolStripMenuItem_Clickvv. P
;vvP Q(
RemoveToolsToolStripMenuItemzz $
.zz$ %
Namezz% )
=zz* +
$strzz, J
;zzJ K(
RemoveToolsToolStripMenuItem{{ $
.{{$ %
Size{{% )
={{* +
new{{, /
Size{{0 4
({{4 5
$num{{5 8
,{{8 9
$num{{: <
){{< =
;{{= >(
RemoveToolsToolStripMenuItem|| $
.||$ %
Text||% )
=||* +
$str||, ;
;||; <(
RemoveToolsToolStripMenuItem}} $
.}}$ %
Click}}% *
+=}}+ -.
"RemoveToolsToolStripMenuItem_Click}}. P
;}}P Q(
ViewToolsToolStripMenuItem
ÅÅ "
.
ÅÅ" #
Name
ÅÅ# '
=
ÅÅ( )
$str
ÅÅ* F
;
ÅÅF G(
ViewToolsToolStripMenuItem
ÇÇ "
.
ÇÇ" #
Size
ÇÇ# '
=
ÇÇ( )
new
ÇÇ* -
Size
ÇÇ. 2
(
ÇÇ2 3
$num
ÇÇ3 6
,
ÇÇ6 7
$num
ÇÇ8 :
)
ÇÇ: ;
;
ÇÇ; <(
ViewToolsToolStripMenuItem
ÉÉ "
.
ÉÉ" #
Text
ÉÉ# '
=
ÉÉ( )
$str
ÉÉ* 7
;
ÉÉ7 8(
ViewToolsToolStripMenuItem
ÑÑ "
.
ÑÑ" #
Click
ÑÑ# (
+=
ÑÑ) +.
 ViewToolsToolStripMenuItem_Click
ÑÑ, L
;
ÑÑL M(
CustomersToolStripMenuItem
àà "
.
àà" #
DropDownItems
àà# 0
.
àà0 1
AddRange
àà1 9
(
àà9 :
[
àà: ;*
AddCustomerToolStripMenuItem
àà; W
,
ààW X-
UpdateCustomerToolStripMenuItem
ààY x
,
ààx y-
ViewCustomersToolStripMenuItemààz ò
]
ââ 	
)
ââ	 

;
ââ
 (
CustomersToolStripMenuItem
ää "
.
ää" #
Name
ää# '
=
ää( )
$str
ää* F
;
ääF G(
CustomersToolStripMenuItem
ãã "
.
ãã" #
Size
ãã# '
=
ãã( )
new
ãã* -
Size
ãã. 2
(
ãã2 3
$num
ãã3 5
,
ãã5 6
$num
ãã7 9
)
ãã9 :
;
ãã: ;(
CustomersToolStripMenuItem
åå "
.
åå" #
Text
åå# '
=
åå( )
$str
åå* 6
;
åå6 7*
AddCustomerToolStripMenuItem
êê $
.
êê$ %
Name
êê% )
=
êê* +
$str
êê, J
;
êêJ K*
AddCustomerToolStripMenuItem
ëë $
.
ëë$ %
Size
ëë% )
=
ëë* +
new
ëë, /
Size
ëë0 4
(
ëë4 5
$num
ëë5 8
,
ëë8 9
$num
ëë: <
)
ëë< =
;
ëë= >*
AddCustomerToolStripMenuItem
íí $
.
íí$ %
Text
íí% )
=
íí* +
$str
íí, ;
;
íí; <*
AddCustomerToolStripMenuItem
ìì $
.
ìì$ %
Click
ìì% *
+=
ìì+ -0
"AddCustomerToolStripMenuItem_Click
ìì. P
;
ììP Q-
UpdateCustomerToolStripMenuItem
óó '
.
óó' (
Name
óó( ,
=
óó- .
$str
óó/ P
;
óóP Q-
UpdateCustomerToolStripMenuItem
òò '
.
òò' (
Size
òò( ,
=
òò- .
new
òò/ 2
Size
òò3 7
(
òò7 8
$num
òò8 ;
,
òò; <
$num
òò= ?
)
òò? @
;
òò@ A-
UpdateCustomerToolStripMenuItem
ôô '
.
ôô' (
Text
ôô( ,
=
ôô- .
$str
ôô/ A
;
ôôA B-
UpdateCustomerToolStripMenuItem
öö '
.
öö' (
Click
öö( -
+=
öö. 03
%UpdateCustomerToolStripMenuItem_Click
öö1 V
;
ööV W,
ViewCustomersToolStripMenuItem
ûû &
.
ûû& '
Name
ûû' +
=
ûû, -
$str
ûû. N
;
ûûN O,
ViewCustomersToolStripMenuItem
üü &
.
üü& '
Size
üü' +
=
üü, -
new
üü. 1
Size
üü2 6
(
üü6 7
$num
üü7 :
,
üü: ;
$num
üü< >
)
üü> ?
;
üü? @,
ViewCustomersToolStripMenuItem
†† &
.
††& '
Text
††' +
=
††, -
$str
††. ?
;
††? @,
ViewCustomersToolStripMenuItem
°° &
.
°°& '
Click
°°' ,
+=
°°- /2
$viewCustomersToolStripMenuItem_Click
°°0 T
;
°°T U&
RentalsToolStripMenuItem
••  
.
••  !
DropDownItems
••! .
.
••. /
AddRange
••/ 7
(
••7 8
[
••8 9'
RentToolToolStripMenuItem
••9 R
,
••R S*
ReturnToolsToolStripMenuItem
••T p
,
••p q+
ViewRentalsToolStripMenuItem••r é
]••é è
)••è ê
;••ê ë&
RentalsToolStripMenuItem
¶¶  
.
¶¶  !
Name
¶¶! %
=
¶¶& '
$str
¶¶( B
;
¶¶B C&
RentalsToolStripMenuItem
ßß  
.
ßß  !
Size
ßß! %
=
ßß& '
new
ßß( +
Size
ßß, 0
(
ßß0 1
$num
ßß1 3
,
ßß3 4
$num
ßß5 7
)
ßß7 8
;
ßß8 9&
RentalsToolStripMenuItem
®®  
.
®®  !
Text
®®! %
=
®®& '
$str
®®( 2
;
®®2 3'
RentToolToolStripMenuItem
¨¨ !
.
¨¨! "
Name
¨¨" &
=
¨¨' (
$str
¨¨) D
;
¨¨D E'
RentToolToolStripMenuItem
≠≠ !
.
≠≠! "
Size
≠≠" &
=
≠≠' (
new
≠≠) ,
Size
≠≠- 1
(
≠≠1 2
$num
≠≠2 5
,
≠≠5 6
$num
≠≠7 9
)
≠≠9 :
;
≠≠: ;'
RentToolToolStripMenuItem
ÆÆ !
.
ÆÆ! "
Text
ÆÆ" &
=
ÆÆ' (
$str
ÆÆ) 6
;
ÆÆ6 7'
RentToolToolStripMenuItem
ØØ !
.
ØØ! "
Click
ØØ" '
+=
ØØ( *-
RentToolToolStripMenuItem_Click
ØØ+ J
;
ØØJ K*
ReturnToolsToolStripMenuItem
≥≥ $
.
≥≥$ %
Name
≥≥% )
=
≥≥* +
$str
≥≥, J
;
≥≥J K*
ReturnToolsToolStripMenuItem
¥¥ $
.
¥¥$ %
Size
¥¥% )
=
¥¥* +
new
¥¥, /
Size
¥¥0 4
(
¥¥4 5
$num
¥¥5 8
,
¥¥8 9
$num
¥¥: <
)
¥¥< =
;
¥¥= >*
ReturnToolsToolStripMenuItem
µµ $
.
µµ$ %
Text
µµ% )
=
µµ* +
$str
µµ, ;
;
µµ; <*
ReturnToolsToolStripMenuItem
∂∂ $
.
∂∂$ %
Click
∂∂% *
+=
∂∂+ -0
"ReturnToolsToolStripMenuItem_Click
∂∂. P
;
∂∂P Q*
ViewRentalsToolStripMenuItem
∫∫ $
.
∫∫$ %
Name
∫∫% )
=
∫∫* +
$str
∫∫, J
;
∫∫J K*
ViewRentalsToolStripMenuItem
ªª $
.
ªª$ %
Size
ªª% )
=
ªª* +
new
ªª, /
Size
ªª0 4
(
ªª4 5
$num
ªª5 8
,
ªª8 9
$num
ªª: <
)
ªª< =
;
ªª= >*
ViewRentalsToolStripMenuItem
ºº $
.
ºº$ %
Text
ºº% )
=
ºº* +
$str
ºº, ;
;
ºº; <*
ViewRentalsToolStripMenuItem
ΩΩ $
.
ΩΩ$ %
Click
ΩΩ% *
+=
ΩΩ+ -0
"ViewRentalsToolStripMenuItem_Click
ΩΩ. P
;
ΩΩP Q+
AdminReportsToolStripMenuItem
¡¡ %
.
¡¡% &
DropDownItems
¡¡& 3
.
¡¡3 4
AddRange
¡¡4 <
(
¡¡< =
[
¡¡= >'
AnalysisToolStripMenuItem
¡¡> W
]
¡¡W X
)
¡¡X Y
;
¡¡Y Z+
AdminReportsToolStripMenuItem
¬¬ %
.
¬¬% &
Name
¬¬& *
=
¬¬+ ,
$str
¬¬- L
;
¬¬L M+
AdminReportsToolStripMenuItem
√√ %
.
√√% &
Size
√√& *
=
√√+ ,
new
√√- 0
Size
√√1 5
(
√√5 6
$num
√√6 9
,
√√9 :
$num
√√; =
)
√√= >
;
√√> ?+
AdminReportsToolStripMenuItem
ƒƒ %
.
ƒƒ% &
Text
ƒƒ& *
=
ƒƒ+ ,
$str
ƒƒ- =
;
ƒƒ= >'
AnalysisToolStripMenuItem
»» !
.
»»! "
Name
»»" &
=
»»' (
$str
»») D
;
»»D E'
AnalysisToolStripMenuItem
…… !
.
……! "
Size
……" &
=
……' (
new
……) ,
Size
……- 1
(
……1 2
$num
……2 5
,
……5 6
$num
……7 9
)
……9 :
;
……: ;'
AnalysisToolStripMenuItem
   !
.
  ! "
Text
  " &
=
  ' (
$str
  ) :
;
  : ;'
AnalysisToolStripMenuItem
ÀÀ !
.
ÀÀ! "
Click
ÀÀ" '
+=
ÀÀ( *-
AnalysisToolStripMenuItem_Click
ÀÀ+ J
;
ÀÀJ K'
MainMenuToolStripMenuItem
œœ !
.
œœ! "
	Alignment
œœ" +
=
œœ, -$
ToolStripItemAlignment
œœ. D
.
œœD E
Right
œœE J
;
œœJ K'
MainMenuToolStripMenuItem
–– !
.
––! "
Name
––" &
=
––' (
$str
––) D
;
––D E'
MainMenuToolStripMenuItem
—— !
.
——! "
Size
——" &
=
——' (
new
——) ,
Size
——- 1
(
——1 2
$num
——2 4
,
——4 5
$num
——6 8
)
——8 9
;
——9 :'
MainMenuToolStripMenuItem
““ !
.
““! "
Text
““" &
=
““' (
$str
““) 5
;
““5 6'
MainMenuToolStripMenuItem
”” !
.
””! "
Click
””" '
+=
””( *-
MainMenuToolStripMenuItem_Click
””+ J
;
””J K)
ExitSystemToolStripMenuItem
◊◊ #
.
◊◊# $
	Alignment
◊◊$ -
=
◊◊. /$
ToolStripItemAlignment
◊◊0 F
.
◊◊F G
Right
◊◊G L
;
◊◊L M)
ExitSystemToolStripMenuItem
ÿÿ #
.
ÿÿ# $
Name
ÿÿ$ (
=
ÿÿ) *
$str
ÿÿ+ H
;
ÿÿH I)
ExitSystemToolStripMenuItem
ŸŸ #
.
ŸŸ# $
Size
ŸŸ$ (
=
ŸŸ) *
new
ŸŸ+ .
Size
ŸŸ/ 3
(
ŸŸ3 4
$num
ŸŸ4 6
,
ŸŸ6 7
$num
ŸŸ8 :
)
ŸŸ: ;
;
ŸŸ; <)
ExitSystemToolStripMenuItem
⁄⁄ #
.
⁄⁄# $
Text
⁄⁄$ (
=
⁄⁄) *
$str
⁄⁄+ 9
;
⁄⁄9 :)
ExitSystemToolStripMenuItem
€€ #
.
€€# $
Click
€€$ )
+=
€€* ,/
!ExitSystemToolStripMenuItem_Click
€€- N
;
€€N O

ClientSize
ﬂﬂ 
=
ﬂﬂ 
new
ﬂﬂ 
Size
ﬂﬂ 
(
ﬂﬂ 
$num
ﬂﬂ "
,
ﬂﬂ" #
$num
ﬂﬂ$ '
)
ﬂﬂ' (
;
ﬂﬂ( )
Controls
‡‡ 
.
‡‡ 
Add
‡‡ 
(
‡‡ 

MenuStrip1
‡‡ 
)
‡‡  
;
‡‡  !
MainMenuStrip
·· 
=
·· 

MenuStrip1
·· "
;
··" #
Name
‚‚ 
=
‚‚ 
$str
‚‚ 
;
‚‚ 

MenuStrip1
„„ 
.
„„ 
ResumeLayout
„„ 
(
„„  
false
„„  %
)
„„% &
;
„„& '

MenuStrip1
‰‰ 
.
‰‰ 
PerformLayout
‰‰  
(
‰‰  !
)
‰‰! "
;
‰‰" #
ResumeLayout
ÂÂ 
(
ÂÂ 
false
ÂÂ 
)
ÂÂ 
;
ÂÂ 
PerformLayout
ÊÊ 
(
ÊÊ 
)
ÊÊ 
;
ÊÊ 
}
ÁÁ 
private
ÈÈ 
void
ÈÈ 4
&SetToolCategoryToolStripMenuItem_Click
ÈÈ 7
(
ÈÈ7 8
object
ÈÈ8 >
?
ÈÈ> ?
sender
ÈÈ@ F
,
ÈÈF G
	EventArgs
ÈÈH Q
e
ÈÈR S
)
ÈÈS T
{
ÍÍ 

Navigation
ÎÎ 
.
ÎÎ '
NavigateToSetToolCategory
ÎÎ ,
(
ÎÎ, -
this
ÎÎ- 1
)
ÎÎ1 2
;
ÎÎ2 3
}
ÏÏ 
private
ÓÓ 
void
ÓÓ 3
%UpdateToolRateToolStripMenuItem_Click
ÓÓ 6
(
ÓÓ6 7
object
ÓÓ7 =
?
ÓÓ= >
sender
ÓÓ? E
,
ÓÓE F
	EventArgs
ÓÓG P
e
ÓÓQ R
)
ÓÓR S
{
ÔÔ 

Navigation
 
.
 "
NavigateToUpdateRate
 '
(
' (
this
( ,
)
, -
;
- .
}
ÒÒ 
private
ÛÛ 
void
ÛÛ (
AddToolStripMenuItem_Click
ÛÛ +
(
ÛÛ+ ,
object
ÛÛ, 2
?
ÛÛ2 3
sender
ÛÛ4 :
,
ÛÛ: ;
	EventArgs
ÛÛ< E
e
ÛÛF G
)
ÛÛG H
{
ÙÙ 

Navigation
ıı 
.
ıı 
NavigateToAddTool
ıı $
(
ıı$ %
this
ıı% )
)
ıı) *
;
ıı* +
}
ˆˆ 
private
¯¯ 
void
¯¯ 0
"UpdateToolsToolStripMenuItem_Click
¯¯ 3
(
¯¯3 4
object
¯¯4 :
?
¯¯: ;
sender
¯¯< B
,
¯¯B C
	EventArgs
¯¯D M
e
¯¯N O
)
¯¯O P
{
˘˘ 

Navigation
˙˙ 
.
˙˙ "
NavigateToUpdateTool
˙˙ '
(
˙˙' (
this
˙˙( ,
)
˙˙, -
;
˙˙- .
}
˚˚ 
private
˝˝ 
void
˝˝ 0
"RemoveToolsToolStripMenuItem_Click
˝˝ 3
(
˝˝3 4
object
˝˝4 :
?
˝˝: ;
sender
˝˝< B
,
˝˝B C
	EventArgs
˝˝D M
e
˝˝N O
)
˝˝O P
{
˛˛ 

Navigation
ˇˇ 
.
ˇˇ "
NavigateToRemoveTool
ˇˇ '
(
ˇˇ' (
this
ˇˇ( ,
)
ˇˇ, -
;
ˇˇ- .
}
ÄÄ 
private
ÇÇ 
void
ÇÇ .
 ViewToolsToolStripMenuItem_Click
ÇÇ 1
(
ÇÇ1 2
object
ÇÇ2 8
?
ÇÇ8 9
sender
ÇÇ: @
,
ÇÇ@ A
	EventArgs
ÇÇB K
e
ÇÇL M
)
ÇÇM N
{
ÉÉ 

Navigation
ÑÑ 
.
ÑÑ !
NavigateToViewTools
ÑÑ &
(
ÑÑ& '
this
ÑÑ' +
)
ÑÑ+ ,
;
ÑÑ, -
}
ÖÖ 
private
áá 
void
áá 0
"AddCustomerToolStripMenuItem_Click
áá 3
(
áá3 4
object
áá4 :
?
áá: ;
sender
áá< B
,
ááB C
	EventArgs
ááD M
e
ááN O
)
ááO P
{
àà 

Navigation
ââ 
.
ââ #
NavigateToAddCustomer
ââ (
(
ââ( )
this
ââ) -
)
ââ- .
;
ââ. /
}
ää 
private
åå 
void
åå 3
%UpdateCustomerToolStripMenuItem_Click
åå 6
(
åå6 7
object
åå7 =
?
åå= >
sender
åå? E
,
ååE F
	EventArgs
ååG P
e
ååQ R
)
ååR S
{
çç 

Navigation
éé 
.
éé &
NavigateToUpdateCustomer
éé +
(
éé+ ,
this
éé, 0
)
éé0 1
;
éé1 2
}
èè 
private
ëë 
void
ëë 2
$viewCustomersToolStripMenuItem_Click
ëë 5
(
ëë5 6
object
ëë6 <
?
ëë< =
sender
ëë> D
,
ëëD E
	EventArgs
ëëF O
e
ëëP Q
)
ëëQ R
{
íí 

Navigation
ìì 
.
ìì %
NavigateToViewCustomers
ìì *
(
ìì* +
this
ìì+ /
)
ìì/ 0
;
ìì0 1
}
îî 
private
ññ 
void
ññ -
RentToolToolStripMenuItem_Click
ññ 0
(
ññ0 1
object
ññ1 7
?
ññ7 8
sender
ññ9 ?
,
ññ? @
	EventArgs
ññA J
e
ññK L
)
ññL M
{
óó 

Navigation
òò 
.
òò !
NavigateToRentTools
òò &
(
òò& '
this
òò' +
)
òò+ ,
;
òò, -
}
ôô 
private
õõ 
void
õõ 0
"ReturnToolsToolStripMenuItem_Click
õõ 3
(
õõ3 4
object
õõ4 :
?
õõ: ;
sender
õõ< B
,
õõB C
	EventArgs
õõD M
e
õõN O
)
õõO P
{
úú 

Navigation
ùù 
.
ùù #
NavigateToReturnTools
ùù (
(
ùù( )
this
ùù) -
)
ùù- .
;
ùù. /
}
ûû 
private
†† 
void
†† 0
"ViewRentalsToolStripMenuItem_Click
†† 3
(
††3 4
object
††4 :
?
††: ;
sender
††< B
,
††B C
	EventArgs
††D M
e
††N O
)
††O P
{
°° 

Navigation
¢¢ 
.
¢¢ #
NavigateToViewRentals
¢¢ (
(
¢¢( )
this
¢¢) -
)
¢¢- .
;
¢¢. /
}
££ 
private
•• 
void
•• -
AnalysisToolStripMenuItem_Click
•• 0
(
••0 1
object
••1 7
?
••7 8
sender
••9 ?
,
••? @
	EventArgs
••A J
e
••K L
)
••L M
{
¶¶ 

Navigation
ßß 
.
ßß  
NavigateToAnalysis
ßß %
(
ßß% &
this
ßß& *
)
ßß* +
;
ßß+ ,
}
®® 
private
™™ 
void
™™ -
MainMenuToolStripMenuItem_Click
™™ 0
(
™™0 1
object
™™1 7
?
™™7 8
sender
™™9 ?
,
™™? @
	EventArgs
™™A J
e
™™K L
)
™™L M
{
´´ 

Navigation
¨¨ 
.
¨¨  
NavigateToMainMenu
¨¨ %
(
¨¨% &
this
¨¨& *
)
¨¨* +
;
¨¨+ ,
}
≠≠ 
private
ØØ 
void
ØØ /
!ExitSystemToolStripMenuItem_Click
ØØ 2
(
ØØ2 3
object
ØØ3 9
?
ØØ9 :
sender
ØØ; A
,
ØØA B
	EventArgs
ØØC L
e
ØØM N
)
ØØN O
{
∞∞ 
var
±± 
confirmExit
±± 
=
±± 

MessageBox
±± $
.
±±$ %
Show
±±% )
(
±±) *
$str
±±* K
,
±±K L
$str
±±M \
,
±±\ ]
MessageBoxButtons
±±^ o
.
±±o p
YesNo
±±p u
)
±±u v
;
±±v w
if
≥≥ 

(
≥≥ 
confirmExit
≥≥ 
==
≥≥ 
DialogResult
≥≥ '
.
≥≥' (
Yes
≥≥( +
)
≥≥+ ,
{
¥¥ 	
Application
µµ 
.
µµ 
Exit
µµ 
(
µµ 
)
µµ 
;
µµ 
}
∂∂ 	
}
∑∑ 
private
∫∫ 
class
∫∫ 
NoOpNavigation
∫∫  
:
∫∫! "
INavigation
∫∫# .
{
ªª 
public
ºº 
void
ºº '
NavigateToSetToolCategory
ºº -
(
ºº- .
Form
ºº. 2
form
ºº3 7
)
ºº7 8
{
ºº9 :
}
ºº; <
public
ΩΩ 
void
ΩΩ "
NavigateToUpdateRate
ΩΩ (
(
ΩΩ( )
Form
ΩΩ) -
form
ΩΩ. 2
)
ΩΩ2 3
{
ΩΩ4 5
}
ΩΩ6 7
public
ææ 
void
ææ 
NavigateToAddTool
ææ %
(
ææ% &
Form
ææ& *
form
ææ+ /
)
ææ/ 0
{
ææ1 2
}
ææ3 4
public
øø 
void
øø "
NavigateToUpdateTool
øø (
(
øø( )
Form
øø) -
form
øø. 2
)
øø2 3
{
øø4 5
}
øø6 7
public
¿¿ 
void
¿¿ "
NavigateToRemoveTool
¿¿ (
(
¿¿( )
Form
¿¿) -
form
¿¿. 2
)
¿¿2 3
{
¿¿4 5
}
¿¿6 7
public
¡¡ 
void
¡¡ !
NavigateToViewTools
¡¡ '
(
¡¡' (
Form
¡¡( ,
form
¡¡- 1
)
¡¡1 2
{
¡¡3 4
}
¡¡5 6
public
¬¬ 
void
¬¬ #
NavigateToAddCustomer
¬¬ )
(
¬¬) *
Form
¬¬* .
form
¬¬/ 3
)
¬¬3 4
{
¬¬5 6
}
¬¬7 8
public
√√ 
void
√√ &
NavigateToUpdateCustomer
√√ ,
(
√√, -
Form
√√- 1
form
√√2 6
)
√√6 7
{
√√8 9
}
√√: ;
public
ƒƒ 
void
ƒƒ %
NavigateToViewCustomers
ƒƒ +
(
ƒƒ+ ,
Form
ƒƒ, 0
form
ƒƒ1 5
)
ƒƒ5 6
{
ƒƒ7 8
}
ƒƒ9 :
public
≈≈ 
void
≈≈ !
NavigateToRentTools
≈≈ '
(
≈≈' (
Form
≈≈( ,
form
≈≈- 1
)
≈≈1 2
{
≈≈3 4
}
≈≈5 6
public
∆∆ 
void
∆∆ #
NavigateToReturnTools
∆∆ )
(
∆∆) *
Form
∆∆* .
form
∆∆/ 3
)
∆∆3 4
{
∆∆5 6
}
∆∆7 8
public
«« 
void
«« #
NavigateToViewRentals
«« )
(
««) *
Form
««* .
form
««/ 3
)
««3 4
{
««5 6
}
««7 8
public
»» 
void
»»  
NavigateToAnalysis
»» &
(
»»& '
Form
»»' +
form
»», 0
)
»»0 1
{
»»2 3
}
»»4 5
public
…… 
void
……  
NavigateToMainMenu
…… &
(
……& '
Form
……' +
form
……, 0
)
……0 1
{
……2 3
}
……4 5
}
   
}ÀÀ ül
OC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Nav\Navigation.cs
	namespace 	
ToolSYS
 
. 
Presentation 
. 
Nav "
{ 
public 

	interface 
INavigation  
{		 
void

 %
NavigateToSetToolCategory

 &
(

& '
Form

' +
form

, 0
)

0 1
;

1 2
void  
NavigateToUpdateRate !
(! "
Form" &
form' +
)+ ,
;, -
void 
NavigateToAddTool 
( 
Form #
form$ (
)( )
;) *
void  
NavigateToUpdateTool !
(! "
Form" &
form' +
)+ ,
;, -
void  
NavigateToRemoveTool !
(! "
Form" &
form' +
)+ ,
;, -
void 
NavigateToViewTools  
(  !
Form! %
form& *
)* +
;+ ,
void 
NavigateToRentTools  
(  !
Form! %
form& *
)* +
;+ ,
void !
NavigateToReturnTools "
(" #
Form# '
form( ,
), -
;- .
void !
NavigateToViewRentals "
(" #
Form# '
form( ,
), -
;- .
void !
NavigateToAddCustomer "
(" #
Form# '
form( ,
), -
;- .
void $
NavigateToUpdateCustomer %
(% &
Form& *
form+ /
)/ 0
;0 1
void #
NavigateToViewCustomers $
($ %
Form% )
form* .
). /
;/ 0
void 
NavigateToAnalysis 
(  
Form  $
form% )
)) *
;* +
void 
NavigateToMainMenu 
(  
Form  $
form% )
)) *
;* +
} 
public 

class 

Navigation 
: 
INavigation )
{ 
private 
readonly 
IToolService %
_toolService& 2
;2 3
private 
readonly 
IRateService %
_rateService& 2
;2 3
private 
readonly 
ICustomerService )
_customerService* :
;: ;
private 
readonly 
IAnalysisService )
_analysisService* :
;: ;
private   
readonly   
IRentalService   '
_rentalService  ( 6
;  6 7
private!! 
readonly!! 
IRentalFacade!! &
_rentalFacade!!' 4
;!!4 5
public## 

Navigation## 
(## 
IToolService## &
toolService##' 2
,##2 3
IRateService##4 @
rateService##A L
,##L M
ICustomerService##N ^
customerService##_ n
,##n o
IAnalysisService	##p Ä
analysisService
##Å ê
,
##ê ë
IRentalService
##í †
rentalService
##° Æ
,
##Æ Ø
IRentalFacade
##∞ Ω
rentalFacade
##æ  
)
##  À
{$$ 	
_toolService%% 
=%% 
toolService%% &
;%%& '
_rateService&& 
=&& 
rateService&& &
;&&& '
_customerService'' 
='' 
customerService'' .
;''. /
_analysisService(( 
=(( 
analysisService(( .
;((. /
_rentalService)) 
=)) 
rentalService)) *
;))* +
_rentalFacade** 
=** 
rentalFacade** (
;**( )
}++ 	
public-- 
void-- %
NavigateToSetToolCategory-- -
(--- .
Form--. 2
form--3 7
)--7 8
{.. 	
form// 
.// 
Hide// 
(// 
)// 
;// 
FrmSetToolCategory00 
nextForm00 '
=00( )
new00* -
FrmSetToolCategory00. @
(00@ A
this00A E
,00E F
_rateService00G S
)00S T
;00T U
nextForm11 
.11 

ShowDialog11 
(11  
)11  !
;11! "
form22 
.22 
Close22 
(22 
)22 
;22 
}33 	
public44 
void44  
NavigateToUpdateRate44 (
(44( )
Form44) -
form44. 2
)442 3
{55 	
form66 
.66 
Hide66 
(66 
)66 
;66 
FrmUpdateToolRate77 
nextForm77 &
=77' (
new77) ,
FrmUpdateToolRate77- >
(77> ?
this77? C
,77C D
_rateService77E Q
)77Q R
;77R S
nextForm88 
.88 

ShowDialog88 
(88  
)88  !
;88! "
form99 
.99 
Close99 
(99 
)99 
;99 
}:: 	
public<< 
void<< 
NavigateToAddTool<< %
(<<% &
Form<<& *
form<<+ /
)<</ 0
{== 	
form>> 
.>> 
Hide>> 
(>> 
)>> 
;>> 

FrmAddTool?? 
nextForm?? 
=??  !
new??" %

FrmAddTool??& 0
(??0 1
this??1 5
,??5 6
_toolService??7 C
,??C D
_rateService??E Q
)??Q R
;??R S
nextForm@@ 
.@@ 

ShowDialog@@ 
(@@  
)@@  !
;@@! "
formAA 
.AA 
CloseAA 
(AA 
)AA 
;AA 
}BB 	
publicDD 
voidDD  
NavigateToUpdateToolDD (
(DD( )
FormDD) -
formDD. 2
)DD2 3
{EE 	
formFF 
.FF 
HideFF 
(FF 
)FF 
;FF 
FrmUpdateToolGG 
nextFormGG "
=GG# $
newGG% (
FrmUpdateToolGG) 6
(GG6 7
thisGG7 ;
,GG; <
_toolServiceGG= I
,GGI J
_rateServiceGGK W
)GGW X
;GGX Y
nextFormHH 
.HH 

ShowDialogHH 
(HH  
)HH  !
;HH! "
formII 
.II 
CloseII 
(II 
)II 
;II 
}JJ 	
publicLL 
voidLL  
NavigateToRemoveToolLL (
(LL( )
FormLL) -
formLL. 2
)LL2 3
{MM 	
formNN 
.NN 
HideNN 
(NN 
)NN 
;NN 
FrmRemoveToolOO 
nextFormOO "
=OO# $
newOO% (
FrmRemoveToolOO) 6
(OO6 7
thisOO7 ;
,OO; <
_toolServiceOO= I
)OOI J
;OOJ K
nextFormPP 
.PP 

ShowDialogPP 
(PP  
)PP  !
;PP! "
formQQ 
.QQ 
CloseQQ 
(QQ 
)QQ 
;QQ 
}RR 	
publicSS 
voidSS 
NavigateToViewToolsSS '
(SS' (
FormSS( ,
formSS- 1
)SS1 2
{TT 	
formUU 
.UU 
HideUU 
(UU 
)UU 
;UU 
FrmViewToolsVV 
nextFormVV !
=VV" #
newVV$ '
FrmViewToolsVV( 4
(VV4 5
thisVV5 9
,VV9 :
_toolServiceVV; G
,VVG H
_rateServiceVVI U
)VVU V
;VVV W
nextFormWW 
.WW 

ShowDialogWW 
(WW  
)WW  !
;WW! "
formXX 
.XX 
CloseXX 
(XX 
)XX 
;XX 
}YY 	
public[[ 
void[[ 
NavigateToRentTools[[ '
([[' (
Form[[( ,
form[[- 1
)[[1 2
{\\ 	
form]] 
.]] 
Hide]] 
(]] 
)]] 
;]] 
FrmRentTools^^ 
nextForm^^ !
=^^" #
new^^$ '
FrmRentTools^^( 4
(^^4 5
this^^5 9
,^^9 :
_rentalFacade^^; H
)^^H I
;^^I J
nextForm__ 
.__ 

ShowDialog__ 
(__  
)__  !
;__! "
form`` 
.`` 
Close`` 
(`` 
)`` 
;`` 
}aa 	
publiccc 
voidcc !
NavigateToReturnToolscc )
(cc) *
Formcc* .
formcc/ 3
)cc3 4
{dd 	
formee 
.ee 
Hideee 
(ee 
)ee 
;ee 
FrmReturnToolsff 
nextFormff #
=ff$ %
newff& )
FrmReturnToolsff* 8
(ff8 9
thisff9 =
,ff= >
_rentalServiceff? M
)ffM N
;ffN O
nextFormgg 
.gg 

ShowDialoggg 
(gg  
)gg  !
;gg! "
formhh 
.hh 
Closehh 
(hh 
)hh 
;hh 
}ii 	
publickk 
voidkk !
NavigateToViewRentalskk )
(kk) *
Formkk* .
formkk/ 3
)kk3 4
{ll 	
formmm 
.mm 
Hidemm 
(mm 
)mm 
;mm 
FrmViewRentalsnn 
nextFormnn #
=nn$ %
newnn& )
FrmViewRentalsnn* 8
(nn8 9
thisnn9 =
)nn= >
;nn> ?
nextFormoo 
.oo 

ShowDialogoo 
(oo  
)oo  !
;oo! "
formpp 
.pp 
Closepp 
(pp 
)pp 
;pp 
}qq 	
publicrr 
voidrr !
NavigateToAddCustomerrr )
(rr) *
Formrr* .
formrr/ 3
)rr3 4
{ss 	
formtt 
.tt 
Hidett 
(tt 
)tt 
;tt 
FrmAddCustomeruu 
nextFormuu #
=uu$ %
newuu& )
FrmAddCustomeruu* 8
(uu8 9
thisuu9 =
,uu= >
_customerServiceuu? O
)uuO P
;uuP Q
nextFormvv 
.vv 

ShowDialogvv 
(vv  
)vv  !
;vv! "
formww 
.ww 
Closeww 
(ww 
)ww 
;ww 
}xx 	
publicyy 
voidyy $
NavigateToUpdateCustomeryy ,
(yy, -
Formyy- 1
formyy2 6
)yy6 7
{zz 	
form{{ 
.{{ 
Hide{{ 
({{ 
){{ 
;{{ 
FrmUpdateCustomer|| 
nextForm|| &
=||' (
new||) ,
FrmUpdateCustomer||- >
(||> ?
this||? C
,||C D
_customerService||E U
)||U V
;||V W
nextForm}} 
.}} 

ShowDialog}} 
(}}  
)}}  !
;}}! "
form~~ 
.~~ 
Close~~ 
(~~ 
)~~ 
;~~ 
} 	
public
ÄÄ 
void
ÄÄ %
NavigateToViewCustomers
ÄÄ +
(
ÄÄ+ ,
Form
ÄÄ, 0
form
ÄÄ1 5
)
ÄÄ5 6
{
ÅÅ 	
form
ÇÇ 
.
ÇÇ 
Hide
ÇÇ 
(
ÇÇ 
)
ÇÇ 
;
ÇÇ 
FrmViewCustomers
ÉÉ 
nextForm
ÉÉ %
=
ÉÉ& '
new
ÉÉ( +
FrmViewCustomers
ÉÉ, <
(
ÉÉ< =
this
ÉÉ= A
,
ÉÉA B
_customerService
ÉÉC S
)
ÉÉS T
;
ÉÉT U
nextForm
ÑÑ 
.
ÑÑ 

ShowDialog
ÑÑ 
(
ÑÑ  
)
ÑÑ  !
;
ÑÑ! "
form
ÖÖ 
.
ÖÖ 
Close
ÖÖ 
(
ÖÖ 
)
ÖÖ 
;
ÖÖ 
}
ÜÜ 	
public
àà 
void
àà  
NavigateToAnalysis
àà &
(
àà& '
Form
àà' +
form
àà, 0
)
àà0 1
{
ââ 	
form
ää 
.
ää 
Hide
ää 
(
ää 
)
ää 
;
ää 
FrmAnalysis
ãã 
nextForm
ãã  
=
ãã! "
new
ãã# &
FrmAnalysis
ãã' 2
(
ãã2 3
this
ãã3 7
,
ãã7 8
_analysisService
ãã9 I
)
ããI J
;
ããJ K
nextForm
åå 
.
åå 

ShowDialog
åå 
(
åå  
)
åå  !
;
åå! "
form
çç 
.
çç 
Close
çç 
(
çç 
)
çç 
;
çç 
}
éé 	
public
êê 
void
êê  
NavigateToMainMenu
êê &
(
êê& '
Form
êê' +
form
êê, 0
)
êê0 1
{
ëë 	
form
íí 
.
íí 
Hide
íí 
(
íí 
)
íí 
;
íí 
FrmMainMenu
ìì 
nextForm
ìì  
=
ìì! "
new
ìì# &
FrmMainMenu
ìì' 2
(
ìì2 3
this
ìì3 7
)
ìì7 8
;
ìì8 9
nextForm
îî 
.
îî 

ShowDialog
îî 
(
îî  
)
îî  !
;
îî! "
form
ïï 
.
ïï 
Close
ïï 
(
ïï 
)
ïï 
;
ïï 
}
ññ 	
}
óó 
}òò Ì
NC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Miscellaneous.cs
	namespace 	
ToolSYS
 
. 
Presentation 
{ 
static 

class 
Miscellaneous 
{ 
public 
static 
void %
SetDataGridViewProperties 4
(4 5
DataGridView5 A
dgvB E
)E F
{ 	
dgv 
. $
AllowUserToResizeColumns (
=) *
true+ /
;/ 0
dgv		 
.		 
AllowUserToAddRows		 "
=		# $
false		% *
;		* +
dgv

 
.

 !
AllowUserToResizeRows

 %
=

& '
false

( -
;

- .
dgv 
. 
AutoSizeColumnsMode #
=$ %+
DataGridViewAutoSizeColumnsMode& E
.E F
FillF J
;J K
} 	
} 
} ∞9
SC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Forms\frmViewTools.cs
	namespace 	
ToolSYS
 
. 
Presentation 
. 
Forms $
{ 
public 

partial 
class 
FrmViewTools %
:& '
NavForm( /
{ 
private		 
readonly		 
IToolService		 %
_toolService		& 2
;		2 3
private

 
readonly

 
IRateService

 %
_rateService

& 2
;

2 3
public 
FrmViewTools 
( 
INavigation '

navigation( 2
,2 3
IToolService4 @
toolServiceA L
,L M
IRateServiceN Z
rateService[ f
)f g
:h i
basej n
(n o

navigationo y
)y z
{ 	
InitializeComponent 
(  
)  !
;! "
_toolService 
= 
toolService &
;& '
_rateService 
= 
rateService &
;& '
} 	
private 
void 
frmViewTools_Load &
(& '
object' -
sender. 4
,4 5
	EventArgs6 ?
e@ A
)A B
{ 	
cboCategories 
. 
Items 
.  
Add  #
(# $
$str$ &
)& '
;' (
cboCategories 
. 
Items 
.  
Add  #
(# $
$str$ &
)& '
;' (
DataSet 

categories 
=  
_rateService! -
.- .
GetAllCategories. >
(> ?
)? @
;@ A
foreach 
( 
DataRow 
row  
in! #

categories$ .
.. /
Tables/ 5
[5 6
$num6 7
]7 8
.8 9
Rows9 =
)= >
{ 
string 
category 
=  !
row" %
[% &
$str& 4
]4 5
+6 7
$str8 =
+> ?
row@ C
[C D
$strD R
]R S
;S T
cboCategories 
. 
Items #
.# $
Add$ '
(' (
category( 0
)0 1
;1 2
} 
	cboStatus 
. 
Items 
. 
Add 
(  
$str  "
)" #
;# $
	cboStatus   
.   
Items   
.   
Add   
(    
$str    (
)  ( )
;  ) *
	cboStatus!! 
.!! 
Items!! 
.!! 
Add!! 
(!!  
$str!!  )
)!!) *
;!!* +
	cboStatus"" 
."" 
Items"" 
."" 
Add"" 
(""  
$str""  1
)""1 2
;""2 3
this## 
.## 
AcceptButton## 
=## 
	btnSearch##  )
;##) *
}$$ 	
private&& 
void&& 
btnSearch_Click&& $
(&&$ %
object&&% +
sender&&, 2
,&&2 3
	EventArgs&&4 =
e&&> ?
)&&? @
{'' 	
try(( 
{)) 
string** 
toolId** 
=** 
	txtToolID**  )
.**) *
Text*** .
;**. /
string++ 
categoryCode++ #
=++$ %
cboCategories++& 3
.++3 4
SelectedItem++4 @
!=++A C
null++D H
?++I J
cboCategories++K X
.++X Y
SelectedItem++Y e
.++e f
ToString++f n
(++n o
)++o p
:++q r
string++s y
.++y z
Empty++z 
;	++ Ä
string,, 
description,, "
=,,# $
txtDescription,,% 3
.,,3 4
Text,,4 8
;,,8 9
string-- 
manufacturer-- #
=--$ %
txtManufacturer--& 5
.--5 6
Text--6 :
;--: ;
string.. 
status.. 
=.. 
	cboStatus..  )
...) *
SelectedItem..* 6
!=..7 9
null..: >
?..? @
	cboStatus..A J
...J K
SelectedItem..K W
...W X
ToString..X `
(..` a
)..a b
:..c d
string..e k
...k l
Empty..l q
;..q r
string// 
phrase// 
=// 
	txtPhrase//  )
.//) *
Text//* .
;//. /
DataSet11 
results11 
=11  !
_toolService11" .
.11. /
GetFilteredTools11/ ?
(11? @
toolId11@ F
,11F G
categoryCode11H T
,11T U
description11V a
,11a b
manufacturer11c o
,11o p
status11q w
,11w x
phrase11y 
)	11 Ä
;
11Ä Å
dgvTools33 
.33 

DataSource33 #
=33$ %
results33& -
.33- .
Tables33. 4
[334 5
$str335 ;
]33; <
;33< =
dgvTools44 
.44 
AutoSizeColumnsMode44 ,
=44- .+
DataGridViewAutoSizeColumnsMode44/ N
.44N O
Fill44O S
;44S T
dgvTools55 
.55 
Columns55  
[55  !
$num55! "
]55" #
.55# $
AutoSizeMode55$ 0
=551 2*
DataGridViewAutoSizeColumnMode553 Q
.55Q R
AllCells55R Z
;55Z [
}66 
catch77 
(77 
	Exception77 
ex77 
)77  
{88 

MessageBox99 
.99 
Show99 
(99  
$@"99  #
{99# $
ex99$ &
.99& '
Message99' .
}99. /
"99/ 0
,990 1
$str992 :
,99: ;
MessageBoxButtons99< M
.99M N
OK99N P
,99P Q
MessageBoxIcon99R `
.99` a
Error99a f
)99f g
;99g h
}:: 
};; 	
private== 
void== 
btnClear_Click== #
(==# $
object==$ *
sender==+ 1
,==1 2
	EventArgs==3 <
e=== >
)==> ?
{>> 	
	txtToolID?? 
.?? 
Clear?? 
(?? 
)?? 
;?? 
cboCategories@@ 
.@@ 
SelectedIndex@@ '
=@@( )
-@@* +
$num@@+ ,
;@@, -
txtDescriptionAA 
.AA 
ClearAA  
(AA  !
)AA! "
;AA" #
txtManufacturerBB 
.BB 
ClearBB !
(BB! "
)BB" #
;BB# $
	cboStatusCC 
.CC 
SelectedIndexCC #
=CC$ %
-CC& '
$numCC' (
;CC( )
	txtPhraseDD 
.DD 
ClearDD 
(DD 
)DD 
;DD 
}EE 	
}FF 
}GG ¬
UC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Forms\frmViewRentals.cs
	namespace 	
ToolSYS
 
. 
Presentation 
. 
Forms $
{ 
public 

partial 
class 
FrmViewRentals '
:( )
NavForm* 1
{ 
public 
FrmViewRentals 
( 
INavigation )

navigation* 4
)4 5
:6 7
base8 <
(< =

navigation= G
)G H
{ 	
InitializeComponent		 
(		  
)		  !
;		! "
}

 	
} 
} ú'
WC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Forms\frmViewCustomers.cs
	namespace 	
ToolSYS
 
. 
Presentation 
. 
Forms $
{ 
public 

partial 
class 
FrmViewCustomers )
:* +
NavForm, 3
{ 
private		 
readonly		 
ICustomerService		 )
_customerService		* :
;		: ;
public 
FrmViewCustomers 
(  
INavigation  +

navigation, 6
,6 7
ICustomerService8 H
customerServiceI X
)X Y
:Z [
base\ `
(` a

navigationa k
)k l
{ 	
InitializeComponent 
(  
)  !
;! "
_customerService 
= 
customerService .
;. /
} 	
private 
void 
btnSearch_Click $
($ %
object% +
sender, 2
,2 3
	EventArgs4 =
e> ?
)? @
{ 	
try 
{ 
string 

customerId !
=" #
txtCustomerID$ 1
.1 2
Text2 6
;6 7
string 
forename 
=  !
txtForename" -
.- .
Text. 2
;2 3
string 
surname 
=  

txtSurname! +
.+ ,
Text, 0
;0 1
string 
email 
= 
txtEmail '
.' (
Text( ,
;, -
string 
phone 
= 
txtPhone '
.' (
Text( ,
;, -
string 
eircode 
=  

txtEircode! +
.+ ,
Text, 0
;0 1
string 
phrase 
= 
	txtPhrase  )
.) *
Text* .
;. /
DataSet 
results 
=  !
_customerService" 2
.2 3 
GetFilteredCustomers3 G
(G H

customerIdH R
,R S
forenameT \
,\ ]
surname^ e
,e f
emailg l
,l m
phonen s
,s t
eircodeu |
,| }
phrase	~ Ñ
)
Ñ Ö
;
Ö Ü
dgvCustomers 
. 

DataSource '
=( )
results* 1
.1 2
Tables2 8
[8 9
$str9 C
]C D
;D E
dgvCustomers   
.   
AutoSizeColumnsMode   0
=  1 2+
DataGridViewAutoSizeColumnsMode  3 R
.  R S
Fill  S W
;  W X
dgvCustomers!! 
.!! 
Columns!! $
[!!$ %
$num!!% &
]!!& '
.!!' (
AutoSizeMode!!( 4
=!!5 6*
DataGridViewAutoSizeColumnMode!!7 U
.!!U V
AllCells!!V ^
;!!^ _
}"" 
catch## 
(## 
	Exception## 
ex## 
)##  
{$$ 

MessageBox%% 
.%% 
Show%% 
(%%  
$@"%%  #
{%%# $
ex%%$ &
.%%& '
Message%%' .
}%%. /
"%%/ 0
,%%0 1
$str%%2 :
,%%: ;
MessageBoxButtons%%< M
.%%M N
OK%%N P
,%%P Q
MessageBoxIcon%%R `
.%%` a
Error%%a f
)%%f g
;%%g h
}&& 
}'' 	
private)) 
void)) !
frmViewCustomers_Load)) *
())* +
object))+ 1
sender))2 8
,))8 9
	EventArgs)): C
e))D E
)))E F
{** 	
this++ 
.++ 
AcceptButton++ 
=++ 
	btnSearch++  )
;++) *
},, 	
private.. 
void.. 
btnClear_Click.. #
(..# $
object..$ *
sender..+ 1
,..1 2
	EventArgs..3 <
e..= >
)..> ?
{// 	
txtCustomerID00 
.00 
Clear00 
(00  
)00  !
;00! "
txtForename11 
.11 
Clear11 
(11 
)11 
;11  

txtSurname22 
.22 
Clear22 
(22 
)22 
;22 
txtEmail33 
.33 
Clear33 
(33 
)33 
;33 
txtPhone44 
.44 
Clear44 
(44 
)44 
;44 

txtEircode55 
.55 
Clear55 
(55 
)55 
;55 
	txtPhrase66 
.66 
Clear66 
(66 
)66 
;66 
}77 	
}88 
}99 •2
XC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Forms\frmUpdateToolRate.cs
	namespace 	
ToolSYS
 
. 
Presentation 
. 
Forms $
{ 
public 

partial 
class 
FrmUpdateToolRate *
:+ ,
NavForm- 4
{		 
private

 
readonly

 
IRateService

 %
_rateService

& 2
;

2 3
public 
FrmUpdateToolRate  
(  !
INavigation! ,

navigation- 7
,7 8
IRateService9 E
rateServiceF Q
)Q R
:S T
baseU Y
(Y Z

navigationZ d
)d e
{ 	
InitializeComponent 
(  
)  !
;! "
_rateService 
= 
rateService &
;& '
} 	
private 
void "
FrmUpdateToolRate_Load +
(+ ,
object, 2
sender3 9
,9 :
	EventArgs; D
eE F
)F G
{ 	
LoadCategories 
( 
) 
; 
} 	
private 
void .
"CboCategories_SelectedIndexChanged 7
(7 8
object8 >
sender? E
,E F
	EventArgsG P
eQ R
)R S
{ 	
if 
( 
cboCategories 
. 
SelectedIndex *
==+ -
-. /
$num/ 0
)0 1
{ 
	groupBox2 
. 
Visible !
=" #
false$ )
;) *
} 
else 
{ 
string   
categoryCode   #
=  $ %
cboCategories  & 3
.  3 4
SelectedItem  4 @
.  @ A
ToString  A I
(  I J
)  J K
.  K L
	Substring  L U
(  U V
$num  V W
,  W X
$num  Y Z
)  Z [
;  [ \
Rate!! 
rate!! 
=!! 
_rateService!! (
.!!( )!
GetRateByCategoryCode!!) >
(!!> ?
categoryCode!!? K
)!!K L
;!!L M"
txtCategoryDescription## &
.##& '
Text##' +
=##, -
rate##. 2
.##2 3
categoryDesc##3 ?
;##? @
txtRate$$ 
.$$ 
Text$$ 
=$$ 
rate$$ #
.$$# $
rate$$$ (
.$$( )
ToString$$) 1
($$1 2
)$$2 3
;$$3 4
	groupBox2&& 
.&& 
Visible&& !
=&&" #
true&&$ (
;&&( )
}'' 
}(( 	
private** 
void** 
BtnConfirm_Click** %
(**% &
object**& ,
sender**- 3
,**3 4
	EventArgs**5 >
e**? @
)**@ A
{++ 	
try,, 
{-- 
Rate.. 
rate.. 
=.. 
new.. 
Rate..  $
{// 
categoryCode00  
=00! "
cboCategories00# 0
.000 1
SelectedItem001 =
.00= >
ToString00> F
(00F G
)00G H
.00H I
	Substring00I R
(00R S
$num00S T
,00T U
$num00V W
)00W X
,00X Y
categoryDesc11  
=11! ""
txtCategoryDescription11# 9
.119 :
Text11: >
,11> ?
rate22 
=22 
Convert22 "
.22" #
	ToDecimal22# ,
(22, -
txtRate22- 4
.224 5
Text225 9
)229 :
}33 
;33 
_rateService55 
.55 

UpdateRate55 '
(55' (
rate55( ,
)55, -
;55- .

MessageBox77 
.77 
Show77 
(77  
$str77  N
,77N O
$str77P ^
,77^ _
MessageBoxButtons77` q
.77q r
OK77r t
,77t u
MessageBoxIcon	77v Ñ
.
77Ñ Ö
Information
77Ö ê
)
77ê ë
;
77ë í
	groupBox288 
.88 
Visible88 !
=88" #
false88$ )
;88) *
cboCategories99 
.99 
SelectedIndex99 +
=99, -
-99. /
$num99/ 0
;990 1
cboCategories;; 
.;; 
Items;; #
.;;# $
Clear;;$ )
(;;) *
);;* +
;;;+ ,
LoadCategories<< 
(<< 
)<<  
;<<  !
}>> 
catch?? 
(?? 
	Exception?? 
ex?? 
)??  
{@@ 

MessageBoxAA 
.AA 
ShowAA 
(AA  
$@"AA  #
{AA# $
exAA$ &
.AA& '
MessageAA' .
}AA. /
"AA/ 0
,AA0 1
$strAA2 :
,AA: ;
MessageBoxButtonsAA< M
.AAM N
OKAAN P
,AAP Q
MessageBoxIconAAR `
.AA` a
ErrorAAa f
)AAf g
;AAg h
}BB 
}CC 	
privateEE 
voidEE 
LoadCategoriesEE #
(EE# $
)EE$ %
{FF 	
cboCategoriesGG 
.GG 
ItemsGG 
.GG  
AddGG  #
(GG# $
$strGG$ &
)GG& '
;GG' (
DataSetHH 

categoriesHH 
=HH  
_rateServiceHH! -
.HH- .
GetAllCategoriesHH. >
(HH> ?
)HH? @
;HH@ A
foreachJJ 
(JJ 
DataRowJJ 
rowJJ  
inJJ! #

categoriesJJ$ .
.JJ. /
TablesJJ/ 5
[JJ5 6
$numJJ6 7
]JJ7 8
.JJ8 9
RowsJJ9 =
)JJ= >
{KK 
stringLL 
categoryLL 
=LL  !
rowLL" %
[LL% &
$strLL& 4
]LL4 5
+LL6 7
$strLL8 =
+LL> ?
rowLL@ C
[LLC D
$strLLD R
]LLR S
;LLS T
cboCategoriesMM 
.MM 
ItemsMM #
.MM# $
AddMM$ '
(MM' (
categoryMM( 0
)MM0 1
;MM1 2
}NN 
}OO 	
}PP 
}QQ År
TC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Forms\frmUpdateTool.cs
	namespace 	
ToolSYS
 
. 
Presentation 
. 
Forms $
{ 
public 

partial 
class 
FrmUpdateTool &
:' (
NavForm) 0
{		 
private

 
readonly

 
IToolService

 %
_toolService

& 2
;

2 3
private 
readonly 
IRateService %
_rateService& 2
;2 3
public 
FrmUpdateTool 
( 
INavigation (

navigation) 3
,3 4
IToolService5 A
toolServiceB M
,M N
IRateServiceO [
rateService\ g
)g h
:i j
basek o
(o p

navigationp z
)z {
{ 	
InitializeComponent 
(  
)  !
;! "
_toolService 
= 
toolService &
;& '
_rateService 
= 
rateService &
;& '
} 	
private 
void 
frmUpdateTool_Load '
(' (
object( .
sender/ 5
,5 6
	EventArgs7 @
eA B
)B C
{ 	
cboCategories 
. 
Items 
.  
Add  #
(# $
$str$ &
)& '
;' (
DataSet 

categories 
=  
_rateService! -
.- .
GetAllCategories. >
(> ?
)? @
;@ A
foreach 
( 
DataRow 
row  
in! #

categories$ .
.. /
Tables/ 5
[5 6
$num6 7
]7 8
.8 9
Rows9 =
)= >
{ 
string 
category 
=  !
row" %
[% &
$str& 4
]4 5
+6 7
$str8 =
+> ?
row@ C
[C D
$strD R
]R S
;S T
cboCategories 
. 
Items #
.# $
Add$ '
(' (
category( 0
)0 1
;1 2
cboUpdCategories  
.  !
Items! &
.& '
Add' *
(* +
category+ 3
)3 4
;4 5
} 
	cboStatus   
.   
Items   
.   
Add   
(    
$str    "
)  " #
;  # $
	cboStatus!! 
.!! 
Items!! 
.!! 
Add!! 
(!!  
$str!!  (
)!!( )
;!!) *
	cboStatus"" 
."" 
Items"" 
."" 
Add"" 
(""  
$str""  )
)"") *
;""* +
	cboStatus## 
.## 
Items## 
.## 
Add## 
(##  
$str##  1
)##1 2
;##2 3
cboUpdStatus%% 
.%% 
Items%% 
.%% 
Add%% "
(%%" #
$str%%# +
)%%+ ,
;%%, -
cboUpdStatus&& 
.&& 
Items&& 
.&& 
Add&& "
(&&" #
$str&&# 4
)&&4 5
;&&5 6
this'' 
.'' 
AcceptButton'' 
='' 
	btnSearch''  )
;'') *
}(( 	
private** 
void** 
btnSearch_Click** $
(**$ %
object**% +
sender**, 2
,**2 3
	EventArgs**4 =
e**> ?
)**? @
{++ 	
try,, 
{-- 
string.. 
toolId.. 
=.. 
	txtToolID..  )
...) *
Text..* .
;... /
string// 
categoryCode// #
=//$ %
cboCategories//& 3
.//3 4
SelectedItem//4 @
!=//A C
null//D H
?//I J
cboCategories//K X
.//X Y
SelectedItem//Y e
.//e f
ToString//f n
(//n o
)//o p
://q r
string//s y
.//y z
Empty//z 
;	// Ä
string00 
description00 "
=00# $
txtDescription00% 3
.003 4
Text004 8
;008 9
string11 
manufacturer11 #
=11$ %
txtManufacturer11& 5
.115 6
Text116 :
;11: ;
string22 
status22 
=22 
	cboStatus22  )
.22) *
SelectedItem22* 6
!=227 9
null22: >
?22? @
	cboStatus22A J
.22J K
SelectedItem22K W
.22W X
ToString22X `
(22` a
)22a b
:22c d
string22e k
.22k l
Empty22l q
;22q r
string33 
phrase33 
=33 
	txtPhrase33  )
.33) *
Text33* .
;33. /
DataSet55 
results55 
=55  !
_toolService55" .
.55. /
GetFilteredTools55/ ?
(55? @
toolId55@ F
,55F G
categoryCode55H T
,55T U
description55V a
,55a b
manufacturer55c o
,55o p
status55q w
,55w x
phrase55y 
)	55 Ä
;
55Ä Å
dgvTools77 
.77 

DataSource77 #
=77$ %
results77& -
.77- .
Tables77. 4
[774 5
$str775 ;
]77; <
;77< =
dgvTools88 
.88 
AutoSizeColumnsMode88 ,
=88- .+
DataGridViewAutoSizeColumnsMode88/ N
.88N O
Fill88O S
;88S T
dgvTools99 
.99 
Columns99  
[99  !
$num99! "
]99" #
.99# $
AutoSizeMode99$ 0
=991 2*
DataGridViewAutoSizeColumnMode993 Q
.99Q R
AllCells99R Z
;99Z [
}:: 
catch;; 
(;; 
	Exception;; 
ex;; 
);;  
{<< 

MessageBox== 
.== 
Show== 
(==  
$@"==  #
{==# $
ex==$ &
.==& '
Message==' .
}==. /
"==/ 0
,==0 1
$str==2 :
,==: ;
MessageBoxButtons==< M
.==M N
OK==N P
,==P Q
MessageBoxIcon==R `
.==` a
Error==a f
)==f g
;==g h
}>> 
}?? 	
privateAA 
voidAA 
dgvTools_CellClickAA '
(AA' (
objectAA( .
senderAA/ 5
,AA5 6%
DataGridViewCellEventArgsAA7 P
eAAQ R
)AAR S
{BB 	
ifCC 
(CC 
dgvToolsCC 
.CC 

CurrentRowCC #
!=CC$ &
nullCC' +
)CC+ ,
{DD 
txtUpdToolIDEE 
.EE 
TextEE !
=EE" #
dgvToolsEE$ ,
.EE, -

CurrentRowEE- 7
.EE7 8
CellsEE8 =
[EE= >
$numEE> ?
]EE? @
.EE@ A
ValueEEA F
.EEF G
ToStringEEG O
(EEO P
)EEP Q
;EEQ R
stringGG 
categoryCodeGG #
=GG$ %
dgvToolsGG& .
.GG. /

CurrentRowGG/ 9
.GG9 :
CellsGG: ?
[GG? @
$numGG@ A
]GGA B
.GGB C
ValueGGC H
.GGH I
ToStringGGI Q
(GGQ R
)GGR S
;GGS T
cboUpdCategoriesHH  
.HH  !
SelectedItemHH! -
=HH. /
cboUpdCategoriesHH0 @
.HH@ A
ItemsHHA F
.HHF G
CastHHG K
<HHK L
stringHHL R
>HHR S
(HHS T
)HHT U
.II 
FirstOrDefaultII #
(II# $
itemII$ (
=>II) +
itemII, 0
.II0 1

StartsWithII1 ;
(II; <
categoryCodeII< H
)IIH I
)III J
;IIJ K
txtUpdDescriptionKK !
.KK! "
TextKK" &
=KK' (
dgvToolsKK) 1
.KK1 2

CurrentRowKK2 <
.KK< =
CellsKK= B
[KKB C
$numKKC D
]KKD E
.KKE F
ValueKKF K
.KKK L
ToStringKKL T
(KKT U
)KKU V
;KKV W
txtUpdManufacturerLL "
.LL" #
TextLL# '
=LL( )
dgvToolsLL* 2
.LL2 3

CurrentRowLL3 =
.LL= >
CellsLL> C
[LLC D
$numLLD E
]LLE F
.LLF G
ValueLLG L
.LLL M
ToStringLLM U
(LLU V
)LLV W
;LLW X
stringNN 
statusNN 
=NN 
dgvToolsNN  (
.NN( )

CurrentRowNN) 3
.NN3 4
CellsNN4 9
[NN9 :
$numNN: ;
]NN; <
.NN< =
ValueNN= B
.NNB C
ToStringNNC K
(NNK L
)NNL M
;NNM N
cboUpdStatusOO 
.OO 
SelectedItemOO )
=OO* +
cboUpdStatusOO, 8
.OO8 9
ItemsOO9 >
.OO> ?
CastOO? C
<OOC D
stringOOD J
>OOJ K
(OOK L
)OOL M
.PP 
FirstOrDefaultPP #
(PP# $
itemPP$ (
=>PP) +
itemPP, 0
.PP0 1

StartsWithPP1 ;
(PP; <
statusPP< B
)PPB C
)PPC D
;PPD E
}QQ 
}RR 	
privateTT 
voidTT 
btnUpdate_ClickTT $
(TT$ %
objectTT% +
senderTT, 2
,TT2 3
	EventArgsTT4 =
eTT> ?
)TT? @
{UU 	
tryVV 
{WW 
intXX 
toolIdXX 
=XX 
ConvertXX $
.XX$ %
ToInt32XX% ,
(XX, -
	txtToolIDXX- 6
.XX6 7
TextXX7 ;
)XX; <
;XX< =
stringYY 
categoryCodeYY #
=YY$ %
cboCategoriesYY& 3
.YY3 4
SelectedItemYY4 @
.YY@ A
ToStringYYA I
(YYI J
)YYJ K
.YYK L
	SubstringYYL U
(YYU V
$numYYV W
,YYW X
$numYYY Z
)YYZ [
;YY[ \
stringZZ 
descriptionZZ "
=ZZ# $
txtDescriptionZZ% 3
.ZZ3 4
TextZZ4 8
;ZZ8 9
string[[ 
manufacturer[[ #
=[[$ %
txtManufacturer[[& 5
.[[5 6
Text[[6 :
;[[: ;
string\\ 
status\\ 
=\\ 
cboUpdStatus\\  ,
.\\, -
SelectedItem\\- 9
.\\9 :
ToString\\: B
(\\B C
)\\C D
.\\D E
	Substring\\E N
(\\N O
$num\\O P
,\\P Q
$num\\R S
)\\S T
;\\T U
Tool__ 
tool__ 
=__ 
new__ 
Tool__  $
{`` 
toolIdaa 
=aa 
toolIdaa #
,aa# $
categoryCodebb  
=bb! "
categoryCodebb# /
,bb/ 0
toolDescriptioncc #
=cc$ %
descriptioncc& 1
,cc1 2
toolManufacturerdd $
=dd% &
manufacturerdd' 3
,dd3 4

toolStatusee 
=ee  
statusee! '
}ff 
;ff 
_toolServicehh 
.hh 

UpdateToolhh '
(hh' (
toolhh( ,
)hh, -
;hh- .

MessageBoxjj 
.jj 
Showjj 
(jj  
$strjj  E
,jjE F
$strjjG Q
,jjQ R
MessageBoxButtonsjjS d
.jjd e
OKjje g
,jjg h
MessageBoxIconjji w
.jjw x
Information	jjx É
)
jjÉ Ñ
;
jjÑ Ö
ClearUpdateInputsll !
(ll! "
)ll" #
;ll# $
	btnSearchmm 
.mm 
PerformClickmm &
(mm& '
)mm' (
;mm( )
}nn 
catchoo 
(oo 
	Exceptionoo 
exoo 
)oo  
{pp 

MessageBoxqq 
.qq 
Showqq 
(qq  
$@"qq  #
$strqq# *
{qq* +
exqq+ -
.qq- .
Messageqq. 5
}qq5 6
"qq6 7
,qq7 8
$strqq9 H
,qqH I
MessageBoxButtonsqqJ [
.qq[ \
OKqq\ ^
,qq^ _
MessageBoxIconqq` n
.qqn o
Errorqqo t
)qqt u
;qqu v
}rr 
}ss 	
privateuu 
voiduu 
ClearUpdateInputsuu &
(uu& '
)uu' (
{vv 	
txtUpdToolIDww 
.ww 
Clearww 
(ww 
)ww  
;ww  !
txtUpdDescriptionxx 
.xx 
Clearxx #
(xx# $
)xx$ %
;xx% &
txtUpdManufactureryy 
.yy 
Clearyy $
(yy$ %
)yy% &
;yy& '
cboUpdCategorieszz 
.zz 
SelectedIndexzz *
=zz+ ,
-zz- .
$numzz. /
;zz/ 0
cboUpdStatus{{ 
.{{ 
SelectedIndex{{ &
={{' (
-{{) *
$num{{* +
;{{+ ,
}|| 	
private~~ 
void~~ 
btnClear_Click~~ #
(~~# $
object~~$ *
sender~~+ 1
,~~1 2
	EventArgs~~3 <
e~~= >
)~~> ?
{ 	
	txtToolID
ÄÄ 
.
ÄÄ 
Clear
ÄÄ 
(
ÄÄ 
)
ÄÄ 
;
ÄÄ 
cboCategories
ÅÅ 
.
ÅÅ 
SelectedIndex
ÅÅ '
=
ÅÅ( )
-
ÅÅ* +
$num
ÅÅ+ ,
;
ÅÅ, -
txtDescription
ÇÇ 
.
ÇÇ 
Clear
ÇÇ  
(
ÇÇ  !
)
ÇÇ! "
;
ÇÇ" #
txtManufacturer
ÉÉ 
.
ÉÉ 
Clear
ÉÉ !
(
ÉÉ! "
)
ÉÉ" #
;
ÉÉ# $
	cboStatus
ÑÑ 
.
ÑÑ 
SelectedIndex
ÑÑ #
=
ÑÑ$ %
-
ÑÑ& '
$num
ÑÑ' (
;
ÑÑ( )
	txtPhrase
ÖÖ 
.
ÖÖ 
Clear
ÖÖ 
(
ÖÖ 
)
ÖÖ 
;
ÖÖ 
}
ÜÜ 	
}
áá 
}àà âV
XC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Forms\frmUpdateCustomer.cs
	namespace 	
ToolSYS
 
. 
Presentation 
. 
Forms $
{ 
public		 

partial		 
class		 
FrmUpdateCustomer		 *
:		+ ,
NavForm		- 4
{

 
private 
readonly 
ICustomerService )
_customerService* :
;: ;
public 
FrmUpdateCustomer  
(  !
INavigation! ,

navigation- 7
,7 8
ICustomerService9 I
customerServiceJ Y
)Y Z
:[ \
base] a
(a b

navigationb l
)l m
{ 	
InitializeComponent 
(  
)  !
;! "
_customerService 
= 
customerService .
;. /
} 	
private 
void 
btnSearch_Click $
($ %
object% +
sender, 2
,2 3
	EventArgs4 =
e> ?
)? @
{ 	
try 
{ 
string 

customerId !
=" #
txtCustomerID$ 1
.1 2
Text2 6
;6 7
string 
forename 
=  !
txtForename" -
.- .
Text. 2
;2 3
string 
surname 
=  

txtSurname! +
.+ ,
Text, 0
;0 1
string 
email 
= 
txtEmail '
.' (
Text( ,
;, -
string 
phone 
= 
txtPhone '
.' (
Text( ,
;, -
string 
eircode 
=  

txtEircode! +
.+ ,
Text, 0
;0 1
string 
phrase 
= 
	txtPhrase  )
.) *
Text* .
;. /
DataSet 
results 
=  !
_customerService" 2
.2 3 
GetFilteredCustomers3 G
(G H

customerIdH R
,R S
forenameT \
,\ ]
surname^ e
,e f
emailg l
,l m
phonen s
,s t
eircodeu |
,| }
phrase	~ Ñ
)
Ñ Ö
;
Ö Ü
dgvCustomers   
.   

DataSource   '
=  ( )
results  * 1
.  1 2
Tables  2 8
[  8 9
$str  9 C
]  C D
;  D E
dgvCustomers!! 
.!! 
AutoSizeColumnsMode!! 0
=!!1 2+
DataGridViewAutoSizeColumnsMode!!3 R
.!!R S
Fill!!S W
;!!W X
dgvCustomers"" 
."" 
Columns"" $
[""$ %
$num""% &
]""& '
.""' (
AutoSizeMode""( 4
=""5 6*
DataGridViewAutoSizeColumnMode""7 U
.""U V
AllCells""V ^
;""^ _
}## 
catch$$ 
($$ 
ValidationException$$ &
ex$$' )
)$$) *
{%% 

MessageBox&& 
.&& 
Show&& 
(&&  
$"&&  "
$str&&" 5
{&&5 6
ex&&6 8
.&&8 9
Message&&9 @
}&&@ A
"&&A B
,&&B C
$str&&D V
,&&V W
MessageBoxButtons&&X i
.&&i j
OK&&j l
,&&l m
MessageBoxIcon&&n |
.&&| }
Warning	&&} Ñ
)
&&Ñ Ö
;
&&Ö Ü
}'' 
catch(( 
((( 
	Exception(( 
ex(( 
)((  
{)) 

MessageBox** 
.** 
Show** 
(**  
$@"**  #
{**# $
ex**$ &
.**& '
Message**' .
}**. /
"**/ 0
,**0 1
$str**2 :
,**: ;
MessageBoxButtons**< M
.**M N
OK**N P
,**P Q
MessageBoxIcon**R `
.**` a
Error**a f
)**f g
;**g h
}++ 
},, 	
private.. 
void.. 
btnClear_Click.. #
(..# $
object..$ *
sender..+ 1
,..1 2
	EventArgs..3 <
e..= >
)..> ?
{// 	
txtCustomerID00 
.00 
Clear00 
(00  
)00  !
;00! "
txtForename11 
.11 
Clear11 
(11 
)11 
;11  

txtSurname22 
.22 
Clear22 
(22 
)22 
;22 
txtEmail33 
.33 
Clear33 
(33 
)33 
;33 
txtPhone44 
.44 
Clear44 
(44 
)44 
;44 

txtEircode55 
.55 
Clear55 
(55 
)55 
;55 
	txtPhrase66 
.66 
Clear66 
(66 
)66 
;66 
}77 	
private99 
void99 
btnUpdate_Click99 $
(99$ %
object99% +
sender99, 2
,992 3
	EventArgs994 =
e99> ?
)99? @
{:: 	
try;; 
{<< 
Customer== 
customer== !
===" #
new==$ '
Customer==( 0
{==1 2

customerId>> 
=>>  
Convert>>! (
.>>( )
ToInt32>>) 0
(>>0 1
txtUpdCustomerID>>1 A
.>>A B
Text>>B F
)>>F G
,>>G H
forename?? 
=?? 
txtUpdForename?? -
.??- .
Text??. 2
,??2 3
surname@@ 
=@@ 
txtUpdSurname@@ +
.@@+ ,
Text@@, 0
,@@0 1
emailAA 
=AA 
txtUpdEmailAA '
.AA' (
TextAA( ,
,AA, -
phoneBB 
=BB 
txtUpdPhoneBB '
.BB' (
TextBB( ,
,BB, -
eircodeCC 
=CC 
txtUpdEircodeCC +
.CC+ ,
TextCC, 0
}DD 
;DD 
_customerServiceFF  
.FF  !
UpdateCustomerFF! /
(FF/ 0
customerFF0 8
)FF8 9
;FF9 :

MessageBoxHH 
.HH 
ShowHH 
(HH  
$strHH  J
,HHJ K
$strHHL Z
,HHZ [
MessageBoxButtonsHH\ m
.HHm n
OKHHn p
,HHp q
MessageBoxIcon	HHr Ä
.
HHÄ Å
Information
HHÅ å
)
HHå ç
;
HHç é
txtUpdCustomerIDII  
.II  !
ClearII! &
(II& '
)II' (
;II( )
txtUpdForenameJJ 
.JJ 
ClearJJ $
(JJ$ %
)JJ% &
;JJ& '
txtUpdSurnameKK 
.KK 
ClearKK #
(KK# $
)KK$ %
;KK% &
txtUpdEmailLL 
.LL 
ClearLL !
(LL! "
)LL" #
;LL# $
txtUpdPhoneMM 
.MM 
ClearMM !
(MM! "
)MM" #
;MM# $
txtUpdEircodeNN 
.NN 
ClearNN #
(NN# $
)NN$ %
;NN% &
}OO 
catchPP 
(PP 
	ExceptionPP 
exPP 
)PP  
{QQ 

MessageBoxSS 
.SS 
ShowSS 
(SS  
$@"SS  #
{SS# $
exSS$ &
.SS& '
MessageSS' .
}SS. /
"SS/ 0
,SS0 1
$strSS2 :
,SS: ;
MessageBoxButtonsSS< M
.SSM N
OKSSN P
,SSP Q
MessageBoxIconSSR `
.SS` a
ErrorSSa f
)SSf g
;SSg h
}TT 
}UU 	
privateWW 
voidWW "
dgvCustomers_CellClickWW +
(WW+ ,
objectWW, 2
senderWW3 9
,WW9 :%
DataGridViewCellEventArgsWW; T
eWWU V
)WWV W
{XX 	
txtUpdCustomerIDYY 
.YY 
TextYY !
=YY" #
dgvCustomersYY$ 0
.YY0 1
RowsYY1 5
[YY5 6
dgvCustomersYY6 B
.YYB C

CurrentRowYYC M
.YYM N
IndexYYN S
]YYS T
.YYT U
CellsYYU Z
[YYZ [
$numYY[ \
]YY\ ]
.YY] ^
ValueYY^ c
.YYc d
ToStringYYd l
(YYl m
)YYm n
;YYn o
txtUpdForenameZZ 
.ZZ 
TextZZ 
=ZZ  !
dgvCustomersZZ" .
.ZZ. /
RowsZZ/ 3
[ZZ3 4
dgvCustomersZZ4 @
.ZZ@ A

CurrentRowZZA K
.ZZK L
IndexZZL Q
]ZZQ R
.ZZR S
CellsZZS X
[ZZX Y
$numZZY Z
]ZZZ [
.ZZ[ \
ValueZZ\ a
.ZZa b
ToStringZZb j
(ZZj k
)ZZk l
;ZZl m
txtUpdSurname[[ 
.[[ 
Text[[ 
=[[  
dgvCustomers[[! -
.[[- .
Rows[[. 2
[[[2 3
dgvCustomers[[3 ?
.[[? @

CurrentRow[[@ J
.[[J K
Index[[K P
][[P Q
.[[Q R
Cells[[R W
[[[W X
$num[[X Y
][[Y Z
.[[Z [
Value[[[ `
.[[` a
ToString[[a i
([[i j
)[[j k
;[[k l
txtUpdEmail\\ 
.\\ 
Text\\ 
=\\ 
dgvCustomers\\ +
.\\+ ,
Rows\\, 0
[\\0 1
dgvCustomers\\1 =
.\\= >

CurrentRow\\> H
.\\H I
Index\\I N
]\\N O
.\\O P
Cells\\P U
[\\U V
$num\\V W
]\\W X
.\\X Y
Value\\Y ^
.\\^ _
ToString\\_ g
(\\g h
)\\h i
;\\i j
txtUpdPhone]] 
.]] 
Text]] 
=]] 
dgvCustomers]] +
.]]+ ,
Rows]], 0
[]]0 1
dgvCustomers]]1 =
.]]= >

CurrentRow]]> H
.]]H I
Index]]I N
]]]N O
.]]O P
Cells]]P U
[]]U V
$num]]V W
]]]W X
.]]X Y
Value]]Y ^
.]]^ _
ToString]]_ g
(]]g h
)]]h i
;]]i j
txtUpdEircode^^ 
.^^ 
Text^^ 
=^^  
dgvCustomers^^! -
.^^- .
Rows^^. 2
[^^2 3
dgvCustomers^^3 ?
.^^? @

CurrentRow^^@ J
.^^J K
Index^^K P
]^^P Q
.^^Q R
Cells^^R W
[^^W X
$num^^X Y
]^^Y Z
.^^Z [
Value^^[ `
.^^` a
ToString^^a i
(^^i j
)^^j k
;^^k l
}__ 	
}`` 
}aa Ú
YC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Forms\frmSetToolCategory.cs
	namespace 	
ToolSYS
 
. 
Presentation 
. 
Forms $
{ 
public 

partial 
class 
FrmSetToolCategory +
:, -
NavForm. 5
{ 
private		 
readonly		 
IRateService		 %
_rateService		& 2
;		2 3
public

 
FrmSetToolCategory

 !
(

! "
INavigation

" -

navigation

. 8
,

8 9
IRateService

: F
rateService

G R
)

R S
:

T U
base

V Z
(

Z [

navigation

[ e
)

e f
{ 	
InitializeComponent 
(  
)  !
;! "
_rateService 
= 
rateService &
;& '
} 	
private 
void 
btnConfirm_Click %
(% &
object& ,
sender- 3
,3 4
	EventArgs5 >
e? @
)@ A
{ 	
try 
{ 
Rate 
rate 
= 
new 
Rate  $
{ 
categoryCode  
=! "
txtCategoryCode# 2
.2 3
Text3 7
,7 8
categoryDesc  
=! "
txtCategoryDesc# 2
.2 3
Text3 7
,7 8
rate 
= 
decimal "
." #
Parse# (
(( )
txtRate) 0
.0 1
Text1 5
)5 6
} 
; 
_rateService 
. 
AddRate $
($ %
rate% )
)) *
;* +

MessageBox 
. 
Show 
(  
$str  ;
,; <
$str= G
,G H
MessageBoxButtonsI Z
.Z [
OK[ ]
,] ^
MessageBoxIcon "
." #
Information# .
). /
;/ 0
txtCategoryCode 
.  
Clear  %
(% &
)& '
;' (
txtCategoryDesc   
.    
Clear    %
(  % &
)  & '
;  ' (
txtRate!! 
.!! 
Clear!! 
(!! 
)!! 
;!!  
}"" 
catch## 
(## 
	Exception## 
ex## 
)##  
{$$ 

MessageBox%% 
.%% 
Show%% 
(%%  
$@"%%  #
{%%# $
ex%%$ &
.%%& '
Message%%' .
}%%. /
"%%/ 0
,%%0 1
$str%%2 :
,%%: ;
MessageBoxButtons%%< M
.%%M N
OK%%N P
,%%P Q
MessageBoxIcon%%R `
.%%` a
Error%%a f
)%%f g
;%%g h
}&& 
}'' 	
}(( 
})) ú@
UC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Forms\frmReturnTools.cs
	namespace 	
ToolSYS
 
. 
Presentation 
. 
Forms $
{ 
public 

partial 
class 
FrmReturnTools '
:( )
NavForm* 1
{ 
private		 
readonly		 
IRentalService		 '
_rentalService		( 6
;		6 7
public

 
FrmReturnTools

 
(

 
INavigation

 )

navigation

* 4
,

4 5
IRentalService

6 D
rentalService

E R
)

R S
:

T U
base

V Z
(

Z [

navigation

[ e
)

e f
{ 	
InitializeComponent 
(  
)  !
;! "
_rentalService 
= 
rentalService *
;* +
} 	
private 
void 
btnConfirm_Click %
(% &
object& ,
sender- 3
,3 4
	EventArgs5 >
e? @
)@ A
{ 	
if 
( 
int 
. 
TryParse 
( 
txtRentalID (
.( )
Text) -
,- .
out/ 2
int3 6
rentalId7 ?
)? @
)@ A
{ 
try 
{ 
	DataTable 
rentalItems )
=* +
_rentalService, :
.: ;
GetRentalItems; I
(I J
rentalIdJ R
)R S
;S T
dgvRentalItems "
." #

DataSource# -
=. /
rentalItems0 ;
;; <
dgvRentalItems "
." #
AutoSizeColumnsMode# 6
=7 8+
DataGridViewAutoSizeColumnsMode9 X
.X Y
FillY ]
;] ^
dgvRentalItems "
." #
Columns# *
[* +
$num+ ,
], -
.- .
AutoSizeMode. :
=; <*
DataGridViewAutoSizeColumnMode= [
.[ \
AllCells\ d
;d e
gbxReturnTool !
.! "
Visible" )
=* +
true, 0
;0 1
	txtToolID 
. 
Focus #
(# $
)$ %
;% &
gbxRentalID 
.  
Enabled  '
=( )
false* /
;/ 0
} 
catch   
(   
	Exception    
ex  ! #
)  # $
{!! 

MessageBox"" 
."" 
Show"" #
(""# $
$@"""$ '
$str""' .
{"". /
ex""/ 1
.""1 2
Message""2 9
}""9 :
""": ;
,""; <
$str""= E
,""E F
MessageBoxButtons""G X
.""X Y
OK""Y [
,""[ \
MessageBoxIcon""] k
.""k l
Error""l q
)""q r
;""r s
}## 
}$$ 
else%% 
{&& 

MessageBox'' 
.'' 
Show'' 
(''  
$str''  D
,''D E
$str''F P
,''P Q
MessageBoxButtons''R c
.''c d
OK''d f
,''f g
MessageBoxIcon''h v
.''v w
Error''w |
)''| }
;''} ~
txtRentalID(( 
.(( 
Focus(( !
(((! "
)((" #
;((# $
})) 
}** 	
private,, 
void,, 
btnReturn_Click,, $
(,,$ %
object,,% +
sender,,, 2
,,,2 3
	EventArgs,,4 =
e,,> ?
),,? @
{-- 	
if.. 
(.. 
int.. 
... 
TryParse.. 
(.. 
txtRentalID.. (
...( )
Text..) -
,..- .
out../ 2
int..3 6
rentalId..7 ?
)..? @
&&..A C
int..D G
...G H
TryParse..H P
(..P Q
	txtToolID..Q Z
...Z [
Text..[ _
,.._ `
out..a d
int..e h
toolId..i o
)..o p
)..p q
{// 
try00 
{11 
_rentalService33 "
.33" #

ReturnTool33# -
(33- .
rentalId33. 6
,336 7
toolId338 >
)33> ?
;33? @

MessageBox55 
.55 
Show55 #
(55# $
$str55$ B
,55B C
$str55D N
,55N O
MessageBoxButtons55P a
.55a b
OK55b d
,55d e
MessageBoxIcon55f t
.55t u
Information	55u Ä
)
55Ä Å
;
55Å Ç
	DataTable88 
rentalItems88 )
=88* +
_rentalService88, :
.88: ;
GetRentalItems88; I
(88I J
rentalId88J R
)88R S
;88S T
dgvRentalItems:: "
.::" #

DataSource::# -
=::. /
rentalItems::0 ;
;::; <
dgvRentalItems;; "
.;;" #
AutoSizeColumnsMode;;# 6
=;;7 8+
DataGridViewAutoSizeColumnsMode;;9 X
.;;X Y
Fill;;Y ]
;;;] ^
dgvRentalItems<< "
.<<" #
Columns<<# *
[<<* +
$num<<+ ,
]<<, -
.<<- .
AutoSizeMode<<. :
=<<; <*
DataGridViewAutoSizeColumnMode<<= [
.<<[ \
AllCells<<\ d
;<<d e
	txtToolID>> 
.>> 
Clear>> #
(>># $
)>>$ %
;>>% &
	txtToolID?? 
.?? 
Focus?? #
(??# $
)??$ %
;??% &
}@@ 
catchAA 
(AA 
	ExceptionAA  
exAA! #
)AA# $
{BB 

MessageBoxCC 
.CC 
ShowCC #
(CC# $
$@"CC$ '
$strCC' .
{CC. /
exCC/ 1
.CC1 2
MessageCC2 9
}CC9 :
"CC: ;
,CC; <
$strCC= E
,CCE F
MessageBoxButtonsCCG X
.CCX Y
OKCCY [
,CC[ \
MessageBoxIconCC] k
.CCk l
ErrorCCl q
)CCq r
;CCr s
}DD 
}EE 
elseFF 
{GG 

MessageBoxHH 
.HH 
ShowHH 
(HH  
$strHH  =
,HH= >
$strHH? I
,HHI J
MessageBoxButtonsHHK \
.HH\ ]
OKHH] _
,HH_ `
MessageBoxIconHHa o
.HHo p
ErrorHHp u
)HHu v
;HHv w
	txtToolIDII 
.II 
FocusII 
(II  
)II  !
;II! "
}JJ 
}KK 	
privateMM 
voidMM 
btnFinish_ClickMM $
(MM$ %
objectMM% +
senderMM, 2
,MM2 3
	EventArgsMM4 =
eMM> ?
)MM? @
{NN 	
	txtToolIDOO 
.OO 
ClearOO 
(OO 
)OO 
;OO 
txtRentalIDPP 
.PP 
ClearPP 
(PP 
)PP 
;PP  
gbxReturnToolQQ 
.QQ 
VisibleQQ !
=QQ" #
falseQQ$ )
;QQ) *
gbxRentalIDRR 
.RR 
EnabledRR 
=RR  !
trueRR" &
;RR& '
}SS 	
privateUU 
voidUU $
dgvRentalItems_CellClickUU -
(UU- .
objectUU. 4
senderUU5 ;
,UU; <%
DataGridViewCellEventArgsUU= V
eUUW X
)UUX Y
{VV 	
	txtToolIDWW 
.WW 
TextWW 
=WW 
dgvRentalItemsWW +
.WW+ ,
RowsWW, 0
[WW0 1
dgvRentalItemsWW1 ?
.WW? @

CurrentRowWW@ J
.WWJ K
IndexWWK P
]WWP Q
.WWQ R
CellsWWR W
[WWW X
$numWWX Y
]WWY Z
.WWZ [
ValueWW[ `
.WW` a
ToStringWWa i
(WWi j
)WWj k
;WWk l
}XX 	
}YY 
}ZZ ææ
SC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Forms\frmRentTools.cs
	namespace 	
ToolSYS
 
. 
Presentation 
. 
Forms $
{ 
public 

partial 
class 
FrmRentTools %
:& '
NavForm( /
{ 
private 
readonly 
IRentalFacade &
_rentalFacade' 4
;4 5
public 
FrmRentTools 
( 
INavigation '

navigation( 2
,2 3
IRentalFacade4 A
rentalFacadeB N
)N O
:P Q
baseR V
(V W

navigationW a
)a b
{ 	
InitializeComponent 
(  
)  !
;! "
_rentalFacade 
= 
rentalFacade (
;( )
} 	
private 
void 
frmRentTools_Load &
(& '
object' -
sender. 4
,4 5
	EventArgs6 ?
e@ A
)A B
{ 	
dtpFrom 
. 
MinDate 
= 
DateTime &
.& '
Today' ,
;, -
dtpTo 
. 
MinDate 
= 
DateTime $
.$ %
Today% *
;* +
txtRentalID 
. 
Text 
= 
$str !
;! "
cboCategories 
. 
Items 
.  
Add  #
(# $
$str$ &
)& '
;' (
	DataTable   

categories    
=  ! "
_rentalFacade  # 0
.  0 1
GetCategories  1 >
(  > ?
)  ? @
;  @ A
foreach"" 
("" 
DataRow"" 
row""  
in""! #

categories""$ .
."". /
Rows""/ 3
)""3 4
{## 
string$$ 
category$$ 
=$$  !
row$$" %
[$$% &
$str$$& 4
]$$4 5
+$$6 7
$str$$8 =
+$$> ?
row$$@ C
[$$C D
$str$$D R
]$$R S
;$$S T
cboCategories%% 
.%% 
Items%% #
.%%# $
Add%%$ '
(%%' (
category%%( 0
)%%0 1
;%%1 2
}&& 
	dgvRental'' 
.'' 
Columns'' 
.'' 
Add'' !
(''! "
$str''" *
,''* +
$str'', 0
)''0 1
;''1 2
	dgvRental(( 
.(( 
Columns(( 
.(( 
Add(( !
(((! "
$str((" 0
,((0 1
$str((2 A
)((A B
;((B C
	dgvRental)) 
.)) 
Columns)) 
.)) 
Add)) !
())! "
$str))" 3
,))3 4
$str))5 B
)))B C
;))C D
	dgvRental** 
.** 
Columns** 
.** 
Add** !
(**! "
$str**" 4
,**4 5
$str**6 D
)**D E
;**E F
	dgvRental++ 
.++ 
Columns++ 
.++ 
Add++ !
(++! "
$str++" ,
,++, -
$str++. 9
)++9 :
;++: ;
	dgvRental,, 
.,, 
Columns,, 
.,, 
Add,, !
(,,! "
$str,," .
,,,. /
$str,,0 =
),,= >
;,,> ?
	dgvRental-- 
.-- 
Columns-- 
.-- 
Add-- !
(--! "
$str--" -
,--- .
$str--/ ;
)--; <
;--< =
Miscellaneous.. 
... %
SetDataGridViewProperties.. 3
(..3 4
	dgvRental..4 =
)..= >
;..> ?
}// 	
private00 
void00 #
btnCustomerSearch_Click00 ,
(00, -
object00- 3
sender004 :
,00: ;
	EventArgs00< E
e00F G
)00G H
{11 	
dgvCustomers22 
.22 

DataSource22 #
=22$ %
_rentalFacade22& 3
.223 4
SearchCustomers224 C
(22C D
txtCustomerSearch22D U
.22U V
Text22V Z
)22Z [
;22[ \
dgvCustomers44 
.44 
Columns44  
[44  !
$num44! "
]44" #
.44# $

HeaderText44$ .
=44/ 0
$str441 6
;446 7
dgvCustomers55 
.55 
Columns55  
[55  !
$num55! "
]55" #
.55# $

HeaderText55$ .
=55/ 0
$str551 <
;55< =
dgvCustomers66 
.66 
Columns66  
[66  !
$num66! "
]66" #
.66# $

HeaderText66$ .
=66/ 0
$str661 ;
;66; <
dgvCustomers77 
.77 
Columns77  
[77  !
$num77! "
]77" #
.77# $

HeaderText77$ .
=77/ 0
$str771 9
;779 :
dgvCustomers88 
.88 
Columns88  
[88  !
$num88! "
]88" #
.88# $

HeaderText88$ .
=88/ 0
$str881 9
;889 :
dgvCustomers99 
.99 
Columns99  
[99  !
$num99! "
]99" #
.99# $

HeaderText99$ .
=99/ 0
$str991 ;
;99; <
Miscellaneous:: 
.:: %
SetDataGridViewProperties:: 3
(::3 4
dgvCustomers::4 @
)::@ A
;::A B
};; 	
private>> 
void>> "
dgvCustomers_CellClick>> +
(>>+ ,
object>>, 2
sender>>3 9
,>>9 :%
DataGridViewCellEventArgs>>; T
e>>U V
)>>V W
{?? 	
if@@ 
(@@ 
dgvCustomers@@ 
.@@ 

CurrentRow@@ '
!=@@( *
null@@+ /
)@@/ 0
{AA 
intBB 

customerIdBB 
=BB  
ConvertBB! (
.BB( )
ToInt32BB) 0
(BB0 1
dgvCustomersBB1 =
.BB= >

CurrentRowBB> H
.BBH I
CellsBBI N
[BBN O
$numBBO P
]BBP Q
.BBQ R
ValueBBR W
)BBW X
;BBX Y
_rentalFacadeCC 
.CC 
StartNewRentalCC ,
(CC, -

customerIdCC- 7
)CC7 8
;CC8 9
txtRentalIDEE 
.EE 
TextEE  
=EE! "
_rentalFacadeEE# 0
.EE0 1
GetCurrentRentalEE1 A
(EEA B
)EEB C
.EEC D
rentalIdEED L
.EEL M
ToStringEEM U
(EEU V
$strEEV [
)EE[ \
;EE\ ]
txtCustomerIDFF 
.FF 
TextFF "
=FF# $
dgvCustomersFF% 1
.FF1 2

CurrentRowFF2 <
.FF< =
CellsFF= B
[FFB C
$numFFC D
]FFD E
.FFE F
ValueFFF K
.FFK L
ToStringFFL T
(FFT U
)FFU V
;FFV W
txtForenameGG 
.GG 
TextGG  
=GG! "
dgvCustomersGG# /
.GG/ 0

CurrentRowGG0 :
.GG: ;
CellsGG; @
[GG@ A
$numGGA B
]GGB C
.GGC D
ValueGGD I
.GGI J
ToStringGGJ R
(GGR S
)GGS T
;GGT U

txtSurnameHH 
.HH 
TextHH 
=HH  !
dgvCustomersHH" .
.HH. /

CurrentRowHH/ 9
.HH9 :
CellsHH: ?
[HH? @
$numHH@ A
]HHA B
.HHB C
ValueHHC H
.HHH I
ToStringHHI Q
(HHQ R
)HHR S
;HHS T
txtEmailII 
.II 
TextII 
=II 
dgvCustomersII  ,
.II, -

CurrentRowII- 7
.II7 8
CellsII8 =
[II= >
$numII> ?
]II? @
.II@ A
ValueIIA F
.IIF G
ToStringIIG O
(IIO P
)IIP Q
;IIQ R
txtPhoneJJ 
.JJ 
TextJJ 
=JJ 
dgvCustomersJJ  ,
.JJ, -

CurrentRowJJ- 7
.JJ7 8
CellsJJ8 =
[JJ= >
$numJJ> ?
]JJ? @
.JJ@ A
ValueJJA F
.JJF G
ToStringJJG O
(JJO P
)JJP Q
;JJQ R

txtEircodeKK 
.KK 
TextKK 
=KK  !
dgvCustomersKK" .
.KK. /

CurrentRowKK/ 9
.KK9 :
CellsKK: ?
[KK? @
$numKK@ A
]KKA B
.KKB C
ValueKKC H
.KKH I
ToStringKKI Q
(KKQ R
)KKR S
;KKS T
}LL 
}MM 	
privateOO 
voidOO &
txtCustomerSearch_KeyPressOO /
(OO/ 0
objectOO0 6
senderOO7 =
,OO= >
KeyPressEventArgsOO? P
eOOQ R
)OOR S
{PP 	
ifQQ 
(QQ 
eQQ 
.QQ 
KeyCharQQ 
==QQ 
(QQ 
charQQ !
)QQ! "
$numQQ" $
)QQ$ %
{RR 
btnCustomerSearchSS !
.SS! "
PerformClickSS" .
(SS. /
)SS/ 0
;SS0 1
}TT 
}UU 	
privateWW 
voidWW $
dgvTools_CellDoubleClickWW -
(WW- .
objectWW. 4
senderWW5 ;
,WW; <%
DataGridViewCellEventArgsWW= V
eWWW X
)WWX Y
{XX 	
btnAddToRentalYY 
.YY 
PerformClickYY '
(YY' (
)YY( )
;YY) *
}ZZ 	
private\\ 
void\\  
btnAddToRental_Click\\ )
(\\) *
object\\* 0
sender\\1 7
,\\7 8
	EventArgs\\9 B
e\\C D
)\\D E
{]] 	
try^^ 
{__ 
if`` 
(`` 
string`` 
.`` 
IsNullOrEmpty`` (
(``( )
txtCustomerID``) 6
.``6 7
Text``7 ;
)``; <
)``< =
throwaa 
newaa 
ArgumentExceptionaa /
(aa/ 0
$straa0 K
)aaK L
;aaL M
intcc 

customerIdcc 
=cc  
Convertcc! (
.cc( )
ToInt32cc) 0
(cc0 1
txtCustomerIDcc1 >
.cc> ?
Textcc? C
)ccC D
;ccD E
ifdd 
(dd 
dgvToolsdd 
.dd 

CurrentRowdd '
!=dd( *
nulldd+ /
)dd/ 0
{ee 
intff 
toolIdff 
=ff  
Convertff! (
.ff( )
ToInt32ff) 0
(ff0 1
dgvToolsff1 9
.ff9 :

CurrentRowff: D
.ffD E
CellsffE J
[ffJ K
$numffK L
]ffL M
.ffM N
ValueffN S
)ffS T
;ffT U
stringgg 
categoryCodegg '
=gg( )
dgvToolsgg* 2
.gg2 3

CurrentRowgg3 =
.gg= >
Cellsgg> C
[ggC D
$numggD E
]ggE F
.ggF G
ValueggG L
.ggL M
ToStringggM U
(ggU V
)ggV W
??ggX Z
throwgg[ `
newgga d
ArgumentExceptiongge v
(ggv w
$str	ggw í
)
ggí ì
;
ggì î
stringhh 
descriptionhh &
=hh' (
dgvToolshh) 1
.hh1 2

CurrentRowhh2 <
.hh< =
Cellshh= B
[hhB C
$numhhC D
]hhD E
.hhE F
ValuehhF K
.hhK L
ToStringhhL T
(hhT U
)hhU V
??hhW Y
throwhhZ _
newhh` c
ArgumentExceptionhhd u
(hhu v
$str	hhv è
)
hhè ê
;
hhê ë
stringii 
manufacturerii '
=ii( )
dgvToolsii* 2
.ii2 3

CurrentRowii3 =
.ii= >
Cellsii> C
[iiC D
$numiiD E
]iiE F
.iiF G
ValueiiG L
.iiL M
ToStringiiM U
(iiU V
)iiV W
??iiX Z
throwii[ `
newiia d
ArgumentExceptioniie v
(iiv w
$str	iiw ë
)
iië í
;
iií ì
DateTimejj 
rentDatejj %
=jj& '
dtpFromjj( /
.jj/ 0
Valuejj0 5
;jj5 6
DateTimekk 

returnDatekk '
=kk( )
dtpTokk* /
.kk/ 0
Valuekk0 5
;kk5 6
ifmm 
(mm 
	dgvRentalmm !
.mm! "
Rowsmm" &
.mm& '
Countmm' ,
>=mm- /
$nummm0 1
)mm1 2
{nn 
foreachoo 
(oo  !
DataGridViewRowoo! 0
rowoo1 4
inoo5 7
	dgvRentaloo8 A
.ooA B
RowsooB F
)ooF G
{pp 
ifqq 
(qq  
Convertqq  '
.qq' (
ToInt32qq( /
(qq/ 0
dgvToolsqq0 8
.qq8 9

CurrentRowqq9 C
.qqC D
CellsqqD I
[qqI J
$strqqJ N
]qqN O
.qqO P
ValueqqP U
)qqU V
==qqW Y
toolIdqqZ `
)qq` a
{rr 

MessageBoxss  *
.ss* +
Showss+ /
(ss/ 0
$strss0 X
,ssX Y
$strssZ d
,ssd e
MessageBoxButtonsssf w
.ssw x
OKssx z
,ssz {
MessageBoxIcon	ss| ä
.
ssä ã
Error
ssã ê
)
ssê ë
;
ssë í
returntt  &
;tt& '
}uu 
}vv 
}ww 
_rentalFacadeyy !
.yy! "
AddToolToRentalyy" 1
(yy1 2
toolIdyy2 8
,yy8 9
categoryCodeyy: F
,yyF G
descriptionyyH S
,yyS T
manufactureryyU a
,yya b
rentDateyyc k
,yyk l

returnDateyym w
)yyw x
;yyx y
decimal{{ 
	rentalFee{{ %
={{& '
_rentalFacade{{( 5
.{{5 6
GetCurrentRental{{6 F
({{F G
){{G H
.{{H I
rentalItems{{I T
.|| 
First|| 
(|| 
item|| #
=>||$ &
item||' +
.||+ ,
toolId||, 2
==||3 5
toolId||6 <
)||< =
.||= >
	rentalFee||> G
;||G H
	dgvRental~~ 
.~~ 
Rows~~ "
.~~" #
Add~~# &
(~~& '
toolId 
, 
categoryCode
ÄÄ $
,
ÄÄ$ %
description
ÅÅ #
,
ÅÅ# $
manufacturer
ÇÇ $
,
ÇÇ$ %
rentDate
ÉÉ  
.
ÉÉ  !
ToString
ÉÉ! )
(
ÉÉ) *
$str
ÉÉ* 5
)
ÉÉ5 6
,
ÉÉ6 7

returnDate
ÑÑ "
.
ÑÑ" #
ToString
ÑÑ# +
(
ÑÑ+ ,
$str
ÑÑ, 7
)
ÑÑ7 8
,
ÑÑ8 9
	rentalFee
ÖÖ !
.
ÖÖ! "
ToString
ÖÖ" *
(
ÖÖ* +
$str
ÖÖ+ 1
)
ÖÖ1 2
)
ÜÜ 
;
ÜÜ 
}
áá 
else
àà 
{
ââ 
throw
ää 
new
ää 
ArgumentException
ää /
(
ää/ 0
$str
ää0 G
)
ääG H
;
ääH I
}
ãã 
UpdateTotalFee
çç 
(
çç 
)
çç  
;
çç  !
}
éé 
catch
èè 
(
èè 
	Exception
èè 
ex
èè 
)
èè  
{
êê 

MessageBox
ëë 
.
ëë 
Show
ëë 
(
ëë  
$@"
ëë  #
{
ëë# $
ex
ëë$ &
.
ëë& '
Message
ëë' .
}
ëë. /
"
ëë/ 0
,
ëë0 1
$str
ëë2 :
,
ëë: ;
MessageBoxButtons
ëë< M
.
ëëM N
OK
ëëN P
,
ëëP Q
MessageBoxIcon
ëëR `
.
ëë` a
Error
ëëa f
)
ëëf g
;
ëëg h
}
íí 
}
ìì 	
private
ïï 
void
ïï 
UpdateTotalFee
ïï #
(
ïï# $
)
ïï$ %
{
ññ 	
txtTotalFee
óó 
.
óó 
Text
óó 
=
óó 
	dgvRental
óó (
.
óó( )
Rows
óó) -
.
óó- .
Cast
óó. 2
<
óó2 3
DataGridViewRow
óó3 B
>
óóB C
(
óóC D
)
óóD E
.
òò  !
Sum
òò! $
(
òò$ %
row
òò% (
=>
òò) +
Convert
òò, 3
.
òò3 4
	ToDecimal
òò4 =
(
òò= >
row
òò> A
.
òòA B
Cells
òòB G
[
òòG H
$str
òòH S
]
òòS T
.
òòT U
Value
òòU Z
)
òòZ [
)
òò[ \
.
ôô  !
ToString
ôô! )
(
ôô) *
$str
ôô* 0
)
ôô0 1
;
ôô1 2
}
öö 	
private
úú 
void
úú $
btnConfirmRental_Click
úú +
(
úú+ ,
object
úú, 2
sender
úú3 9
,
úú9 :
	EventArgs
úú; D
e
úúE F
)
úúF G
{
ùù 	
try
ûû 
{
üü 
_rentalFacade
†† 
.
†† 
ConfirmRental
†† +
(
††+ ,
)
††, -
;
††- .

MessageBox
»» 
.
»» 
Show
»» 
(
»»  
$str
»»  4
,
»»4 5
$str
»»6 D
,
»»D E
MessageBoxButtons
»»F W
.
»»W X
OK
»»X Z
,
»»Z [
MessageBoxIcon
»»\ j
.
»»j k
Information
»»k v
)
»»v w
;
»»w x
RefreshForm
…… 
(
…… 
)
…… 
;
…… 
}
   
catch
ÀÀ 
(
ÀÀ 
	Exception
ÀÀ 
ex
ÀÀ 
)
ÀÀ  
{
ÃÃ 

MessageBox
ÕÕ 
.
ÕÕ 
Show
ÕÕ 
(
ÕÕ  
$@"
ÕÕ  #
{
ÕÕ# $
ex
ÕÕ$ &
.
ÕÕ& '
Message
ÕÕ' .
}
ÕÕ. /
"
ÕÕ/ 0
,
ÕÕ0 1
$str
ÕÕ2 :
,
ÕÕ: ;
MessageBoxButtons
ÕÕ< M
.
ÕÕM N
OK
ÕÕN P
,
ÕÕP Q
MessageBoxIcon
ÕÕR `
.
ÕÕ` a
Error
ÕÕa f
)
ÕÕf g
;
ÕÕg h
}
ŒŒ 
}
œœ 	
private
—— 
void
—— 
RefreshForm
——  
(
——  !
)
——! "
{
““ 	
cboCategories
”” 
.
”” "
SelectedIndexChanged
”” .
-=
””/ 10
"cboCategories_SelectedIndexChanged
””2 T
!
””T U
;
””U V
txtRentalID
‘‘ 
.
‘‘ 
Text
‘‘ 
=
‘‘ 
$str
‘‘ !
;
‘‘! "
txtCustomerSearch
’’ 
.
’’ 
Clear
’’ #
(
’’# $
)
’’$ %
;
’’% &
txtCustomerID
÷÷ 
.
÷÷ 
Clear
÷÷ 
(
÷÷  
)
÷÷  !
;
÷÷! "
txtForename
◊◊ 
.
◊◊ 
Clear
◊◊ 
(
◊◊ 
)
◊◊ 
;
◊◊  
txtPhone
ÿÿ 
.
ÿÿ 
Clear
ÿÿ 
(
ÿÿ 
)
ÿÿ 
;
ÿÿ 
txtEmail
ŸŸ 
.
ŸŸ 
Clear
ŸŸ 
(
ŸŸ 
)
ŸŸ 
;
ŸŸ 

txtEircode
⁄⁄ 
.
⁄⁄ 
Clear
⁄⁄ 
(
⁄⁄ 
)
⁄⁄ 
;
⁄⁄ 

txtSurname
€€ 
.
€€ 
Clear
€€ 
(
€€ 
)
€€ 
;
€€ 
txtTotalFee
‹‹ 
.
‹‹ 
Clear
‹‹ 
(
‹‹ 
)
‹‹ 
;
‹‹  
dgvCustomers
›› 
.
›› 

DataSource
›› #
=
››$ %
null
››& *
;
››* +
dgvCustomers
ﬁﬁ 
.
ﬁﬁ 
Rows
ﬁﬁ 
.
ﬁﬁ 
Clear
ﬁﬁ #
(
ﬁﬁ# $
)
ﬁﬁ$ %
;
ﬁﬁ% &
dgvTools
ﬂﬂ 
.
ﬂﬂ 

DataSource
ﬂﬂ 
=
ﬂﬂ  !
null
ﬂﬂ" &
;
ﬂﬂ& '
dgvTools
‡‡ 
.
‡‡ 
Rows
‡‡ 
.
‡‡ 
Clear
‡‡ 
(
‡‡  
)
‡‡  !
;
‡‡! "
	dgvRental
·· 
.
·· 
Rows
·· 
.
·· 
Clear
··  
(
··  !
)
··! "
;
··" #
cboCategories
‚‚ 
.
‚‚ 
SelectedIndex
‚‚ '
=
‚‚( )
-
‚‚* +
$num
‚‚+ ,
;
‚‚, -
dtpFrom
„„ 
.
„„ 
Value
„„ 
=
„„ 
DateTime
„„ $
.
„„$ %
Today
„„% *
;
„„* +
dtpTo
‰‰ 
.
‰‰ 
Value
‰‰ 
=
‰‰ 
DateTime
‰‰ "
.
‰‰" #
Today
‰‰# (
;
‰‰( )
cboCategories
ÂÂ 
.
ÂÂ "
SelectedIndexChanged
ÂÂ .
+=
ÂÂ/ 10
"cboCategories_SelectedIndexChanged
ÂÂ2 T
!
ÂÂT U
;
ÂÂU V
}
ÊÊ 	
private
ËË 
void
ËË 0
"cboCategories_SelectedIndexChanged
ËË 7
(
ËË7 8
object
ËË8 >
sender
ËË? E
,
ËËE F
	EventArgs
ËËG P
e
ËËQ R
)
ËËR S
{
ÈÈ 	
if
ÍÍ 
(
ÍÍ 
cboCategories
ÍÍ 
.
ÍÍ 
SelectedIndex
ÍÍ +
>=
ÍÍ, .
$num
ÍÍ/ 0
&&
ÍÍ1 3
cboCategories
ÍÍ4 A
.
ÍÍA B
SelectedItem
ÍÍB N
!=
ÍÍO Q
null
ÍÍR V
)
ÍÍV W
{
ÎÎ 
string
ÏÏ 
categoryCode
ÏÏ #
=
ÏÏ$ %
cboCategories
ÏÏ& 3
.
ÏÏ3 4
SelectedItem
ÏÏ4 @
.
ÏÏ@ A
ToString
ÏÏA I
(
ÏÏI J
)
ÏÏJ K
!
ÏÏK L
[
ÏÏL M
..
ÏÏM O
$num
ÏÏO P
]
ÏÏP Q
;
ÏÏQ R
dgvTools
ÓÓ 
.
ÓÓ 

DataSource
ÓÓ #
=
ÓÓ$ %
_rentalFacade
ÓÓ& 3
.
ÔÔ 
GetRentableTools
ÔÔ %
(
ÔÔ% &
categoryCode
ÔÔ& 2
:
ÔÔ2 3
categoryCode
ÔÔ4 @
,
ÔÔ@ A
dtpFrom
ÔÔB I
.
ÔÔI J
Value
ÔÔJ O
,
ÔÔO P
dtpTo
ÔÔQ V
.
ÔÔV W
Value
ÔÔW \
)
ÔÔ\ ]
;
ÔÔ] ^
dgvTools
ÒÒ 
.
ÒÒ 
Columns
ÒÒ  
[
ÒÒ  !
$num
ÒÒ! "
]
ÒÒ" #
.
ÒÒ# $

HeaderText
ÒÒ$ .
=
ÒÒ/ 0
$str
ÒÒ1 6
;
ÒÒ6 7
dgvTools
ÚÚ 
.
ÚÚ 
Columns
ÚÚ  
[
ÚÚ  !
$num
ÚÚ! "
]
ÚÚ" #
.
ÚÚ# $

HeaderText
ÚÚ$ .
=
ÚÚ/ 0
$str
ÚÚ1 A
;
ÚÚA B
dgvTools
ÛÛ 
.
ÛÛ 
Columns
ÛÛ  
[
ÛÛ  !
$num
ÛÛ! "
]
ÛÛ" #
.
ÛÛ# $

HeaderText
ÛÛ$ .
=
ÛÛ/ 0
$str
ÛÛ1 ?
;
ÛÛ? @
dgvTools
ÙÙ 
.
ÙÙ 
Columns
ÙÙ  
[
ÙÙ  !
$num
ÙÙ! "
]
ÙÙ" #
.
ÙÙ# $

HeaderText
ÙÙ$ .
=
ÙÙ/ 0
$str
ÙÙ1 @
;
ÙÙ@ A
dgvTools
ıı 
.
ıı 
Columns
ıı  
[
ıı  !
$num
ıı! "
]
ıı" #
.
ıı# $

HeaderText
ıı$ .
=
ıı/ 0
$str
ıı1 :
;
ıı: ;
Miscellaneous
ˆˆ 
.
ˆˆ '
SetDataGridViewProperties
ˆˆ 7
(
ˆˆ7 8
dgvTools
ˆˆ8 @
)
ˆˆ@ A
;
ˆˆA B
}
˜˜ 
else
¯¯ 
{
˘˘ 

MessageBox
˙˙ 
.
˙˙ 
Show
˙˙ 
(
˙˙  
$str
˙˙  B
,
˙˙B C
$str
˙˙D X
,
˙˙X Y
MessageBoxButtons
˙˙Z k
.
˙˙k l
OK
˙˙l n
,
˙˙n o
MessageBoxIcon
˙˙p ~
.
˙˙~ 
Warning˙˙ Ü
)˙˙Ü á
;˙˙á à
}
˚˚ 
}
¸¸ 	
}
˝˝ 
}˛˛ π?
TC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Forms\frmRemoveTool.cs
	namespace 	
ToolSYS
 
. 
Presentation 
. 
Forms $
{ 
public 

partial 
class 
FrmRemoveTool &
:' (
NavForm) 0
{ 
private 
readonly 
IToolService %
_toolService& 2
;2 3
public		 
FrmRemoveTool		 
(		 
INavigation		 (

navigation		) 3
,		3 4
IToolService		5 A
toolService		B M
)		M N
:		O P
base		Q U
(		U V

navigation		V `
)		` a
{

 	
InitializeComponent 
(  
)  !
;! "
_toolService 
= 
toolService &
;& '
} 	
private 
void 
frmRemoveTool_Load '
(' (
object( .
sender/ 5
,5 6
	EventArgs7 @
eA B
)B C
{ 	
RefreshGridView 
( 
) 
; 
this 
. 
AcceptButton 
= 

btnConfirm  *
;* +
} 	
private 
void 
btnConfirm_Click %
(% &
object& ,
sender- 3
,3 4
	EventArgs5 >
e? @
)@ A
{ 	
DialogResult 
confirmRemove &
=' (

MessageBox) 3
.3 4
Show4 8
(8 9
$str9 f
,f g
$strh r
,r s
MessageBoxButtons	t Ö
.
Ö Ü
YesNo
Ü ã
)
ã å
;
å ç
if 
( 
confirmRemove 
==  
DialogResult! -
.- .
Yes. 1
)1 2
{ 
try 
{ 
_toolService  
.  !

RemoveTool! +
(+ ,
Convert, 3
.3 4
ToInt324 ;
(; <
	txtToolID< E
.E F
TextF J
)J K
)K L
;L M

MessageBox 
. 
Show #
(# $
$str$ @
,@ A
$strB P
,P Q
MessageBoxButtonsR c
.c d
OKd f
,f g
MessageBoxIconh v
.v w
Information	w Ç
)
Ç É
;
É Ñ
	txtToolID 
. 
Clear #
(# $
)$ %
;% &
RefreshGridView   #
(  # $
)  $ %
;  % &
}!! 
catch"" 
("" 
	Exception""  
ex""! #
)""# $
{## 

MessageBox$$ 
.$$ 
Show$$ #
($$# $
$@"$$$ '
{$$' (
ex$$( *
.$$* +
Message$$+ 2
}$$2 3
"$$3 4
,$$4 5
$str$$6 >
,$$> ?
MessageBoxButtons$$@ Q
.$$Q R
OK$$R T
,$$T U
MessageBoxIcon$$V d
.$$d e
Error$$e j
)$$j k
;$$k l
}%% 
}&& 
}'' 	
private)) 
void)) 
RefreshGridView)) $
())$ %
)))% &
{** 	
dgvTools++ 
.++ 

DataSource++ 
=++  !
_toolService++" .
.++. /
GetAvailableTools++/ @
(++@ A
)++A B
.++B C
Tables++C I
[++I J
$str++J P
]++P Q
;++Q R
dgvTools,, 
.,, 
AutoSizeColumnsMode,, (
=,,) *+
DataGridViewAutoSizeColumnsMode,,+ J
.,,J K
Fill,,K O
;,,O P
dgvTools-- 
.-- 
Columns-- 
[-- 
$num-- 
]-- 
.--  
AutoSizeMode--  ,
=--- .*
DataGridViewAutoSizeColumnMode--/ M
.--M N
AllCells--N V
;--V W
}.. 	
private00 
void00 
dgvTools_CellClick00 '
(00' (
object00( .
sender00/ 5
,005 6%
DataGridViewCellEventArgs007 P
e00Q R
)00R S
{11 	
if22 
(22 
dgvTools22 
.22 

CurrentRow22 #
!=22$ &
null22' +
)22+ ,
	txtToolID22- 6
.226 7
Text227 ;
=22< =
dgvTools22> F
.22F G

CurrentRow22G Q
.22Q R
Cells22R W
[22W X
$num22X Y
]22Y Z
.22Z [
Value22[ `
.22` a
ToString22a i
(22i j
)22j k
;22k l
}33 	
private66 
void66 $
dgvTools_CellDoubleClick66 -
(66- .
object66. 4
sender665 ;
,66; <%
DataGridViewCellEventArgs66= V
e66W X
)66X Y
{77 	
if88 
(88 
dgvTools88 
.88 

CurrentRow88 #
!=88$ &
null88' +
)88+ ,
{99 
DialogResult:: 
confirmRemove:: *
=::+ ,

MessageBox::- 7
.::7 8
Show::8 <
(::< =
$str::= j
,::j k
$str::l v
,::v w
MessageBoxButtons	::x â
.
::â ä
YesNo
::ä è
)
::è ê
;
::ê ë
if<< 
(<< 
confirmRemove<< !
==<<" $
DialogResult<<% 1
.<<1 2
Yes<<2 5
)<<5 6
{== 
try>> 
{?? 
var@@ 
	cellValue@@ %
=@@& '
dgvTools@@( 0
.@@0 1

CurrentRow@@1 ;
.@@; <
Cells@@< A
[@@A B
$num@@B C
]@@C D
.@@D E
Value@@E J
;@@J K
ifBB 
(BB 
	cellValueBB %
==BB& (
nullBB) -
||BB. 0
stringBB1 7
.BB7 8
IsNullOrEmptyBB8 E
(BBE F
	cellValueBBF O
.BBO P
ToStringBBP X
(BBX Y
)BBY Z
)BBZ [
)BB[ \
{CC 

MessageBoxDD &
.DD& '
ShowDD' +
(DD+ ,
$strDD, M
,DDM N
$strDDO W
,DDW X
MessageBoxButtonsDDY j
.DDj k
OKDDk m
,DDm n
MessageBoxIconDDo }
.DD} ~
Error	DD~ É
)
DDÉ Ñ
;
DDÑ Ö
returnEE "
;EE" #
}FF 
intHH 
toolIdHH "
=HH# $
intHH% (
.HH( )
ParseHH) .
(HH. /
	cellValueHH/ 8
.HH8 9
ToStringHH9 A
(HHA B
)HHB C
)HHC D
;HHD E
_toolServiceII $
.II$ %

RemoveToolII% /
(II/ 0
toolIdII0 6
)II6 7
;II7 8

MessageBoxKK "
.KK" #
ShowKK# '
(KK' (
$strKK( D
,KKD E
$strKKF T
,KKT U
MessageBoxButtonsKKV g
.KKg h
OKKKh j
,KKj k
MessageBoxIconKKl z
.KKz {
Information	KK{ Ü
)
KKÜ á
;
KKá à
RefreshGridViewLL '
(LL' (
)LL( )
;LL) *
}MM 
catchNN 
(NN 
	ExceptionNN $
exNN% '
)NN' (
{OO 

MessageBoxPP "
.PP" #
ShowPP# '
(PP' (
$@"PP( +
$strPP+ 2
{PP2 3
exPP3 5
.PP5 6
MessagePP6 =
}PP= >
"PP> ?
,PP? @
$strPPA P
,PPP Q
MessageBoxButtonsPPR c
.PPc d
OKPPd f
,PPf g
MessageBoxIconPPh v
.PPv w
ErrorPPw |
)PP| }
;PP} ~
}QQ 
}RR 
}SS 
}TT 	
}UU 
}VV π
RC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Forms\frmMainMenu.cs
	namespace 	
ToolSYS
 
. 
Presentation 
. 
Forms $
{ 
public 

partial 
class 
FrmMainMenu $
:% &
NavForm' .
{ 
public 
FrmMainMenu 
( 
INavigation &

navigation' 1
)1 2
:3 4
base5 9
(: ;

navigation; E
)E F
{ 	
InitializeComponent		 
(		  
)		  !
;		! "
}

 	
} 
} ùu
RC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Forms\frmAnalysis.cs
	namespace 	
ToolSYS
 
. 
Presentation 
. 
Forms $
{		 
public

 

partial

 
class

 
FrmAnalysis

 $
:

% &
NavForm

' .
{ 
private 
readonly 
IAnalysisService )
_analysisService* :
;: ;
private 
IReportStrategy 
_reportStrategy  /
;/ 0
public 
FrmAnalysis 
( 
INavigation &

navigation' 1
,1 2
IAnalysisService3 C
analysisServiceD S
)S T
:U V
baseW [
([ \

navigation\ f
)f g
{ 	
InitializeComponent 
(  
)  !
;! "
_analysisService 
= 
analysisService .
;. /
} 	
private 
void 
frmAnalysis_Load %
(% &
object& ,
sender- 3
,3 4
	EventArgs5 >
e? @
)@ A
{ 	!
InitializeReportTypes !
(! "
)" #
;# $
	LoadYears 
( 
) 
; 
} 	
private 
void !
InitializeReportTypes *
(* +
)+ ,
{ 	
cboReportType 
. 
Items 
.  
Add  #
(# $
$str$ 6
)6 7
;7 8
cboReportType 
. 
Items 
.  
Add  #
(# $
$str$ :
): ;
;; <
cboReportType 
. 
Items 
.  
Add  #
(# $
$str$ <
)< =
;= >
cboReportType   
.   
SelectedIndex   '
=  ( )
$num  * +
;  + ,
}!! 	
private## 
void## 
	LoadYears## 
(## 
)##  
{$$ 	
try%% 
{&& 
	DataTable'' 

yearsTable'' $
=''% &
_analysisService''' 7
.''7 8
GetDistinctYears''8 H
(''H I
)''I J
;''J K
cboYears(( 
.(( 
Items(( 
.(( 
Clear(( $
((($ %
)((% &
;((& '
foreach** 
(** 
DataRow**  
row**! $
in**% '

yearsTable**( 2
.**2 3
Rows**3 7
)**7 8
{++ 
cboYears,, 
.,, 
Items,, "
.,," #
Add,,# &
(,,& '
row,,' *
[,,* +
$str,,+ 1
],,1 2
.,,2 3
ToString,,3 ;
(,,; <
),,< =
),,= >
;,,> ?
}-- 
}.. 
catch// 
(// 
	Exception// 
ex// 
)//  
{00 

MessageBox11 
.11 
Show11 
(11  
$@"11  #
{11# $
ex11$ &
.11& '
Message11' .
}11. /
"11/ 0
,110 1
$str112 :
,11: ;
MessageBoxButtons11< M
.11M N
OK11N P
,11P Q
MessageBoxIcon11R `
.11` a
Error11a f
)11f g
;11g h
}22 
}33 	
private55 
void55 
btnConfirm_Click55 %
(55% &
object55& ,
sender55- 3
,553 4
	EventArgs555 >
e55? @
)55@ A
{66 	
try77 
{88 
ValidateSelections99 "
(99" #
)99# $
;99$ %

ReportData:: 

reportData:: %
=::& '
_analysisService::( 8
.::8 9
GetReportData::9 F
(::F G
Convert::G N
.::N O
ToInt32::O V
(::V W
cboYears::W _
.::_ `
Text::` d
)::d e
,::e f
cboReportType::g t
.::t u
Text::u y
)::y z
;::z {
RenderGraph;; 
(;; 

reportData;; &
);;& '
;;;' (
}<< 
catch== 
(== 
	Exception== 
ex== 
)==  
{>> 

MessageBox?? 
.?? 
Show?? 
(??  
ex??  "
.??" #
Message??# *
,??* +
$str??, @
,??@ A
MessageBoxButtons??B S
.??S T
OK??T V
,??V W
MessageBoxIcon??X f
.??f g
Warning??g n
)??n o
;??o p
}@@ 
}AA 	
privateCC 
voidCC 
ValidateSelectionsCC '
(CC' (
)CC( )
{DD 	
ifEE 
(EE 
cboYearsEE 
.EE 
SelectedIndexEE &
<EE' (
$numEE) *
)EE* +
throwFF 
newFF 
ArgumentExceptionFF +
(FF+ ,
$strFF, C
)FFC D
;FFD E
ifGG 
(GG 
cboReportTypeGG 
.GG 
SelectedIndexGG +
<GG, -
$numGG. /
)GG/ 0
throwHH 
newHH 
ArgumentExceptionHH +
(HH+ ,
$strHH, E
)HHE F
;HHF G
}II 
privateKK 
voidKK 
RenderGraphKK  
(KK  !

ReportDataKK! +

reportDataKK, 6
)KK6 7
{LL 	

formsPlot1MM 
.MM 
PlotMM 
.MM 
ClearMM !
(MM! "
)MM" #
;MM# $
switchNN 
(NN 

reportDataNN 
.NN 
	ChartTypeNN (
)NN( )
{OO 
casePP 
	ChartTypePP 
.PP 
BarPP "
:PP" #
RenderBarChartQQ "
(QQ" #

reportDataQQ# -
)QQ- .
;QQ. /
breakRR 
;RR 
caseTT 
	ChartTypeTT 
.TT 
LineTT #
:TT# $
RenderLineChartUU #
(UU# $

reportDataUU$ .
)UU. /
;UU/ 0
breakVV 
;VV 
caseXX 
	ChartTypeXX 
.XX 
ScatterXX &
:XX& '
RenderScatterChartYY &
(YY& '

reportDataYY' 1
)YY1 2
;YY2 3
breakZZ 
;ZZ 
case\\ 
	ChartType\\ 
.\\ 
Pie\\ "
:\\" #
RenderPieChart]] "
(]]" #

reportData]]# -
)]]- .
;]]. /
break^^ 
;^^ 
default`` 
:`` 
throwaa 
newaa !
NotSupportedExceptionaa 3
(aa3 4
$"aa4 6
$straa6 B
{aaB C

reportDataaaC M
.aaM N
	ChartTypeaaN W
}aaW X
$straaX k
"aak l
)aal m
;aam n
}bb 

formsPlot1dd 
.dd 
Plotdd 
.dd 
Titledd !
(dd! "

reportDatadd" ,
.dd, -
Titledd- 2
)dd2 3
;dd3 4

formsPlot1ee 
.ee 
Plotee 
.ee 
YLabelee "
(ee" #

reportDataee# -
.ee- .
YLabelee. 4
)ee4 5
;ee5 6

formsPlot1gg 
.gg 
Refreshgg 
(gg 
)gg  
;gg  !
}hh 	
privatejj 
voidjj 
RenderBarChartjj #
(jj# $

ReportDatajj$ .
datajj/ 3
)jj3 4
{kk 	
doublell 
[ll 
]ll 
ysll 
=ll 
datall 
.ll 
YValuesll &
.ll& '
ToArrayll' .
(ll. /
)ll/ 0
;ll0 1
doublemm 
[mm 
]mm 
xsmm 
=mm 

Enumerablemm $
.mm$ %
Rangemm% *
(mm* +
$nummm+ ,
,mm, -
ysmm. 0
.mm0 1
Lengthmm1 7
)mm7 8
.mm8 9
Selectmm9 ?
(mm? @
xmm@ A
=>mmB D
(mmE F
doublemmF L
)mmL M
xmmM N
)mmN O
.mmO P
ToArraymmP W
(mmW X
)mmX Y
;mmY Z
varnn 
barnn 
=nn 

formsPlot1nn  
.nn  !
Plotnn! %
.nn% &
AddBarnn& ,
(nn, -
ysnn- /
)nn/ 0
;nn0 1
baroo 
.oo 
PositionOffsetoo 
=oo  
$numoo! "
;oo" #
barpp 
.pp 
BarWidthpp 
=pp 
$numpp 
;pp 
barqq 
.qq 
	FillColorqq 
=qq 
Systemqq "
.qq" #
Drawingqq# *
.qq* +
Colorqq+ 0
.qq0 1
Blueqq1 5
;qq5 6
barrr 
.rr 
Labelrr 
=rr 
$strrr !
;rr! "

formsPlot1ss 
.ss 
Plotss 
.ss 
XTicksss "
(ss" #
xsss# %
,ss% &
datass' +
.ss+ ,
XLabelsss, 3
.ss3 4
ToArrayss4 ;
(ss; <
)ss< =
)ss= >
;ss> ?

formsPlot1tt 
.tt 
Plottt 
.tt 
Legendtt "
(tt" #
)tt# $
;tt$ %
}uu 	
privateww 
voidww 
RenderLineChartww $
(ww$ %

ReportDataww% /
dataww0 4
)ww4 5
{xx 	
doubleyy 
[yy 
]yy 
ysyy 
=yy 
datayy 
.yy 
YValuesyy &
.yy& '
ToArrayyy' .
(yy. /
)yy/ 0
;yy0 1
doublezz 
[zz 
]zz 
xszz 
=zz 

Enumerablezz $
.zz$ %
Rangezz% *
(zz* +
$numzz+ ,
,zz, -
yszz. 0
.zz0 1
Lengthzz1 7
)zz7 8
.zz8 9
Selectzz9 ?
(zz? @
xzz@ A
=>zzB D
(zzE F
doublezzF L
)zzL M
xzzM N
)zzN O
.zzO P
ToArrayzzP W
(zzW X
)zzX Y
;zzY Z
var{{ 
line{{ 
={{ 

formsPlot1{{ !
.{{! "
Plot{{" &
.{{& '

AddScatter{{' 1
({{1 2
xs{{2 4
,{{4 5
ys{{6 8
,{{8 9
label{{: ?
:{{? @
$str{{A J
){{J K
;{{K L
line|| 
.|| 

MarkerSize|| 
=|| 
$num|| 
;||  
line}} 
.}} 
	LineWidth}} 
=}} 
$num}} 
;}} 

formsPlot1~~ 
.~~ 
Plot~~ 
.~~ 
XTicks~~ "
(~~" #
xs~~# %
,~~% &
data~~' +
.~~+ ,
XLabels~~, 3
.~~3 4
ToArray~~4 ;
(~~; <
)~~< =
)~~= >
;~~> ?

formsPlot1 
. 
Plot 
. 
Legend "
(" #
)# $
;$ %
}
ÄÄ 	
private
ÇÇ 
void
ÇÇ  
RenderScatterChart
ÇÇ '
(
ÇÇ' (

ReportData
ÇÇ( 2
data
ÇÇ3 7
)
ÇÇ7 8
{
ÉÉ 	
double
ÑÑ 
[
ÑÑ 
]
ÑÑ 
ys
ÑÑ 
=
ÑÑ 
data
ÑÑ 
.
ÑÑ 
YValues
ÑÑ &
.
ÑÑ& '
ToArray
ÑÑ' .
(
ÑÑ. /
)
ÑÑ/ 0
;
ÑÑ0 1
double
ÖÖ 
[
ÖÖ 
]
ÖÖ 
xs
ÖÖ 
=
ÖÖ 

Enumerable
ÖÖ $
.
ÖÖ$ %
Range
ÖÖ% *
(
ÖÖ* +
$num
ÖÖ+ ,
,
ÖÖ, -
ys
ÖÖ. 0
.
ÖÖ0 1
Length
ÖÖ1 7
)
ÖÖ7 8
.
ÖÖ8 9
Select
ÖÖ9 ?
(
ÖÖ? @
x
ÖÖ@ A
=>
ÖÖB D
(
ÖÖE F
double
ÖÖF L
)
ÖÖL M
x
ÖÖM N
)
ÖÖN O
.
ÖÖO P
ToArray
ÖÖP W
(
ÖÖW X
)
ÖÖX Y
;
ÖÖY Z
var
ÜÜ 
scatter
ÜÜ 
=
ÜÜ 

formsPlot1
ÜÜ $
.
ÜÜ$ %
Plot
ÜÜ% )
.
ÜÜ) *

AddScatter
ÜÜ* 4
(
ÜÜ4 5
xs
ÜÜ5 7
,
ÜÜ7 8
ys
ÜÜ9 ;
,
ÜÜ; <

markerSize
ÜÜ= G
:
ÜÜG H
$num
ÜÜI K
,
ÜÜK L
label
ÜÜM R
:
ÜÜR S
$str
ÜÜT ]
)
ÜÜ] ^
;
ÜÜ^ _
scatter
áá 
.
áá 
MarkerShape
áá 
=
áá  !
MarkerShape
áá" -
.
áá- .
filledCircle
áá. :
;
áá: ;
scatter
àà 
.
àà 
Color
àà 
=
àà 
System
àà "
.
àà" #
Drawing
àà# *
.
àà* +
Color
àà+ 0
.
àà0 1
Red
àà1 4
;
àà4 5

formsPlot1
ââ 
.
ââ 
Plot
ââ 
.
ââ 
XTicks
ââ "
(
ââ" #
xs
ââ# %
,
ââ% &
data
ââ' +
.
ââ+ ,
XLabels
ââ, 3
.
ââ3 4
ToArray
ââ4 ;
(
ââ; <
)
ââ< =
)
ââ= >
;
ââ> ?

formsPlot1
ää 
.
ää 
Plot
ää 
.
ää 
Legend
ää "
(
ää" #
)
ää# $
;
ää$ %
}
ãã 	
private
çç 
void
çç 
RenderPieChart
çç #
(
çç# $

ReportData
çç$ .
data
çç/ 3
)
çç3 4
{
éé 	
double
èè 
[
èè 
]
èè 
ys
èè 
=
èè 
data
èè 
.
èè 
YValues
èè &
.
èè& '
ToArray
èè' .
(
èè. /
)
èè/ 0
;
èè0 1
var
êê 
pie
êê 
=
êê 

formsPlot1
êê  
.
êê  !
Plot
êê! %
.
êê% &
AddPie
êê& ,
(
êê, -
ys
êê- /
)
êê/ 0
;
êê0 1
pie
ëë 
.
ëë 
SliceLabels
ëë 
=
ëë 
data
ëë "
.
ëë" #
XLabels
ëë# *
.
ëë* +
ToArray
ëë+ 2
(
ëë2 3
)
ëë3 4
;
ëë4 5
pie
íí 
.
íí 

ShowLabels
íí 
=
íí 
true
íí !
;
íí! "
pie
ìì 
.
ìì 
	DonutSize
ìì 
=
ìì 
$num
ìì 
;
ìì  
}
îî 	
}
ïï 
}ññ ˛C
QC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Forms\frmAddTool.cs
	namespace 	
ToolSYS
 
. 
Presentation 
. 
Forms $
{ 
public		 

partial		 
class		 

FrmAddTool		 #
:		$ %
NavForm		& -
{

 
private 
readonly 
IToolService %
_toolService& 2
;2 3
private 
readonly 
IRateService %
_rateService& 2
;2 3
public 

FrmAddTool 
( 
INavigation %

navigation& 0
,0 1
IToolService2 >
toolService? J
,J K
IRateServiceL X
rateServiceY d
)d e
:f g
baseh l
(l m

navigationm w
)w x
{ 	
InitializeComponent 
(  
)  !
;! "
_toolService 
= 
toolService &
;& '
_rateService 
= 
rateService &
;& '
} 	
private 
void 
frmAddTool_Load $
($ %
object% +
sender, 2
,2 3
	EventArgs4 =
e> ?
)? @
{ 	
	txtToolID 
. 
Text 
= 
_toolService )
.) *
GetNextToolId* 7
(7 8
)8 9
.9 :
ToString: B
(B C
$strC H
)H I
;I J
cboCategories 
. 
Items 
.  
Add  #
(# $
$str$ &
)& '
;' (
DataSet 

categories 
=  
_rateService! -
.- .
GetAllCategories. >
(> ?
)? @
;@ A
foreach 
( 
DataRow 
row  
in! #

categories$ .
.. /
Tables/ 5
[5 6
$num6 7
]7 8
.8 9
Rows9 =
)= >
{ 
string 
category 
=  !
row" %
[% &
$str& 4
]4 5
+6 7
$str8 =
+> ?
row@ C
[C D
$strD R
]R S
;S T
cboCategories 
. 
Items #
.# $
Add$ '
(' (
category( 0
)0 1
;1 2
} 
}   	
private"" 
void"" 
btnConfirm_Click"" %
(""% &
object""& ,
sender""- 3
,""3 4
	EventArgs""5 >
e""? @
)""@ A
{## 	
try$$ 
{%% 
if&& 
(&& 
cboCategories&& !
.&&! "
SelectedIndex&&" /
<&&0 1
$num&&2 3
)&&3 4
{'' 

MessageBox(( 
.(( 
Show(( #
(((# $
$str(($ E
,((E F
$str((G Q
,((Q R
MessageBoxButtons((S d
.((d e
OK((e g
,((g h
MessageBoxIcon((i w
.((w x
Error((x }
)((} ~
;((~ 
cboCategories)) !
.))! "
Focus))" '
())' (
)))( )
;))) *
return** 
;** 
}++ 
if-- 
(-- 
string-- 
.-- 
IsNullOrWhiteSpace-- -
(--- .
	txtToolID--. 7
.--7 8
Text--8 <
)--< =
||--> @
string.. 
... 
IsNullOrWhiteSpace.. -
(..- .
txtDescription... <
...< =
Text..= A
)..A B
||..C E
string// 
.// 
IsNullOrWhiteSpace// -
(//- .
txtManufacturer//. =
.//= >
Text//> B
)//B C
)//C D
{00 

MessageBox11 
.11 
Show11 #
(11# $
$str11$ A
,11A B
$str11C M
,11M N
MessageBoxButtons11O `
.11` a
OK11a c
,11c d
MessageBoxIcon11e s
.11s t
Error11t y
)11y z
;11z {
return22 
;22 
}33 
if55 
(55 
!55 
int55 
.55 
TryParse55 !
(55! "
	txtToolID55" +
.55+ ,
Text55, 0
,550 1
out552 5
int556 9
toolId55: @
)55@ A
)55A B
{66 

MessageBox77 
.77 
Show77 #
(77# $
$str77$ F
,77F G
$str77H R
,77R S
MessageBoxButtons77T e
.77e f
OK77f h
,77h i
MessageBoxIcon77j x
.77x y
Error77y ~
)77~ 
;	77 Ä
	txtToolID88 
.88 
Focus88 #
(88# $
)88$ %
;88% &
return99 
;99 
}:: 
string<< 
?<< 
selectedCategory<< (
=<<) *
cboCategories<<+ 8
.<<8 9
SelectedItem<<9 E
?<<E F
.<<F G
ToString<<G O
(<<O P
)<<P Q
;<<Q R
if== 
(== 
selectedCategory== $
====% '
null==( ,
||==- /
selectedCategory==0 @
.==@ A
Length==A G
<==H I
$num==J K
)==K L
{>> 

MessageBox?? 
.?? 
Show?? #
(??# $
$str??$ @
,??@ A
$str??B J
,??J K
MessageBoxButtons??L ]
.??] ^
OK??^ `
,??` a
MessageBoxIcon??b p
.??p q
Error??q v
)??v w
;??w x
cboCategories@@ !
.@@! "
Focus@@" '
(@@' (
)@@( )
;@@) *
returnAA 
;AA 
}BB 
stringDD 
categoryCodeDD #
=DD$ %
selectedCategoryDD& 6
[DD6 7
..DD7 9
$numDD9 :
]DD: ;
;DD; <
stringEE 
descriptionEE "
=EE# $
txtDescriptionEE% 3
.EE3 4
TextEE4 8
;EE8 9
stringFF 
manufacturerFF #
=FF$ %
txtManufacturerFF& 5
.FF5 6
TextFF6 :
;FF: ;
ToolHH 
toolHH 
=HH 
newHH 
ToolHH  $
{II 
toolIdJJ 
=JJ 
toolIdJJ #
,JJ# $
categoryCodeKK  
=KK! "
categoryCodeKK# /
,KK/ 0
toolDescriptionLL #
=LL$ %
descriptionLL& 1
,LL1 2
toolManufacturerMM $
=MM% &
manufacturerMM' 3
}NN 
;NN 
_toolServicePP 
.PP 
AddToolPP $
(PP$ %
toolPP% )
)PP) *
;PP* +

MessageBoxRR 
.RR 
ShowRR 
(RR  
$strRR  H
,RRH I
$strRRJ X
,RRX Y
MessageBoxButtonsRRZ k
.RRk l
OKRRl n
,RRn o
MessageBoxIconRRp ~
.RR~ 
Information	RR ä
)
RRä ã
;
RRã å
txtDescriptionTT 
.TT 
ClearTT $
(TT$ %
)TT% &
;TT& '
txtManufacturerUU 
.UU  
ClearUU  %
(UU% &
)UU& '
;UU' (
cboCategoriesVV 
.VV 
SelectedIndexVV +
=VV, -
-VV. /
$numVV/ 0
;VV0 1
	txtToolIDWW 
.WW 
TextWW 
=WW  
_toolServiceWW! -
.WW- .
GetNextToolIdWW. ;
(WW; <
)WW< =
.WW= >
ToStringWW> F
(WWF G
$strWWG L
)WWL M
;WWM N
}XX 
catchYY 
(YY 
	ExceptionYY 
exYY 
)YY  
{ZZ 

MessageBox[[ 
.[[ 
Show[[ 
([[  
$@"[[  #
$str[[# *
{[[* +
ex[[+ -
.[[- .
Message[[. 5
}[[5 6
"[[6 7
,[[7 8
$str[[9 A
,[[A B
MessageBoxButtons[[C T
.[[T U
OK[[U W
,[[W X
MessageBoxIcon[[Y g
.[[g h
Error[[h m
)[[m n
;[[n o
}\\ 
}]] 	
}^^ 
}__ √'
UC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Forms\frmAddCustomer.cs
	namespace 	
ToolSYS
 
. 
Presentation 
. 
Forms $
{ 
public 

partial 
class 
FrmAddCustomer '
:( )
NavForm* 1
{		 
private

 
readonly

 
ICustomerService

 )
_customerService

* :
;

: ;
public 
FrmAddCustomer 
( 
INavigation )

navigation* 4
,4 5
ICustomerService6 F
customerServiceG V
)V W
:X Y
baseZ ^
(_ `

navigation` j
)j k
{ 	
InitializeComponent 
(  
)  !
;! "
_customerService 
= 
customerService .
;. /
} 	
private 
void 
frmAddCustomer_Load (
(( )
object) /
sender0 6
,6 7
	EventArgs8 A
eB C
)C D
{ 	
txtCustomerID 
. 
Text 
=  
_customerService! 1
.1 2
GetNextCustomerId2 C
(C D
)D E
.E F
ToStringF N
(N O
$strO U
)U V
;V W
} 	
private 
void 
BtnConfirm_Click %
(% &
object& ,
sender- 3
,3 4
	EventArgs5 >
e? @
)@ A
{ 	
try 
{ 
Customer 
customer !
=" #
new$ '
Customer( 0
{ 

customerId 
=  
Convert! (
.( )
ToInt32) 0
(0 1
txtCustomerID1 >
.> ?
Text? C
)C D
,D E
forename 
= 
txtForename *
.* +
Text+ /
,/ 0
surname 
= 

txtSurname (
.( )
Text) -
,- .
email 
= 
txtEmail $
.$ %
Text% )
,) *
phone   
=   
txtPhone   $
.  $ %
Text  % )
,  ) *
eircode!! 
=!! 

txtEircode!! (
.!!( )
Text!!) -
}"" 
;"" 
_customerService$$  
.$$  !
AddCustomer$$! ,
($$, -
customer$$- 5
)$$5 6
;$$6 7

MessageBox%% 
.%% 
Show%% 
(%%  
$str%%  L
,%%L M
$str%%N \
,%%\ ]
MessageBoxButtons%%^ o
.%%o p
OK%%p r
,%%r s
MessageBoxIcon	%%t Ç
.
%%Ç É
Information
%%É é
)
%%é è
;
%%è ê
txtCustomerID&& 
.&& 
Clear&& #
(&&# $
)&&$ %
;&&% &
txtForename'' 
.'' 
Clear'' !
(''! "
)''" #
;''# $

txtSurname(( 
.(( 
Clear((  
(((  !
)((! "
;((" #
txtEmail)) 
.)) 
Clear)) 
()) 
)))  
;))  !
txtPhone** 
.** 
Clear** 
(** 
)**  
;**  !

txtEircode++ 
.++ 
Clear++  
(++  !
)++! "
;++" #
txtCustomerID,, 
.,, 
Text,, "
=,,# $
_customerService,,% 5
.,,5 6
GetNextCustomerId,,6 G
(,,G H
),,H I
.,,I J
ToString,,J R
(,,R S
$str,,S Y
),,Y Z
;,,Z [
}.. 
catch// 
(// 
ValidationException// &
ex//' )
)//) *
{00 

MessageBox11 
.11 
Show11 
(11  
$"11  "
$str11" 5
{115 6
ex116 8
.118 9
Message119 @
}11@ A
"11A B
,11B C
$str11D V
,11V W
MessageBoxButtons11X i
.11i j
OK11j l
,11l m
MessageBoxIcon11n |
.11| }
Warning	11} Ñ
)
11Ñ Ö
;
11Ö Ü
}22 
catch33 
(33 
	Exception33 
ex33 
)33  
{44 

MessageBox55 
.55 
Show55 
(55  
$@"55  #
{55# $
ex55$ &
.55& '
Message55' .
}55. /
"55/ 0
,550 1
$str552 :
,55: ;
MessageBoxButtons55< M
.55M N
OK55N P
,55P Q
MessageBoxIcon55R `
.55` a
Error55a f
)55f g
;55g h
}66 
}77 	
}88 
}99 