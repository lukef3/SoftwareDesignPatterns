˙

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
IToolService 
toolService $
=% &
new' *
ToolService+ 6
(6 7
toolData7 ?
)? @
;@ A
INavigation(( 

navigation(( "
=((# $
new((% (

Navigation(() 3
(((3 4
toolService((4 ?
)((? @
;((@ A
Application++ 
.++ 
Run++ 
(++ 
new++ 
FrmMainMenu++  +
(+++ ,

navigation++, 6
)++6 7
)++7 8
;++8 9
},, 	
}-- 
}.. Æ]
OC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Nav\Navigation.cs
	namespace 	
ToolSYS
 
. 
Presentation 
. 
Nav "
{ 
public 

	interface 
INavigation  
{ 
void		 %
NavigateToSetToolCategory		 &
(		& '
Form		' +
form		, 0
)		0 1
;		1 2
void

  
NavigateToUpdateRate

 !
(

! "
Form

" &
form

' +
)

+ ,
;

, -
void 
NavigateToAddTool 
( 
Form #
form$ (
)( )
;) *
void  
NavigateToUpdateTool !
(! "
Form" &
form' +
)+ ,
;, -
void  
NavigateToRemoveTool !
(! "
Form" &
form' +
)+ ,
;, -
void 
NavigateToViewTools  
(  !
Form! %
form& *
)* +
;+ ,
void 
NavigateToRentTools  
(  !
Form! %
form& *
)* +
;+ ,
void !
NavigateToReturnTools "
(" #
Form# '
form( ,
), -
;- .
void !
NavigateToViewRentals "
(" #
Form# '
form( ,
), -
;- .
void !
NavigateToAddCustomer "
(" #
Form# '
form( ,
), -
;- .
void $
NavigateToUpdateCustomer %
(% &
Form& *
form+ /
)/ 0
;0 1
void #
NavigateToViewCustomers $
($ %
Form% )
form* .
). /
;/ 0
void 
NavigateToAnalysis 
(  
Form  $
form% )
)) *
;* +
void 
NavigateToMainMenu 
(  
Form  $
form% )
)) *
;* +
} 
public 

class 

Navigation 
: 
INavigation )
{ 
private 
readonly 
IToolService %
_toolService& 2
;2 3
public 

Navigation 
( 
IToolService &
toolService' 2
)2 3
{ 	
_toolService 
= 
toolService &
;& '
}   	
public"" 
void"" %
NavigateToSetToolCategory"" -
(""- .
Form"". 2
form""3 7
)""7 8
{## 	
form$$ 
.$$ 
Hide$$ 
($$ 
)$$ 
;$$ 
FrmSetToolCategory%% 
nextForm%% '
=%%( )
new%%* -
FrmSetToolCategory%%. @
(%%@ A
this%%A E
)%%E F
;%%F G
nextForm&& 
.&& 

ShowDialog&& 
(&&  
)&&  !
;&&! "
form'' 
.'' 
Close'' 
('' 
)'' 
;'' 
}(( 	
public)) 
void))  
NavigateToUpdateRate)) (
())( )
Form))) -
form)). 2
)))2 3
{** 	
form++ 
.++ 
Hide++ 
(++ 
)++ 
;++ 
FrmUpdateToolRate,, 
nextForm,, &
=,,' (
new,,) ,
FrmUpdateToolRate,,- >
(,,> ?
this,,? C
),,C D
;,,D E
nextForm-- 
.-- 

ShowDialog-- 
(--  
)--  !
;--! "
form.. 
... 
Close.. 
(.. 
).. 
;.. 
}// 	
public11 
void11 
NavigateToAddTool11 %
(11% &
Form11& *
form11+ /
)11/ 0
{22 	
form33 
.33 
Hide33 
(33 
)33 
;33 

FrmAddTool44 
nextForm44 
=44  !
new44" %

FrmAddTool44& 0
(440 1
this441 5
,445 6
_toolService447 C
)44C D
;44D E
nextForm55 
.55 

ShowDialog55 
(55  
)55  !
;55! "
form66 
.66 
Close66 
(66 
)66 
;66 
}77 	
public99 
void99  
NavigateToUpdateTool99 (
(99( )
Form99) -
form99. 2
)992 3
{:: 	
form;; 
.;; 
Hide;; 
(;; 
);; 
;;; 
FrmUpdateTool<< 
nextForm<< "
=<<# $
new<<% (
FrmUpdateTool<<) 6
(<<6 7
this<<7 ;
,<<; <
_toolService<<= I
)<<I J
;<<J K
nextForm== 
.== 

ShowDialog== 
(==  
)==  !
;==! "
form>> 
.>> 
Close>> 
(>> 
)>> 
;>> 
}?? 	
publicAA 
voidAA  
NavigateToRemoveToolAA (
(AA( )
FormAA) -
formAA. 2
)AA2 3
{BB 	
formCC 
.CC 
HideCC 
(CC 
)CC 
;CC 
FrmRemoveToolDD 
nextFormDD "
=DD# $
newDD% (
FrmRemoveToolDD) 6
(DD6 7
thisDD7 ;
,DD; <
_toolServiceDD= I
)DDI J
;DDJ K
nextFormEE 
.EE 

ShowDialogEE 
(EE  
)EE  !
;EE! "
formFF 
.FF 
CloseFF 
(FF 
)FF 
;FF 
}GG 	
publicHH 
voidHH 
NavigateToViewToolsHH '
(HH' (
FormHH( ,
formHH- 1
)HH1 2
{II 	
formJJ 
.JJ 
HideJJ 
(JJ 
)JJ 
;JJ 
FrmViewToolsKK 
nextFormKK !
=KK" #
newKK$ '
FrmViewToolsKK( 4
(KK4 5
thisKK5 9
,KK9 :
_toolServiceKK; G
)KKG H
;KKH I
nextFormLL 
.LL 

ShowDialogLL 
(LL  
)LL  !
;LL! "
formMM 
.MM 
CloseMM 
(MM 
)MM 
;MM 
}NN 	
publicPP 
voidPP 
NavigateToRentToolsPP '
(PP' (
FormPP( ,
formPP- 1
)PP1 2
{QQ 	
formRR 
.RR 
HideRR 
(RR 
)RR 
;RR 
FrmRentToolsSS 
nextFormSS !
=SS" #
newSS$ '
FrmRentToolsSS( 4
(SS4 5
thisSS5 9
,SS9 :
_toolServiceSS; G
)SSG H
;SSH I
nextFormTT 
.TT 

ShowDialogTT 
(TT  
)TT  !
;TT! "
formUU 
.UU 
CloseUU 
(UU 
)UU 
;UU 
}VV 	
publicXX 
voidXX !
NavigateToReturnToolsXX )
(XX) *
FormXX* .
formXX/ 3
)XX3 4
{YY 	
formZZ 
.ZZ 
HideZZ 
(ZZ 
)ZZ 
;ZZ 
FrmReturnTools[[ 
nextForm[[ #
=[[$ %
new[[& )
FrmReturnTools[[* 8
([[8 9
this[[9 =
)[[= >
;[[> ?
nextForm\\ 
.\\ 

ShowDialog\\ 
(\\  
)\\  !
;\\! "
form]] 
.]] 
Close]] 
(]] 
)]] 
;]] 
}^^ 	
public`` 
void`` !
NavigateToViewRentals`` )
(``) *
Form``* .
form``/ 3
)``3 4
{aa 	
formbb 
.bb 
Hidebb 
(bb 
)bb 
;bb 
FrmViewRentalscc 
nextFormcc #
=cc$ %
newcc& )
FrmViewRentalscc* 8
(cc8 9
thiscc9 =
)cc= >
;cc> ?
nextFormdd 
.dd 

ShowDialogdd 
(dd  
)dd  !
;dd! "
formee 
.ee 
Closeee 
(ee 
)ee 
;ee 
}ff 	
publicgg 
voidgg !
NavigateToAddCustomergg )
(gg) *
Formgg* .
formgg/ 3
)gg3 4
{hh 	
formii 
.ii 
Hideii 
(ii 
)ii 
;ii 
FrmAddCustomerjj 
nextFormjj #
=jj$ %
newjj& )
FrmAddCustomerjj* 8
(jj8 9
thisjj9 =
)jj= >
;jj> ?
nextFormkk 
.kk 

ShowDialogkk 
(kk  
)kk  !
;kk! "
formll 
.ll 
Closell 
(ll 
)ll 
;ll 
}mm 	
publicnn 
voidnn $
NavigateToUpdateCustomernn ,
(nn, -
Formnn- 1
formnn2 6
)nn6 7
{oo 	
formpp 
.pp 
Hidepp 
(pp 
)pp 
;pp 
FrmUpdateCustomerqq 
nextFormqq &
=qq' (
newqq) ,
FrmUpdateCustomerqq- >
(qq> ?
thisqq? C
)qqC D
;qqD E
nextFormrr 
.rr 

ShowDialogrr 
(rr  
)rr  !
;rr! "
formss 
.ss 
Closess 
(ss 
)ss 
;ss 
}tt 	
publicuu 
voiduu #
NavigateToViewCustomersuu +
(uu+ ,
Formuu, 0
formuu1 5
)uu5 6
{vv 	
formww 
.ww 
Hideww 
(ww 
)ww 
;ww 
FrmViewCustomersxx 
nextFormxx %
=xx& '
newxx( +
FrmViewCustomersxx, <
(xx< =
thisxx= A
)xxA B
;xxB C
nextFormyy 
.yy 

ShowDialogyy 
(yy  
)yy  !
;yy! "
formzz 
.zz 
Closezz 
(zz 
)zz 
;zz 
}{{ 	
public}} 
void}} 
NavigateToAnalysis}} &
(}}& '
Form}}' +
form}}, 0
)}}0 1
{~~ 	
form 
. 
Hide 
( 
) 
; 
FrmAnalysis
ÄÄ 
nextForm
ÄÄ  
=
ÄÄ! "
new
ÄÄ# &
FrmAnalysis
ÄÄ' 2
(
ÄÄ2 3
this
ÄÄ3 7
)
ÄÄ7 8
;
ÄÄ8 9
nextForm
ÅÅ 
.
ÅÅ 

ShowDialog
ÅÅ 
(
ÅÅ  
)
ÅÅ  !
;
ÅÅ! "
form
ÇÇ 
.
ÇÇ 
Close
ÇÇ 
(
ÇÇ 
)
ÇÇ 
;
ÇÇ 
}
ÉÉ 	
public
ÖÖ 
void
ÖÖ  
NavigateToMainMenu
ÖÖ &
(
ÖÖ& '
Form
ÖÖ' +
form
ÖÖ, 0
)
ÖÖ0 1
{
ÜÜ 	
form
áá 
.
áá 
Hide
áá 
(
áá 
)
áá 
;
áá 
FrmMainMenu
àà 
nextForm
àà  
=
àà! "
new
àà# &
FrmMainMenu
àà' 2
(
àà2 3
this
àà3 7
)
àà7 8
;
àà8 9
nextForm
ââ 
.
ââ 

ShowDialog
ââ 
(
ââ  
)
ââ  !
;
ââ! "
form
ää 
.
ää 
Close
ää 
(
ää 
)
ää 
;
ää 
}
ãã 	
}
åå 
}çç ôò
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
INavigation 
? 

navigation  *
=+ ,
null- 1
)1 2
{ 

Navigation 
= 

navigation 
??  "
new# &
NoOpNavigation' 5
(5 6
)6 7
;7 8
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
  ) 4
;
  4 5'
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
}ÀÀ Ì
NC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Miscellaneous.cs
	namespace 	
ToolSYS
 
. 
Presentation 
{		 
static

 

class

 
Miscellaneous

 
{ 
public 
static 
void %
SetDataGridViewProperties 4
(4 5
DataGridView5 A
dgvB E
)E F
{ 	
dgv 
. $
AllowUserToResizeColumns (
=) *
true+ /
;/ 0
dgv 
. 
AllowUserToAddRows "
=# $
false% *
;* +
dgv 
. !
AllowUserToResizeRows %
=& '
false( -
;- .
dgv 
. 
AutoSizeColumnsMode #
=$ %+
DataGridViewAutoSizeColumnsMode& E
.E F
FillF J
;J K
} 	
} 
} 8
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
private		 
IToolService		 
_toolService		 )
;		) *
private

 
RateService

 
_rateService

 (
;

( )
public 
FrmViewTools 
( 
INavigation '

navigation( 2
,2 3
IToolService4 @
toolServiceA L
)L M
:N O
baseP T
(T U

navigationU _
)_ `
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
= 
new 
RateService *
(* +
)+ ,
;, -
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
} Í&
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
private		 
CustomerService		 
_customerService		  0
;		0 1
public 
FrmViewCustomers 
(  
INavigation  +

navigation, 6
)6 7
:8 9
base: >
(> ?

navigation? I
)I J
{ 	
InitializeComponent 
(  
)  !
;! "
_customerService 
= 
new "
CustomerService# 2
(2 3
)3 4
;4 5
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
}99 ˚1
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
 
RateService

 
_rateService

 (
;

( )
public 
FrmUpdateToolRate  
(  !
INavigation! ,

navigation- 7
)7 8
:9 :
base; ?
(? @

navigation@ J
)J K
{ 	
InitializeComponent 
(  
)  !
;! "
_rateService 
= 
new 
RateService *
(* +
)+ ,
;, -
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
}QQ Ìq
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
readonly 
RateService $
_rateService% 1
;1 2
public 
FrmUpdateTool 
( 
INavigation (

navigation) 3
,3 4
IToolService5 A
toolServiceB M
)M N
:O P
baseQ U
(U V

navigationV `
)` a
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
= 
new 
RateService *
(* +
)+ ,
;, -
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
}àà ¨Q
XC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Forms\frmUpdateCustomer.cs
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
FrmUpdateCustomer *
:+ ,
NavForm- 4
{		 
private

 
CustomerService

 
_customerService

  0
;

0 1
public 
FrmUpdateCustomer  
(  !
INavigation! ,

navigation- 7
)7 8
:9 :
base; ?
(? @

navigation@ J
)J K
{ 	
InitializeComponent 
(  
)  !
;! "
_customerService 
= 
new "
CustomerService# 2
(2 3
)3 4
;4 5
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
void)) 
btnClear_Click)) #
())# $
object))$ *
sender))+ 1
,))1 2
	EventArgs))3 <
e))= >
)))> ?
{** 	
txtCustomerID++ 
.++ 
Clear++ 
(++  
)++  !
;++! "
txtForename,, 
.,, 
Clear,, 
(,, 
),, 
;,,  

txtSurname-- 
.-- 
Clear-- 
(-- 
)-- 
;-- 
txtEmail.. 
... 
Clear.. 
(.. 
).. 
;.. 
txtPhone// 
.// 
Clear// 
(// 
)// 
;// 

txtEircode00 
.00 
Clear00 
(00 
)00 
;00 
	txtPhrase11 
.11 
Clear11 
(11 
)11 
;11 
}22 	
private44 
void44 
btnUpdate_Click44 $
(44$ %
object44% +
sender44, 2
,442 3
	EventArgs444 =
e44> ?
)44? @
{55 	
try66 
{77 
Customer88 
customer88 !
=88" #
new88$ '
Customer88( 0
{881 2

customerId99 
=99  
Convert99! (
.99( )
ToInt3299) 0
(990 1
txtUpdCustomerID991 A
.99A B
Text99B F
)99F G
,99G H
forename:: 
=:: 
txtUpdForename:: -
.::- .
Text::. 2
,::2 3
surname;; 
=;; 
txtUpdSurname;; +
.;;+ ,
Text;;, 0
,;;0 1
email<< 
=<< 
txtUpdEmail<< '
.<<' (
Text<<( ,
,<<, -
phone== 
=== 
txtUpdPhone== '
.==' (
Text==( ,
,==, -
eircode>> 
=>> 
txtUpdEircode>> +
.>>+ ,
Text>>, 0
}?? 
;?? 
_customerServiceAA  
.AA  !
UpdateCustomerAA! /
(AA/ 0
customerAA0 8
)AA8 9
;AA9 :

MessageBoxCC 
.CC 
ShowCC 
(CC  
$strCC  J
,CCJ K
$strCCL Z
,CCZ [
MessageBoxButtonsCC\ m
.CCm n
OKCCn p
,CCp q
MessageBoxIcon	CCr Ä
.
CCÄ Å
Information
CCÅ å
)
CCå ç
;
CCç é
txtUpdCustomerIDDD  
.DD  !
ClearDD! &
(DD& '
)DD' (
;DD( )
txtUpdForenameEE 
.EE 
ClearEE $
(EE$ %
)EE% &
;EE& '
txtUpdSurnameFF 
.FF 
ClearFF #
(FF# $
)FF$ %
;FF% &
txtUpdEmailGG 
.GG 
ClearGG !
(GG! "
)GG" #
;GG# $
txtUpdPhoneHH 
.HH 
ClearHH !
(HH! "
)HH" #
;HH# $
txtUpdEircodeII 
.II 
ClearII #
(II# $
)II$ %
;II% &
}JJ 
catchKK 
(KK 
	ExceptionKK 
exKK 
)KK  
{LL 

MessageBoxNN 
.NN 
ShowNN 
(NN  
$@"NN  #
{NN# $
exNN$ &
.NN& '
MessageNN' .
}NN. /
"NN/ 0
,NN0 1
$strNN2 :
,NN: ;
MessageBoxButtonsNN< M
.NNM N
OKNNN P
,NNP Q
MessageBoxIconNNR `
.NN` a
ErrorNNa f
)NNf g
;NNg h
}OO 
}PP 	
privateRR 
voidRR "
dgvCustomers_CellClickRR +
(RR+ ,
objectRR, 2
senderRR3 9
,RR9 :%
DataGridViewCellEventArgsRR; T
eRRU V
)RRV W
{SS 	
txtUpdCustomerIDTT 
.TT 
TextTT !
=TT" #
dgvCustomersTT$ 0
.TT0 1
RowsTT1 5
[TT5 6
dgvCustomersTT6 B
.TTB C

CurrentRowTTC M
.TTM N
IndexTTN S
]TTS T
.TTT U
CellsTTU Z
[TTZ [
$numTT[ \
]TT\ ]
.TT] ^
ValueTT^ c
.TTc d
ToStringTTd l
(TTl m
)TTm n
;TTn o
txtUpdForenameUU 
.UU 
TextUU 
=UU  !
dgvCustomersUU" .
.UU. /
RowsUU/ 3
[UU3 4
dgvCustomersUU4 @
.UU@ A

CurrentRowUUA K
.UUK L
IndexUUL Q
]UUQ R
.UUR S
CellsUUS X
[UUX Y
$numUUY Z
]UUZ [
.UU[ \
ValueUU\ a
.UUa b
ToStringUUb j
(UUj k
)UUk l
;UUl m
txtUpdSurnameVV 
.VV 
TextVV 
=VV  
dgvCustomersVV! -
.VV- .
RowsVV. 2
[VV2 3
dgvCustomersVV3 ?
.VV? @

CurrentRowVV@ J
.VVJ K
IndexVVK P
]VVP Q
.VVQ R
CellsVVR W
[VVW X
$numVVX Y
]VVY Z
.VVZ [
ValueVV[ `
.VV` a
ToStringVVa i
(VVi j
)VVj k
;VVk l
txtUpdEmailWW 
.WW 
TextWW 
=WW 
dgvCustomersWW +
.WW+ ,
RowsWW, 0
[WW0 1
dgvCustomersWW1 =
.WW= >

CurrentRowWW> H
.WWH I
IndexWWI N
]WWN O
.WWO P
CellsWWP U
[WWU V
$numWWV W
]WWW X
.WWX Y
ValueWWY ^
.WW^ _
ToStringWW_ g
(WWg h
)WWh i
;WWi j
txtUpdPhoneXX 
.XX 
TextXX 
=XX 
dgvCustomersXX +
.XX+ ,
RowsXX, 0
[XX0 1
dgvCustomersXX1 =
.XX= >

CurrentRowXX> H
.XXH I
IndexXXI N
]XXN O
.XXO P
CellsXXP U
[XXU V
$numXXV W
]XXW X
.XXX Y
ValueXXY ^
.XX^ _
ToStringXX_ g
(XXg h
)XXh i
;XXi j
txtUpdEircodeYY 
.YY 
TextYY 
=YY  
dgvCustomersYY! -
.YY- .
RowsYY. 2
[YY2 3
dgvCustomersYY3 ?
.YY? @

CurrentRowYY@ J
.YYJ K
IndexYYK P
]YYP Q
.YYQ R
CellsYYR W
[YYW X
$numYYX Y
]YYY Z
.YYZ [
ValueYY[ `
.YY` a
ToStringYYa i
(YYi j
)YYj k
;YYk l
}ZZ 	
}[[ 
}\\ »
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
private		 
RateService		 
_rateService		 (
;		( )
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
)

8 9
:

: ;
base

< @
(

@ A

navigation

A K
)

K L
{ 	
InitializeComponent 
(  
)  !
;! "
_rateService 
= 
new 
RateService *
(* +
)+ ,
;, -
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
})) Î?
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
private		 
RentalService		 
_rentalService		 ,
;		, -
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
)

4 5
:

6 7
base

8 <
(

< =

navigation

= G
)

G H
{ 	
InitializeComponent 
(  
)  !
;! "
_rentalService 
= 
new  
RentalService! .
(. /
)/ 0
;0 1
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
=* +
RentalService, 9
.9 :
GetRentalItems: H
(H I
rentalIdI Q
)Q R
;R S
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
{11 
RentalService33 !
.33! "

ReturnTool33" ,
(33, -
rentalId33- 5
,335 6
toolId337 =
)33= >
;33> ?

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
=88* +
RentalService88, 9
.889 :
GetRentalItems88: H
(88H I
rentalId88I Q
)88Q R
;88R S
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
}ZZ §Ô
SC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Forms\frmRentTools.cs
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
class		 
FrmRentTools		 %
:		& '
NavForm		( /
{

 
private 
readonly 
IToolService %
_toolService& 2
;2 3
private 
readonly 
RateService $
_rateService% 1
;1 2
private 
readonly 
CustomerService (
_customerService) 9
;9 :
private 
readonly 
RentalService &
_rentalService' 5
;5 6
public 
FrmRentTools 
( 
INavigation '

navigation( 2
,2 3
IToolService4 @
toolServiceA L
)L M
:N O
baseP T
(T U

navigationU _
)_ `
{ 	
InitializeComponent 
(  
)  !
;! "
_toolService 
= 
toolService &
;& '
_rateService 
= 
new 
RateService *
(* +
)+ ,
;, -
_customerService 
= 
new "
CustomerService# 2
(2 3
)3 4
;4 5
_rentalService 
= 
new  
RentalService! .
(. /
)/ 0
;0 1
} 	
private 
void 
frmRentTools_Load &
(& '
object' -
sender. 4
,4 5
	EventArgs6 ?
e@ A
)A B
{ 	
dtpFrom 
. 
MinDate 
= 
DateTime &
.& '
Today' ,
;, -
dtpTo 
. 
MinDate 
= 
DateTime $
.$ %
Today% *
;* +
txtRentalID 
. 
Text 
= 
RentalService ,
., -
GetNextRentalId- <
(< =
)= >
.> ?
ToString? G
(G H
)H I
;I J
cboCategories 
. 
Items 
.  
Add  #
(# $
$str$ &
)& '
;' (
DataSet 

categories 
=  
_rateService! -
.- .
GetAllCategories. >
(> ?
)? @
;@ A
foreach   
(   
DataRow   
row    
in  ! #

categories  $ .
.  . /
Tables  / 5
[  5 6
$num  6 7
]  7 8
.  8 9
Rows  9 =
)  = >
{!! 
string"" 
category"" 
=""  !
row""" %
[""% &
$str""& 4
]""4 5
+""6 7
$str""8 =
+""> ?
row""@ C
[""C D
$str""D R
]""R S
;""S T
cboCategories## 
.## 
Items## #
.### $
Add##$ '
(##' (
category##( 0
)##0 1
;##1 2
}$$ 
	dgvRental%% 
.%% 
Columns%% 
.%% 
Add%% !
(%%! "
$str%%" *
,%%* +
$str%%, 0
)%%0 1
;%%1 2
	dgvRental&& 
.&& 
Columns&& 
.&& 
Add&& !
(&&! "
$str&&" 0
,&&0 1
$str&&2 A
)&&A B
;&&B C
	dgvRental'' 
.'' 
Columns'' 
.'' 
Add'' !
(''! "
$str''" 3
,''3 4
$str''5 B
)''B C
;''C D
	dgvRental(( 
.(( 
Columns(( 
.(( 
Add(( !
(((! "
$str((" 4
,((4 5
$str((6 D
)((D E
;((E F
	dgvRental)) 
.)) 
Columns)) 
.)) 
Add)) !
())! "
$str))" ,
,)), -
$str)). 9
)))9 :
;)): ;
	dgvRental** 
.** 
Columns** 
.** 
Add** !
(**! "
$str**" .
,**. /
$str**0 =
)**= >
;**> ?
	dgvRental++ 
.++ 
Columns++ 
.++ 
Add++ !
(++! "
$str++" -
,++- .
$str++/ ;
)++; <
;++< =
Miscellaneous,, 
.,, %
SetDataGridViewProperties,, 3
(,,3 4
	dgvRental,,4 =
),,= >
;,,> ?
}-- 	
private.. 
void.. #
btnCustomerSearch_Click.. ,
(.., -
object..- 3
sender..4 :
,..: ;
	EventArgs..< E
e..F G
)..G H
{// 	
dgvCustomers00 
.00 

DataSource00 #
=00$ %
_customerService00& 6
.006 7
SearchCustomers007 F
(00F G
txtCustomerSearch00G X
.00X Y
Text00Y ]
)00] ^
.00^ _
Tables00_ e
[00e f
$str00f p
]00p q
;00q r
dgvCustomers22 
.22 
Columns22  
[22  !
$num22! "
]22" #
.22# $

HeaderText22$ .
=22/ 0
$str221 6
;226 7
dgvCustomers33 
.33 
Columns33  
[33  !
$num33! "
]33" #
.33# $

HeaderText33$ .
=33/ 0
$str331 <
;33< =
dgvCustomers44 
.44 
Columns44  
[44  !
$num44! "
]44" #
.44# $

HeaderText44$ .
=44/ 0
$str441 ;
;44; <
dgvCustomers55 
.55 
Columns55  
[55  !
$num55! "
]55" #
.55# $

HeaderText55$ .
=55/ 0
$str551 9
;559 :
dgvCustomers66 
.66 
Columns66  
[66  !
$num66! "
]66" #
.66# $

HeaderText66$ .
=66/ 0
$str661 9
;669 :
dgvCustomers77 
.77 
Columns77  
[77  !
$num77! "
]77" #
.77# $

HeaderText77$ .
=77/ 0
$str771 ;
;77; <
Miscellaneous88 
.88 %
SetDataGridViewProperties88 3
(883 4
dgvCustomers884 @
)88@ A
;88A B
}99 	
private<< 
void<< "
dgvCustomers_CellClick<< +
(<<+ ,
object<<, 2
sender<<3 9
,<<9 :%
DataGridViewCellEventArgs<<; T
e<<U V
)<<V W
{== 	
if>> 
(>> 
dgvCustomers>> 
.>> 

CurrentRow>> '
!=>>( *
null>>+ /
)>>/ 0
{?? 
txtCustomerID@@ 
.@@ 
Text@@ "
=@@# $
dgvCustomers@@% 1
.@@1 2
Rows@@2 6
[@@6 7
dgvCustomers@@7 C
.@@C D

CurrentRow@@D N
.@@N O
Index@@O T
]@@T U
.@@U V
Cells@@V [
[@@[ \
$num@@\ ]
]@@] ^
.@@^ _
Value@@_ d
.@@d e
ToString@@e m
(@@m n
)@@n o
;@@o p
txtForenameAA 
.AA 
TextAA  
=AA! "
dgvCustomersAA# /
.AA/ 0
RowsAA0 4
[AA4 5
dgvCustomersAA5 A
.AAA B

CurrentRowAAB L
.AAL M
IndexAAM R
]AAR S
.AAS T
CellsAAT Y
[AAY Z
$numAAZ [
]AA[ \
.AA\ ]
ValueAA] b
.AAb c
ToStringAAc k
(AAk l
)AAl m
;AAm n

txtSurnameBB 
.BB 
TextBB 
=BB  !
dgvCustomersBB" .
.BB. /
RowsBB/ 3
[BB3 4
dgvCustomersBB4 @
.BB@ A

CurrentRowBBA K
.BBK L
IndexBBL Q
]BBQ R
.BBR S
CellsBBS X
[BBX Y
$numBBY Z
]BBZ [
.BB[ \
ValueBB\ a
.BBa b
ToStringBBb j
(BBj k
)BBk l
;BBl m
txtEmailCC 
.CC 
TextCC 
=CC 
dgvCustomersCC  ,
.CC, -
RowsCC- 1
[CC1 2
dgvCustomersCC2 >
.CC> ?

CurrentRowCC? I
.CCI J
IndexCCJ O
]CCO P
.CCP Q
CellsCCQ V
[CCV W
$numCCW X
]CCX Y
.CCY Z
ValueCCZ _
.CC_ `
ToStringCC` h
(CCh i
)CCi j
;CCj k
txtPhoneDD 
.DD 
TextDD 
=DD 
dgvCustomersDD  ,
.DD, -
RowsDD- 1
[DD1 2
dgvCustomersDD2 >
.DD> ?

CurrentRowDD? I
.DDI J
IndexDDJ O
]DDO P
.DDP Q
CellsDDQ V
[DDV W
$numDDW X
]DDX Y
.DDY Z
ValueDDZ _
.DD_ `
ToStringDD` h
(DDh i
)DDi j
;DDj k

txtEircodeEE 
.EE 
TextEE 
=EE  !
dgvCustomersEE" .
.EE. /
RowsEE/ 3
[EE3 4
dgvCustomersEE4 @
.EE@ A

CurrentRowEEA K
.EEK L
IndexEEL Q
]EEQ R
.EER S
CellsEES X
[EEX Y
$numEEY Z
]EEZ [
.EE[ \
ValueEE\ a
.EEa b
ToStringEEb j
(EEj k
)EEk l
;EEl m
}FF 
}GG 	
privateII 
voidII &
txtCustomerSearch_KeyPressII /
(II/ 0
objectII0 6
senderII7 =
,II= >
KeyPressEventArgsII? P
eIIQ R
)IIR S
{JJ 	
ifKK 
(KK 
eKK 
.KK 
KeyCharKK 
==KK 
(KK 
charKK !
)KK! "
$numKK" $
)KK$ %
{LL 
btnCustomerSearchMM !
.MM! "
PerformClickMM" .
(MM. /
)MM/ 0
;MM0 1
}NN 
}OO 	
privateQQ 
voidQQ $
dgvTools_CellDoubleClickQQ -
(QQ- .
objectQQ. 4
senderQQ5 ;
,QQ; <%
DataGridViewCellEventArgsQQ= V
eQQW X
)QQX Y
{RR 	
btnAddToRentalSS 
.SS 
PerformClickSS '
(SS' (
)SS( )
;SS) *
}TT 	
privateVV 
voidVV  
btnAddToRental_ClickVV )
(VV) *
objectVV* 0
senderVV1 7
,VV7 8
	EventArgsVV9 B
eVVC D
)VVD E
{WW 	
tryXX 
{YY 
ifZZ 
(ZZ 
stringZZ 
.ZZ 
IsNullOrEmptyZZ (
(ZZ( )
txtCustomerIDZZ) 6
.ZZ6 7
TextZZ7 ;
)ZZ; <
)ZZ< =
throw[[ 
new[[ 
ArgumentException[[ /
([[/ 0
$str[[0 K
)[[K L
;[[L M
int]] 

customerId]] 
=]]  
Convert]]! (
.]]( )
ToInt32]]) 0
(]]0 1
txtCustomerID]]1 >
.]]> ?
Text]]? C
)]]C D
;]]D E
if^^ 
(^^ 
dgvTools^^ 
.^^ 

CurrentRow^^ '
!=^^( *
null^^+ /
)^^/ 0
{__ 
string`` 
id`` 
=`` 
dgvTools``  (
.``( )
Rows``) -
[``- .
dgvTools``. 6
.``6 7

CurrentRow``7 A
.``A B
Index``B G
]``G H
.``H I
Cells``I N
[``N O
$num``O P
]``P Q
.``Q R
Value``R W
?``W X
.``X Y
ToString``Y a
(``a b
)``b c
??``d f
throw``g l
new``m p
ArgumentException	``q Ç
(
``Ç É
$str
``É ò
)
``ò ô
;
``ô ö
stringaa 
categoryCodeaa '
=aa( )
dgvToolsaa* 2
.aa2 3
Rowsaa3 7
[aa7 8
dgvToolsaa8 @
.aa@ A

CurrentRowaaA K
.aaK L
IndexaaL Q
]aaQ R
.aaR S
CellsaaS X
[aaX Y
$numaaY Z
]aaZ [
.aa[ \
Valueaa\ a
?aaa b
.aab c
ToStringaac k
(aak l
)aal m
??aan p
throwaaq v
newaaw z
ArgumentException	aa{ å
(
aaå ç
$str
aaç ®
)
aa® ©
;
aa© ™
stringbb 
descriptionbb &
=bb' (
dgvToolsbb) 1
.bb1 2
Rowsbb2 6
[bb6 7
dgvToolsbb7 ?
.bb? @

CurrentRowbb@ J
.bbJ K
IndexbbK P
]bbP Q
.bbQ R
CellsbbR W
[bbW X
$numbbX Y
]bbY Z
.bbZ [
Valuebb[ `
?bb` a
.bba b
ToStringbbb j
(bbj k
)bbk l
??bbm o
throwbbp u
newbbv y
ArgumentException	bbz ã
(
bbã å
$str
bbå •
)
bb• ¶
;
bb¶ ß
stringcc 
manufacturercc '
=cc( )
dgvToolscc* 2
.cc2 3
Rowscc3 7
[cc7 8
dgvToolscc8 @
.cc@ A

CurrentRowccA K
.ccK L
IndexccL Q
]ccQ R
.ccR S
CellsccS X
[ccX Y
$numccY Z
]ccZ [
.cc[ \
Valuecc\ a
?cca b
.ccb c
ToStringccc k
(cck l
)ccl m
??ccn p
throwccq v
newccw z
ArgumentException	cc{ å
(
ccå ç
$str
ccç ß
)
ccß ®
;
cc® ©
DateTimedd 
rentDatedd %
=dd& '
dtpFromdd( /
.dd/ 0
Valuedd0 5
;dd5 6
DateTimeee 

returnDateee '
=ee( )
dtpToee* /
.ee/ 0
Valueee0 5
;ee5 6
decimalgg 
	rentalFeegg %
=gg& '
_rentalServicegg( 6
.gg6 7
CalculateRentalFeegg7 I
(ggI J

customerIdggJ T
,ggT U
categoryCodeggV b
,ggb c
rentDateggd l
,ggl m

returnDateggn x
)ggx y
;ggy z
ifii 
(ii 
	dgvRentalii !
.ii! "
Rowsii" &
.ii& '
Countii' ,
>=ii- /
$numii0 1
)ii1 2
{jj 
foreachkk 
(kk  !
DataGridViewRowkk! 0
rowkk1 4
inkk5 7
	dgvRentalkk8 A
.kkA B
RowskkB F
)kkF G
{ll 
ifmm 
(mm  
rowmm  #
.mm# $
Cellsmm$ )
[mm) *
$strmm* 2
]mm2 3
.mm3 4
Valuemm4 9
?mm9 :
.mm: ;
ToStringmm; C
(mmC D
)mmD E
==mmF H
idmmI K
)mmK L
{nn 

MessageBoxoo  *
.oo* +
Showoo+ /
(oo/ 0
$stroo0 X
,ooX Y
$strooZ d
,ood e
MessageBoxButtonsoof w
.oow x
OKoox z
,ooz {
MessageBoxIcon	oo| ä
.
ooä ã
Error
ooã ê
)
ooê ë
;
ooë í
returnpp  &
;pp& '
}qq 
}rr 
}ss 
	dgvRentaluu 
.uu 
Rowsuu "
.uu" #
Adduu# &
(uu& '
idvv 
,vv 
categoryCodeww $
,ww$ %
descriptionxx #
,xx# $
manufactureryy $
,yy$ %
rentDatezz  
.zz  !
ToStringzz! )
(zz) *
$strzz* 5
)zz5 6
,zz6 7

returnDate{{ "
.{{" #
ToString{{# +
({{+ ,
$str{{, 7
){{7 8
,{{8 9
	rentalFee|| !
.||! "
ToString||" *
(||* +
$str||+ 1
)||1 2
)}} 
;}} 
}~~ 
else 
{
ÄÄ 
throw
ÅÅ 
new
ÅÅ 
ArgumentException
ÅÅ /
(
ÅÅ/ 0
$str
ÅÅ0 G
)
ÅÅG H
;
ÅÅH I
}
ÇÇ 
UpdateTotalFee
ÑÑ 
(
ÑÑ 
)
ÑÑ  
;
ÑÑ  !
}
ÖÖ 
catch
ÜÜ 
(
ÜÜ 
	Exception
ÜÜ 
ex
ÜÜ 
)
ÜÜ  
{
áá 

MessageBox
àà 
.
àà 
Show
àà 
(
àà  
$@"
àà  #
{
àà# $
ex
àà$ &
.
àà& '
Message
àà' .
}
àà. /
"
àà/ 0
,
àà0 1
$str
àà2 :
,
àà: ;
MessageBoxButtons
àà< M
.
ààM N
OK
ààN P
,
ààP Q
MessageBoxIcon
ààR `
.
àà` a
Error
ààa f
)
ààf g
;
ààg h
}
ââ 
}
ää 	
private
åå 
void
åå 
UpdateTotalFee
åå #
(
åå# $
)
åå$ %
{
çç 	
txtTotalFee
éé 
.
éé 
Text
éé 
=
éé 
	dgvRental
éé (
.
éé( )
Rows
éé) -
.
éé- .
Cast
éé. 2
<
éé2 3
DataGridViewRow
éé3 B
>
ééB C
(
ééC D
)
ééD E
.
èè  !
Sum
èè! $
(
èè$ %
row
èè% (
=>
èè) +
Convert
èè, 3
.
èè3 4
	ToDecimal
èè4 =
(
èè= >
row
èè> A
.
èèA B
Cells
èèB G
[
èèG H
$str
èèH S
]
èèS T
.
èèT U
Value
èèU Z
)
èèZ [
)
èè[ \
.
êê  !
ToString
êê! )
(
êê) *
$str
êê* 0
)
êê0 1
;
êê1 2
}
ëë 	
private
ìì 
void
ìì $
btnConfirmRental_Click
ìì +
(
ìì+ ,
object
ìì, 2
sender
ìì3 9
,
ìì9 :
	EventArgs
ìì; D
e
ììE F
)
ììF G
{
îî 	
try
ïï 
{
ññ 
if
óó 
(
óó 
string
óó 
.
óó 
IsNullOrEmpty
óó (
(
óó( )
txtCustomerID
óó) 6
.
óó6 7
Text
óó7 ;
)
óó; <
)
óó< =
throw
òò 
new
òò 
ArgumentException
òò /
(
òò/ 0
$str
òò0 K
)
òòK L
;
òòL M
if
öö 
(
öö 
	dgvRental
öö 
.
öö 
Rows
öö "
.
öö" #
Count
öö# (
==
öö) +
$num
öö, -
)
öö- .
throw
õõ 
new
õõ 
ArgumentException
õõ /
(
õõ/ 0
$str
õõ0 Y
)
õõY Z
;
õõZ [
var
ùù 
rentalBuilder
ùù !
=
ùù" #
new
ùù$ '
RentalBuilder
ùù( 5
(
ùù5 6
)
ùù6 7
.
ûû 
SetRentalId
ûû  
(
ûû  !
Convert
ûû! (
.
ûû( )
ToInt32
ûû) 0
(
ûû0 1
txtRentalID
ûû1 <
.
ûû< =
Text
ûû= A
)
ûûA B
)
ûûB C
.
üü 
SetCustomerId
üü "
(
üü" #
Convert
üü# *
.
üü* +
ToInt32
üü+ 2
(
üü2 3
txtCustomerID
üü3 @
.
üü@ A
Text
üüA E
)
üüE F
)
üüF G
.
††  
SetTransactionDate
†† '
(
††' (
DateTime
††( 0
.
††0 1
Today
††1 6
)
††6 7
.
°° 
SetTotalFee
°°  
(
°°  !
Convert
°°! (
.
°°( )
	ToDecimal
°°) 2
(
°°2 3
txtTotalFee
°°3 >
.
°°> ?
Text
°°? C
)
°°C D
)
°°D E
;
°°E F
foreach
££ 
(
££ 
DataGridViewRow
££ (
row
££) ,
in
££- /
	dgvRental
££0 9
.
££9 :
Rows
££: >
)
££> ?
{
§§ 
var
•• 
rentDateValue
•• %
=
••& '
row
••( +
.
••+ ,
Cells
••, 1
[
••1 2
$str
••2 <
]
••< =
.
••= >
Value
••> C
?
••C D
.
••D E
ToString
••E M
(
••M N
)
••N O
;
••O P
var
¶¶ 
returnDateValue
¶¶ '
=
¶¶( )
row
¶¶* -
.
¶¶- .
Cells
¶¶. 3
[
¶¶3 4
$str
¶¶4 @
]
¶¶@ A
.
¶¶A B
Value
¶¶B G
?
¶¶G H
.
¶¶H I
ToString
¶¶I Q
(
¶¶Q R
)
¶¶R S
;
¶¶S T
if
®® 
(
®® 
string
®® 
.
®® 
IsNullOrEmpty
®® ,
(
®®, -
rentDateValue
®®- :
)
®®: ;
)
®®; <
throw
©© 
new
©© !
ArgumentException
©©" 3
(
©©3 4
$str
©©4 `
)
©©` a
;
©©a b
if
™™ 
(
™™ 
string
™™ 
.
™™ 
IsNullOrEmpty
™™ ,
(
™™, -
returnDateValue
™™- <
)
™™< =
)
™™= >
throw
´´ 
new
´´ !
ArgumentException
´´" 3
(
´´3 4
$str
´´4 b
)
´´b c
;
´´c d

RentalItem
≠≠ 

rentalItem
≠≠ )
=
≠≠* +
new
≠≠, /
(
≠≠/ 0
)
≠≠0 1
{
ÆÆ 
rentalId
ØØ  
=
ØØ! "
Convert
ØØ# *
.
ØØ* +
ToInt32
ØØ+ 2
(
ØØ2 3
txtRentalID
ØØ3 >
.
ØØ> ?
Text
ØØ? C
)
ØØC D
,
ØØD E
toolId
∞∞ 
=
∞∞  
Convert
∞∞! (
.
∞∞( )
ToInt32
∞∞) 0
(
∞∞0 1
row
∞∞1 4
.
∞∞4 5
Cells
∞∞5 :
[
∞∞: ;
$str
∞∞; C
]
∞∞C D
.
∞∞D E
Value
∞∞E J
??
∞∞K M
throw
∞∞N S
new
∞∞T W
ArgumentException
∞∞X i
(
∞∞i j
$str
∞∞j 
)∞∞ Ä
)∞∞Ä Å
,∞∞Å Ç
rentDate
±±  
=
±±! "
DateTime
±±# +
.
±±+ ,
Parse
±±, 1
(
±±1 2
rentDateValue
±±2 ?
)
±±? @
,
±±@ A

returnDate
≤≤ "
=
≤≤# $
DateTime
≤≤% -
.
≤≤- .
Parse
≤≤. 3
(
≤≤3 4
returnDateValue
≤≤4 C
)
≤≤C D
,
≤≤D E
	rentalFee
≥≥ !
=
≥≥" #
Convert
≥≥$ +
.
≥≥+ ,
	ToDecimal
≥≥, 5
(
≥≥5 6
row
≥≥6 9
.
≥≥9 :
Cells
≥≥: ?
[
≥≥? @
$str
≥≥@ K
]
≥≥K L
.
≥≥L M
Value
≥≥M R
??
≥≥S U
throw
≥≥V [
new
≥≥\ _
ArgumentException
≥≥` q
(
≥≥q r
$str≥≥r ä
)≥≥ä ã
)≥≥ã å
}
¥¥ 
;
¥¥ 
rentalBuilder
∂∂ !
.
∂∂! "
AddRentalItem
∂∂" /
(
∂∂/ 0

rentalItem
∂∂0 :
)
∂∂: ;
;
∂∂; <
}
∑∑ 
Rental
ππ 
rental
ππ 
=
ππ 
rentalBuilder
ππ  -
.
ππ- .
Build
ππ. 3
(
ππ3 4
)
ππ4 5
;
ππ5 6
_rentalService
ªª 
.
ªª 
ConfirmRental
ªª ,
(
ªª, -
rental
ªª- 3
)
ªª3 4
;
ªª4 5

MessageBox
ΩΩ 
.
ΩΩ 
Show
ΩΩ 
(
ΩΩ  
$str
ΩΩ  4
,
ΩΩ4 5
$str
ΩΩ6 D
,
ΩΩD E
MessageBoxButtons
ΩΩF W
.
ΩΩW X
OK
ΩΩX Z
,
ΩΩZ [
MessageBoxIcon
ΩΩ\ j
.
ΩΩj k
Information
ΩΩk v
)
ΩΩv w
;
ΩΩw x
RefreshForm
ææ 
(
ææ 
)
ææ 
;
ææ 
}
øø 
catch
¿¿ 
(
¿¿ 
	Exception
¿¿ 
ex
¿¿ 
)
¿¿  
{
¡¡ 

MessageBox
¬¬ 
.
¬¬ 
Show
¬¬ 
(
¬¬  
$@"
¬¬  #
{
¬¬# $
ex
¬¬$ &
.
¬¬& '
Message
¬¬' .
}
¬¬. /
"
¬¬/ 0
,
¬¬0 1
$str
¬¬2 :
,
¬¬: ;
MessageBoxButtons
¬¬< M
.
¬¬M N
OK
¬¬N P
,
¬¬P Q
MessageBoxIcon
¬¬R `
.
¬¬` a
Error
¬¬a f
)
¬¬f g
;
¬¬g h
}
√√ 
}
ƒƒ 	
private
∆∆ 
void
∆∆ 
RefreshForm
∆∆  
(
∆∆  !
)
∆∆! "
{
«« 	
txtRentalID
»» 
.
»» 
Text
»» 
=
»» 
RentalService
»» ,
.
»», -
GetNextRentalId
»»- <
(
»»< =
)
»»= >
.
»»> ?
ToString
»»? G
(
»»G H
)
»»H I
;
»»I J
txtCustomerSearch
…… 
.
…… 
Clear
…… #
(
……# $
)
……$ %
;
……% &
txtCustomerID
   
.
   
Clear
   
(
    
)
    !
;
  ! "
txtForename
ÀÀ 
.
ÀÀ 
Clear
ÀÀ 
(
ÀÀ 
)
ÀÀ 
;
ÀÀ  
txtPhone
ÃÃ 
.
ÃÃ 
Clear
ÃÃ 
(
ÃÃ 
)
ÃÃ 
;
ÃÃ 
txtEmail
ÕÕ 
.
ÕÕ 
Clear
ÕÕ 
(
ÕÕ 
)
ÕÕ 
;
ÕÕ 

txtEircode
ŒŒ 
.
ŒŒ 
Clear
ŒŒ 
(
ŒŒ 
)
ŒŒ 
;
ŒŒ 

txtSurname
œœ 
.
œœ 
Clear
œœ 
(
œœ 
)
œœ 
;
œœ 
txtTotalFee
–– 
.
–– 
Clear
–– 
(
–– 
)
–– 
;
––  
dgvCustomers
—— 
.
—— 

DataSource
—— #
=
——$ %
null
——& *
;
——* +
dgvCustomers
““ 
.
““ 
Rows
““ 
.
““ 
Clear
““ #
(
““# $
)
““$ %
;
““% &
dgvTools
”” 
.
”” 

DataSource
”” 
=
””  !
null
””" &
;
””& '
dgvTools
‘‘ 
.
‘‘ 
Rows
‘‘ 
.
‘‘ 
Clear
‘‘ 
(
‘‘  
)
‘‘  !
;
‘‘! "
	dgvRental
’’ 
.
’’ 
Rows
’’ 
.
’’ 
Clear
’’  
(
’’  !
)
’’! "
;
’’" #
cboCategories
÷÷ 
.
÷÷ 
SelectedIndex
÷÷ '
=
÷÷( )
-
÷÷* +
$num
÷÷+ ,
;
÷÷, -
dtpFrom
◊◊ 
.
◊◊ 
Value
◊◊ 
=
◊◊ 
DateTime
◊◊ $
.
◊◊$ %
Today
◊◊% *
;
◊◊* +
dtpTo
ÿÿ 
.
ÿÿ 
Value
ÿÿ 
=
ÿÿ 
DateTime
ÿÿ "
.
ÿÿ" #
Today
ÿÿ# (
;
ÿÿ( )
}
ŸŸ 	
private
€€ 
void
€€ 0
"cboCategories_SelectedIndexChanged
€€ 7
(
€€7 8
object
€€8 >
sender
€€? E
,
€€E F
	EventArgs
€€G P
e
€€Q R
)
€€R S
{
‹‹ 	
if
›› 
(
›› 
cboCategories
›› 
.
›› 
SelectedIndex
›› +
>=
››, .
$num
››/ 0
&&
››1 3
cboCategories
››4 A
.
››A B
SelectedItem
››B N
!=
››O Q
null
››R V
)
››V W
{
ﬁﬁ 
string
ﬂﬂ 
categoryCode
ﬂﬂ #
=
ﬂﬂ$ %
cboCategories
ﬂﬂ& 3
.
ﬂﬂ3 4
SelectedItem
ﬂﬂ4 @
.
ﬂﬂ@ A
ToString
ﬂﬂA I
(
ﬂﬂI J
)
ﬂﬂJ K
!
ﬂﬂK L
[
ﬂﬂL M
..
ﬂﬂM O
$num
ﬂﬂO P
]
ﬂﬂP Q
;
ﬂﬂQ R
dgvTools
·· 
.
·· 

DataSource
·· #
=
··$ %
_toolService
··& 2
.
‚‚ 
GetRentableTools
‚‚ %
(
‚‚% &
categoryCode
‚‚& 2
:
‚‚2 3
categoryCode
‚‚4 @
,
‚‚@ A
dtpFrom
‚‚B I
.
‚‚I J
Value
‚‚J O
,
‚‚O P
dtpTo
‚‚Q V
.
‚‚V W
Value
‚‚W \
)
‚‚\ ]
.
„„ 
Tables
„„ 
[
„„ 
$str
„„ "
]
„„" #
;
„„# $
dgvTools
ÂÂ 
.
ÂÂ 
Columns
ÂÂ  
[
ÂÂ  !
$num
ÂÂ! "
]
ÂÂ" #
.
ÂÂ# $

HeaderText
ÂÂ$ .
=
ÂÂ/ 0
$str
ÂÂ1 6
;
ÂÂ6 7
dgvTools
ÊÊ 
.
ÊÊ 
Columns
ÊÊ  
[
ÊÊ  !
$num
ÊÊ! "
]
ÊÊ" #
.
ÊÊ# $

HeaderText
ÊÊ$ .
=
ÊÊ/ 0
$str
ÊÊ1 A
;
ÊÊA B
dgvTools
ÁÁ 
.
ÁÁ 
Columns
ÁÁ  
[
ÁÁ  !
$num
ÁÁ! "
]
ÁÁ" #
.
ÁÁ# $

HeaderText
ÁÁ$ .
=
ÁÁ/ 0
$str
ÁÁ1 ?
;
ÁÁ? @
dgvTools
ËË 
.
ËË 
Columns
ËË  
[
ËË  !
$num
ËË! "
]
ËË" #
.
ËË# $

HeaderText
ËË$ .
=
ËË/ 0
$str
ËË1 @
;
ËË@ A
dgvTools
ÈÈ 
.
ÈÈ 
Columns
ÈÈ  
[
ÈÈ  !
$num
ÈÈ! "
]
ÈÈ" #
.
ÈÈ# $

HeaderText
ÈÈ$ .
=
ÈÈ/ 0
$str
ÈÈ1 :
;
ÈÈ: ;
Miscellaneous
ÍÍ 
.
ÍÍ '
SetDataGridViewProperties
ÍÍ 7
(
ÍÍ7 8
dgvTools
ÍÍ8 @
)
ÍÍ@ A
;
ÍÍA B
}
ÎÎ 
else
ÏÏ 
{
ÌÌ 

MessageBox
ÓÓ 
.
ÓÓ 
Show
ÓÓ 
(
ÓÓ  
$str
ÓÓ  B
,
ÓÓB C
$str
ÓÓD X
,
ÓÓX Y
MessageBoxButtons
ÓÓZ k
.
ÓÓk l
OK
ÓÓl n
,
ÓÓn o
MessageBoxIcon
ÓÓp ~
.
ÓÓ~ 
WarningÓÓ Ü
)ÓÓÜ á
;ÓÓá à
}
ÔÔ 
}
 	
}
ÒÒ 
}ÚÚ π?
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
} Ì`
RC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Forms\frmAnalysis.cs
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
class 
FrmAnalysis $
:% &
NavForm' .
{		 
private

 
readonly

 
AnalysisService

 (
_analysisService

) 9
;

9 :
private 
readonly 
RateService $
_rateService% 1
;1 2
private 
IReportStrategy 
_report  '
;' (
public 
FrmAnalysis 
( 
INavigation &

navigation' 1
)1 2
:3 4
base5 9
(9 :

navigation: D
)D E
{ 	
InitializeComponent 
(  
)  !
;! "
_analysisService 
= 
new "
AnalysisService# 2
(2 3
)3 4
;4 5
_rateService 
= 
new 
RateService *
(* +
)+ ,
;, -
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
; 
LoadCategories 
( 
) 
; 
SetReportType 
( 
) 
; 
} 	
private 
void !
InitializeReportTypes *
(* +
)+ ,
{ 	
cboReportType 
. 
Items 
.  
Add  #
(# $
$str$ 6
)6 7
;7 8
cboReportType   
.   
Items   
.    
Add    #
(  # $
$str  $ :
)  : ;
;  ; <
cboReportType!! 
.!! 
SelectedIndex!! '
=!!( )
$num!!* +
;!!+ ,
}"" 	
private$$ 
void$$ 
LoadCategories$$ #
($$# $
)$$$ %
{%% 	
try&& 
{'' 
cboCategories(( 
.(( 
Items(( #
.((# $
Clear(($ )
((() *
)((* +
;((+ ,
DataSet)) 

categories)) "
=))# $
_rateService))% 1
.))1 2
GetAllCategories))2 B
())B C
)))C D
;))D E
foreach++ 
(++ 
DataRow++  
row++! $
in++% '

categories++( 2
.++2 3
Tables++3 9
[++9 :
$num++: ;
]++; <
.++< =
Rows++= A
)++A B
{,, 
string-- 
category-- #
=--$ %
$"--& (
{--( )
row--) ,
[--, -
$str--- ;
]--; <
}--< =
$str--= @
{--@ A
row--A D
[--D E
$str--E S
]--S T
}--T U
"--U V
;--V W
cboCategories.. !
...! "
Items.." '
...' (
Add..( +
(..+ ,
category.., 4
)..4 5
;..5 6
}// 
}00 
catch11 
(11 
	Exception11 
ex11 
)11  
{22 

MessageBox33 
.33 
Show33 
(33  
$@"33  #
{33# $
ex33$ &
.33& '
Message33' .
}33. /
"33/ 0
,330 1
$str332 :
,33: ;
MessageBoxButtons33< M
.33M N
OK33N P
,33P Q
MessageBoxIcon33R `
.33` a
Error33a f
)33f g
;33g h
}44 
}55 	
private77 
void77 
	LoadYears77 
(77 
)77  
{88 	
try99 
{:: 
	DataTable;; 

yearsTable;; $
=;;% &
_analysisService;;' 7
.;;7 8
GetDistinctYears;;8 H
(;;H I
);;I J
;;;J K
cboYears<< 
.<< 
Items<< 
.<< 
Clear<< $
(<<$ %
)<<% &
;<<& '
foreach>> 
(>> 
DataRow>>  
row>>! $
in>>% '

yearsTable>>( 2
.>>2 3
Rows>>3 7
)>>7 8
{?? 
cboYears@@ 
.@@ 
Items@@ "
.@@" #
Add@@# &
(@@& '
row@@' *
[@@* +
$str@@+ 1
]@@1 2
.@@2 3
ToString@@3 ;
(@@; <
)@@< =
)@@= >
;@@> ?
}AA 
}BB 
catchCC 
(CC 
	ExceptionCC 
exCC 
)CC  
{DD 

MessageBoxEE 
.EE 
ShowEE 
(EE  
$@"EE  #
{EE# $
exEE$ &
.EE& '
MessageEE' .
}EE. /
"EE/ 0
,EE0 1
$strEE2 :
,EE: ;
MessageBoxButtonsEE< M
.EEM N
OKEEN P
,EEP Q
MessageBoxIconEER `
.EE` a
ErrorEEa f
)EEf g
;EEg h
}FF 
}GG 	
privateII 
voidII 
SetReportTypeII "
(II" #
)II# $
{JJ 	
ifKK 
(KK 
cboReportTypeKK 
.KK 
SelectedItemKK *
.KK* +
ToStringKK+ 3
(KK3 4
)KK4 5
==KK6 8
$strKK9 K
)KKK L
{LL 
_reportMM 
=MM 
newMM 
RevenueReportMM +
(MM+ ,
_analysisServiceMM, <
)MM< =
;MM= >
}NN 
elseOO 
{PP 
_reportQQ 
=QQ 
newQQ 
ToolRentalReportQQ .
(QQ. /
_analysisServiceQQ/ ?
)QQ? @
;QQ@ A
}RR 
lblCategorySS 
.SS 
VisibleSS 
=SS  !
_reportSS" )
.SS) *
needsCategorySS* 7
;SS7 8
cboCategoriesTT 
.TT 
VisibleTT !
=TT" #
_reportTT$ +
.TT+ ,
needsCategoryTT, 9
;TT9 :
}UU 	
privateWW 
voidWW 0
$cboReportType_SelectedIndexChanged_1WW 9
(WW9 :
objectWW: @
senderWWA G
,WWG H
	EventArgsWWI R
eWWS T
)WWT U
{XX 	
SetReportTypeYY 
(YY 
)YY 
;YY 
}ZZ 	
private\\ 
void\\ 
btnConfirm_Click\\ %
(\\% &
object\\& ,
sender\\- 3
,\\3 4
	EventArgs\\5 >
e\\? @
)\\@ A
{]] 	
try^^ 
{__ 
ValidateSelections`` "
(``" #
)``# $
;``$ %
UpdateChartaa 
(aa 
)aa 
;aa 
}bb 
catchcc 
(cc 
	Exceptioncc 
excc 
)cc  
{dd 

MessageBoxee 
.ee 
Showee 
(ee  
exee  "
.ee" #
Messageee# *
,ee* +
$stree, @
,ee@ A
MessageBoxButtonseeB S
.eeS T
OKeeT V
,eeV W
MessageBoxIconeeX f
.eef g
Warningeeg n
)een o
;eeo p
}ff 
}gg 	
privateii 
voidii 
ValidateSelectionsii '
(ii' (
)ii( )
{jj 	
ifkk 
(kk 
_reportkk 
.kk 
needsCategorykk %
)kk% &
{ll 
ifmm 
(mm 
cboCategoriesmm !
.mm! "
SelectedIndexmm" /
<mm0 1
$nummm2 3
)mm3 4
thrownn 
newnn 
ArgumentExceptionnn /
(nn/ 0
$strnn0 P
)nnP Q
;nnQ R
}oo 
ifqq 
(qq 
cboYearsqq 
.qq 
SelectedIndexqq &
<qq' (
$numqq) *
)qq* +
throwrr 
newrr 
ArgumentExceptionrr +
(rr+ ,
$strrr, C
)rrC D
;rrD E
}ss 	
privateuu 
voiduu 
UpdateChartuu  
(uu  !
)uu! "
{vv 	
tryww 
{xx 
intyy 
selectedYearyy  
=yy! "
intyy# &
.yy& '
Parseyy' ,
(yy, -
cboYearsyy- 5
.yy5 6
SelectedItemyy6 B
.yyB C
ToStringyyC K
(yyK L
)yyL M
)yyM N
;yyN O
stringzz 
categoryCodezz #
=zz$ %
nullzz& *
;zz* +
if|| 
(|| 
_report|| 
.|| 
needsCategory|| )
&&||* ,
cboCategories||- :
.||: ;
SelectedItem||; G
!=||H J
null||K O
)||O P
{}} 
categoryCode~~  
=~~! "
cboCategories~~# 0
.~~0 1
SelectedItem~~1 =
.~~= >
ToString~~> F
(~~F G
)~~G H
.~~H I
	Substring~~I R
(~~R S
$num~~S T
,~~T U
$num~~V W
)~~W X
;~~X Y
} 
var
ÄÄ 
(
ÄÄ 
labels
ÄÄ 
,
ÄÄ 
values
ÄÄ #
)
ÄÄ# $
=
ÄÄ% &
_report
ÄÄ' .
.
ÄÄ. /
GetData
ÄÄ/ 6
(
ÄÄ6 7
selectedYear
ÄÄ7 C
,
ÄÄC D
categoryCode
ÄÄE Q
)
ÄÄQ R
;
ÄÄR S

formsPlot1
ÇÇ 
.
ÇÇ 
Plot
ÇÇ 
.
ÇÇ  
Clear
ÇÇ  %
(
ÇÇ% &
)
ÇÇ& '
;
ÇÇ' (

formsPlot1
ÉÉ 
.
ÉÉ 
Plot
ÉÉ 
.
ÉÉ  
AddBar
ÉÉ  &
(
ÉÉ& '
values
ÉÉ' -
)
ÉÉ- .
;
ÉÉ. /
double
ÑÑ 
[
ÑÑ 
]
ÑÑ 

xPositions
ÑÑ #
=
ÑÑ$ %

Enumerable
ÑÑ& 0
.
ÑÑ0 1
Range
ÑÑ1 6
(
ÑÑ6 7
$num
ÑÑ7 8
,
ÑÑ8 9
labels
ÑÑ: @
.
ÑÑ@ A
Length
ÑÑA G
)
ÑÑG H
.
ÖÖ 
Select
ÖÖ 
(
ÖÖ 
i
ÖÖ 
=>
ÖÖ  
(
ÖÖ! "
double
ÖÖ" (
)
ÖÖ( )
i
ÖÖ) *
)
ÖÖ* +
.
ÖÖ+ ,
ToArray
ÖÖ, 3
(
ÖÖ3 4
)
ÖÖ4 5
;
ÖÖ5 6

formsPlot1
ÜÜ 
.
ÜÜ 
Plot
ÜÜ 
.
ÜÜ  
XTicks
ÜÜ  &
(
ÜÜ& '

xPositions
ÜÜ' 1
,
ÜÜ1 2
labels
ÜÜ3 9
)
ÜÜ9 :
;
ÜÜ: ;

formsPlot1
áá 
.
áá 
Plot
áá 
.
áá  
Title
áá  %
(
áá% &
_report
áá& -
.
áá- .
GetTitle
áá. 6
(
áá6 7
selectedYear
áá7 C
,
ááC D
categoryCode
ááE Q
)
ááQ R
)
ááR S
;
ááS T

formsPlot1
àà 
.
àà 
Plot
àà 
.
àà  
XLabel
àà  &
(
àà& '
$str
àà' /
)
àà/ 0
;
àà0 1

formsPlot1
ââ 
.
ââ 
Refresh
ââ "
(
ââ" #
)
ââ# $
;
ââ$ %
}
ää 
catch
ãã 
(
ãã 
	Exception
ãã 
ex
ãã 
)
ãã  
{
åå 

MessageBox
çç 
.
çç 
Show
çç 
(
çç  
$@"
çç  #
$str
çç# <
{
çç< =
ex
çç= ?
.
çç? @
Message
çç@ G
}
ççG H
"
ççH I
,
ççI J
$str
ççK S
,
ççS T
MessageBoxButtons
ççU f
.
ççf g
OK
ççg i
,
ççi j
MessageBoxIcon
ççk y
.
ççy z
Error
ççz 
)çç Ä
;ççÄ Å
}
éé 
}
èè 	
}
êê 
}ëë ÍC
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
readonly 
RateService $
_rateService% 1
;1 2
public 

FrmAddTool 
( 
INavigation %

navigation& 0
,0 1
IToolService2 >
toolService? J
)J K
:L M
baseN R
(R S

navigationS ]
)] ^
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
= 
new 
RateService *
(* +
)+ ,
;, -
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
}__ ¸"
UC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Forms\frmAddCustomer.cs
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
FrmAddCustomer '
:( )
NavForm* 1
{ 
private		 
readonly		 
CustomerService		 (
_customerService		) 9
;		9 :
public

 
FrmAddCustomer
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
)

4 5
:

6 7
base

8 <
(

= >

navigation

> H
)

H I
{ 	
InitializeComponent 
(  
)  !
;! "
_customerService 
= 
new "
CustomerService# 2
(2 3
)3 4
;4 5
} 	
private 
void 
frmAddCustomer_Load (
(( )
object) /
sender0 6
,6 7
	EventArgs8 A
eB C
)C D
{ 	
txtCustomerID 
. 
Text 
=  
_customerService! 1
.1 2
GetNextCustomerId2 C
(C D
)D E
.E F
ToStringF N
(N O
$strO U
)U V
;V W
} 	
private 
void 
BtnConfirm_Click %
(% &
object& ,
sender- 3
,3 4
	EventArgs5 >
e? @
)@ A
{ 	
try 
{ 
Customer 
customer !
=" #
new$ '
Customer( 0
{ 

customerId 
=  
Convert! (
.( )
ToInt32) 0
(0 1
txtCustomerID1 >
.> ?
Text? C
)C D
,D E
forename 
= 
txtForename *
.* +
Text+ /
,/ 0
surname 
= 

txtSurname (
.( )
Text) -
,- .
email 
= 
txtEmail $
.$ %
Text% )
,) *
phone 
= 
txtPhone $
.$ %
Text% )
,) *
eircode   
=   

txtEircode   (
.  ( )
Text  ) -
}!! 
;!! 
_customerService##  
.##  !
AddCustomer##! ,
(##, -
customer##- 5
)##5 6
;##6 7

MessageBox$$ 
.$$ 
Show$$ 
($$  
$str$$  L
,$$L M
$str$$N \
,$$\ ]
MessageBoxButtons$$^ o
.$$o p
OK$$p r
,$$r s
MessageBoxIcon	$$t Ç
.
$$Ç É
Information
$$É é
)
$$é è
;
$$è ê
txtCustomerID%% 
.%% 
Clear%% #
(%%# $
)%%$ %
;%%% &
txtForename&& 
.&& 
Clear&& !
(&&! "
)&&" #
;&&# $

txtSurname'' 
.'' 
Clear''  
(''  !
)''! "
;''" #
txtEmail(( 
.(( 
Clear(( 
((( 
)((  
;((  !
txtPhone)) 
.)) 
Clear)) 
()) 
)))  
;))  !

txtEircode** 
.** 
Clear**  
(**  !
)**! "
;**" #
txtCustomerID++ 
.++ 
Text++ "
=++# $
_customerService++% 5
.++5 6
GetNextCustomerId++6 G
(++G H
)++H I
.++I J
ToString++J R
(++R S
$str++S Y
)++Y Z
;++Z [
}-- 
catch.. 
(.. 
	Exception.. 
ex.. 
)..  
{// 

MessageBox00 
.00 
Show00 
(00  
$@"00  #
{00# $
ex00$ &
.00& '
Message00' .
}00. /
"00/ 0
,000 1
$str002 :
,00: ;
MessageBoxButtons00< M
.00M N
OK00N P
,00P Q
MessageBoxIcon00R `
.00` a
Error00a f
)00f g
;00g h
}11 
}22 	
}33 
}44 