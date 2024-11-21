˙

HC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Program.cs
	namespace

 	
ToolSYS


 
.

 
Presentation

 
{ 
static 

class 
Program 
{ 
[ 	
	STAThread	 
] 
static 
void 
Main 
( 
) 
{ 	
Application 
. 
EnableVisualStyles *
(* +
)+ ,
;, -
Application 
. -
!SetCompatibleTextRenderingDefault 9
(9 :
false: ?
)? @
;@ A
	IToolData 
toolData 
=  
new! $
ToolData% -
(- .
). /
;/ 0
IToolService 
toolService $
=% &
new' *
ToolService+ 6
(6 7
toolData7 ?
)? @
;@ A
INavigation'' 

navigation'' "
=''# $
new''% (

Navigation'') 3
(''3 4
toolService''4 ?
)''? @
;''@ A
Application** 
.** 
Run** 
(** 
new** 
frmMainMenu**  +
(**+ ,

navigation**, 6
)**6 7
)**7 8
;**8 9
}++ 	
},, 
}-- ú]
OC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Nav\Navigation.cs
	namespace 	
ToolSYS
 
. 
Presentation 
. 
Nav "
{ 
public 

	interface 
INavigation  
{ 
void %
NavigateToSetToolCategory &
(& '
Form' +
form, 0
)0 1
;1 2
void		  
NavigateToUpdateRate		 !
(		! "
Form		" &
form		' +
)		+ ,
;		, -
void

 
NavigateToAddTool

 
(

 
Form

 #
form

$ (
)

( )
;

) *
void  
NavigateToUpdateTool !
(! "
Form" &
form' +
)+ ,
;, -
void  
NavigateToRemoveTool !
(! "
Form" &
form' +
)+ ,
;, -
void 
NavigateToViewTools  
(  !
Form! %
form& *
)* +
;+ ,
void 
NavigateToRentTools  
(  !
Form! %
form& *
)* +
;+ ,
void !
NavigateToReturnTools "
(" #
Form# '
form( ,
), -
;- .
void !
NavigateToViewRentals "
(" #
Form# '
form( ,
), -
;- .
void !
NavigateToAddCustomer "
(" #
Form# '
form( ,
), -
;- .
void $
NavigateToUpdateCustomer %
(% &
Form& *
form+ /
)/ 0
;0 1
void #
NavigateToViewCustomers $
($ %
Form% )
form* .
). /
;/ 0
void 
NavigateToAnalysis 
(  
Form  $
form% )
)) *
;* +
void 
NavigateToMainMenu 
(  
Form  $
form% )
)) *
;* +
} 
public 

class 

Navigation 
: 
INavigation )
{ 
private 
readonly 
IToolService %
_toolService& 2
;2 3
public 

Navigation 
( 
IToolService &
toolService' 2
)2 3
{ 	
_toolService 
= 
toolService &
;& '
} 	
public!! 
void!! %
NavigateToSetToolCategory!! -
(!!- .
Form!!. 2
form!!3 7
)!!7 8
{"" 	
form## 
.## 
Hide## 
(## 
)## 
;## 
frmSetToolCategory$$ 
nextForm$$ '
=$$( )
new$$* -
frmSetToolCategory$$. @
($$@ A
this$$A E
)$$E F
;$$F G
nextForm%% 
.%% 

ShowDialog%% 
(%%  
)%%  !
;%%! "
form&& 
.&& 
Close&& 
(&& 
)&& 
;&& 
}'' 	
public(( 
void((  
NavigateToUpdateRate(( (
(((( )
Form(() -
form((. 2
)((2 3
{)) 	
form** 
.** 
Hide** 
(** 
)** 
;** 
frmUpdateToolRate++ 
nextForm++ &
=++' (
new++) ,
frmUpdateToolRate++- >
(++> ?
this++? C
)++C D
;++D E
nextForm,, 
.,, 

ShowDialog,, 
(,,  
),,  !
;,,! "
form-- 
.-- 
Close-- 
(-- 
)-- 
;-- 
}.. 	
public00 
void00 
NavigateToAddTool00 %
(00% &
Form00& *
form00+ /
)00/ 0
{11 	
form22 
.22 
Hide22 
(22 
)22 
;22 

frmAddTool33 
nextForm33 
=33  !
new33" %

frmAddTool33& 0
(330 1
this331 5
,335 6
_toolService337 C
)33C D
;33D E
nextForm44 
.44 

ShowDialog44 
(44  
)44  !
;44! "
form55 
.55 
Close55 
(55 
)55 
;55 
}66 	
public88 
void88  
NavigateToUpdateTool88 (
(88( )
Form88) -
form88. 2
)882 3
{99 	
form:: 
.:: 
Hide:: 
(:: 
):: 
;:: 
frmUpdateTool;; 
nextForm;; "
=;;# $
new;;% (
frmUpdateTool;;) 6
(;;6 7
this;;7 ;
,;;; <
_toolService;;= I
);;I J
;;;J K
nextForm<< 
.<< 

ShowDialog<< 
(<<  
)<<  !
;<<! "
form== 
.== 
Close== 
(== 
)== 
;== 
}>> 	
public@@ 
void@@  
NavigateToRemoveTool@@ (
(@@( )
Form@@) -
form@@. 2
)@@2 3
{AA 	
formBB 
.BB 
HideBB 
(BB 
)BB 
;BB 
frmRemoveToolCC 
nextFormCC "
=CC# $
newCC% (
frmRemoveToolCC) 6
(CC6 7
thisCC7 ;
,CC; <
_toolServiceCC= I
)CCI J
;CCJ K
nextFormDD 
.DD 

ShowDialogDD 
(DD  
)DD  !
;DD! "
formEE 
.EE 
CloseEE 
(EE 
)EE 
;EE 
}FF 	
publicGG 
voidGG 
NavigateToViewToolsGG '
(GG' (
FormGG( ,
formGG- 1
)GG1 2
{HH 	
formII 
.II 
HideII 
(II 
)II 
;II 
frmViewToolsJJ 
nextFormJJ !
=JJ" #
newJJ$ '
frmViewToolsJJ( 4
(JJ4 5
thisJJ5 9
,JJ9 :
_toolServiceJJ; G
)JJG H
;JJH I
nextFormKK 
.KK 

ShowDialogKK 
(KK  
)KK  !
;KK! "
formLL 
.LL 
CloseLL 
(LL 
)LL 
;LL 
}MM 	
publicOO 
voidOO 
NavigateToRentToolsOO '
(OO' (
FormOO( ,
formOO- 1
)OO1 2
{PP 	
formQQ 
.QQ 
HideQQ 
(QQ 
)QQ 
;QQ 
frmRentToolsRR 
nextFormRR !
=RR" #
newRR$ '
frmRentToolsRR( 4
(RR4 5
thisRR5 9
,RR9 :
_toolServiceRR; G
)RRG H
;RRH I
nextFormSS 
.SS 

ShowDialogSS 
(SS  
)SS  !
;SS! "
formTT 
.TT 
CloseTT 
(TT 
)TT 
;TT 
}UU 	
publicWW 
voidWW !
NavigateToReturnToolsWW )
(WW) *
FormWW* .
formWW/ 3
)WW3 4
{XX 	
formYY 
.YY 
HideYY 
(YY 
)YY 
;YY 
frmReturnToolsZZ 
nextFormZZ #
=ZZ$ %
newZZ& )
frmReturnToolsZZ* 8
(ZZ8 9
thisZZ9 =
)ZZ= >
;ZZ> ?
nextForm[[ 
.[[ 

ShowDialog[[ 
([[  
)[[  !
;[[! "
form\\ 
.\\ 
Close\\ 
(\\ 
)\\ 
;\\ 
}]] 	
public__ 
void__ !
NavigateToViewRentals__ )
(__) *
Form__* .
form__/ 3
)__3 4
{`` 	
formaa 
.aa 
Hideaa 
(aa 
)aa 
;aa 
frmViewRentalsbb 
nextFormbb #
=bb$ %
newbb& )
frmViewRentalsbb* 8
(bb8 9
thisbb9 =
)bb= >
;bb> ?
nextFormcc 
.cc 

ShowDialogcc 
(cc  
)cc  !
;cc! "
formdd 
.dd 
Closedd 
(dd 
)dd 
;dd 
}ee 	
publicff 
voidff !
NavigateToAddCustomerff )
(ff) *
Formff* .
formff/ 3
)ff3 4
{gg 	
formhh 
.hh 
Hidehh 
(hh 
)hh 
;hh 
frmAddCustomerii 
nextFormii #
=ii$ %
newii& )
frmAddCustomerii* 8
(ii8 9
thisii9 =
)ii= >
;ii> ?
nextFormjj 
.jj 

ShowDialogjj 
(jj  
)jj  !
;jj! "
formkk 
.kk 
Closekk 
(kk 
)kk 
;kk 
}ll 	
publicmm 
voidmm $
NavigateToUpdateCustomermm ,
(mm, -
Formmm- 1
formmm2 6
)mm6 7
{nn 	
formoo 
.oo 
Hideoo 
(oo 
)oo 
;oo 
frmUpdateCustomerpp 
nextFormpp &
=pp' (
newpp) ,
frmUpdateCustomerpp- >
(pp> ?
thispp? C
)ppC D
;ppD E
nextFormqq 
.qq 

ShowDialogqq 
(qq  
)qq  !
;qq! "
formrr 
.rr 
Closerr 
(rr 
)rr 
;rr 
}ss 	
publictt 
voidtt #
NavigateToViewCustomerstt +
(tt+ ,
Formtt, 0
formtt1 5
)tt5 6
{uu 	
formvv 
.vv 
Hidevv 
(vv 
)vv 
;vv 
frmViewCustomersww 
nextFormww %
=ww& '
newww( +
frmViewCustomersww, <
(ww< =
thisww= A
)wwA B
;wwB C
nextFormxx 
.xx 

ShowDialogxx 
(xx  
)xx  !
;xx! "
formyy 
.yy 
Closeyy 
(yy 
)yy 
;yy 
}zz 	
public|| 
void|| 
NavigateToAnalysis|| &
(||& '
Form||' +
form||, 0
)||0 1
{}} 	
form~~ 
.~~ 
Hide~~ 
(~~ 
)~~ 
;~~ 
frmAnalysis 
nextForm  
=! "
new# &
frmAnalysis' 2
(2 3
this3 7
)7 8
;8 9
nextForm
ÄÄ 
.
ÄÄ 

ShowDialog
ÄÄ 
(
ÄÄ  
)
ÄÄ  !
;
ÄÄ! "
form
ÅÅ 
.
ÅÅ 
Close
ÅÅ 
(
ÅÅ 
)
ÅÅ 
;
ÅÅ 
}
ÇÇ 	
public
ÑÑ 
void
ÑÑ  
NavigateToMainMenu
ÑÑ &
(
ÑÑ& '
Form
ÑÑ' +
form
ÑÑ, 0
)
ÑÑ0 1
{
ÖÖ 	
form
ÜÜ 
.
ÜÜ 
Hide
ÜÜ 
(
ÜÜ 
)
ÜÜ 
;
ÜÜ 
frmMainMenu
áá 
nextForm
áá  
=
áá! "
new
áá# &
frmMainMenu
áá' 2
(
áá2 3
this
áá3 7
)
áá7 8
;
áá8 9
nextForm
àà 
.
àà 

ShowDialog
àà 
(
àà  
)
àà  !
;
àà! "
form
ââ 
.
ââ 
Close
ââ 
(
ââ 
)
ââ 
;
ââ 
}
ää 	
}
ãã 
}åå ∞ö
LC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Nav\NavForm.cs
	namespace 	
ToolSYS
 
. 
Presentation 
. 
Nav "
;" #
public 
class 
NavForm 
: 
Form 
{ 
	protected 
readonly 
INavigation "
_navigation# .
;. /
	protected		 
	MenuStrip		 

menuStrip1		 "
=		# $
new		% (
	MenuStrip		) 2
(		2 3
)		3 4
;		4 5
	protected

 
ToolStripMenuItem

 "
ratesToolStripMenuItem

  6
=

7 8
new

9 <
ToolStripMenuItem

= N
(

N O
)

O P
;

P Q
	protected 
ToolStripMenuItem ,
 setToolCategoryToolStripMenuItem  @
=A B
newC F
ToolStripMenuItemG X
(X Y
)Y Z
;Z [
	protected 
ToolStripMenuItem +
updateToolRateToolStripMenuItem  ?
=@ A
newB E
ToolStripMenuItemF W
(W X
)X Y
;Y Z
	protected 
ToolStripMenuItem "
toolsToolStripMenuItem  6
=7 8
new9 <
ToolStripMenuItem= N
(N O
)O P
;P Q
	protected 
ToolStripMenuItem  
addToolStripMenuItem  4
=5 6
new7 :
ToolStripMenuItem; L
(L M
)M N
;N O
	protected 
ToolStripMenuItem (
updateToolsToolStripMenuItem  <
== >
new? B
ToolStripMenuItemC T
(T U
)U V
;V W
	protected 
ToolStripMenuItem (
removeToolsToolStripMenuItem  <
== >
new? B
ToolStripMenuItemC T
(T U
)U V
;V W
	protected 
ToolStripMenuItem &
viewToolsToolStripMenuItem  :
=; <
new= @
ToolStripMenuItemA R
(R S
)S T
;T U
	protected 
ToolStripMenuItem &
customersToolStripMenuItem  :
=; <
new= @
ToolStripMenuItemA R
(R S
)S T
;T U
	protected 
ToolStripMenuItem (
addCustomerToolStripMenuItem  <
== >
new? B
ToolStripMenuItemC T
(T U
)U V
;V W
	protected 
ToolStripMenuItem +
updateCustomerToolStripMenuItem  ?
=@ A
newB E
ToolStripMenuItemF W
(W X
)X Y
;Y Z
	protected 
ToolStripMenuItem *
viewCustomersToolStripMenuItem  >
=? @
newA D
ToolStripMenuItemE V
(V W
)W X
;X Y
	protected 
ToolStripMenuItem $
rentalsToolStripMenuItem  8
=9 :
new; >
ToolStripMenuItem? P
(P Q
)Q R
;R S
	protected 
ToolStripMenuItem %
rentToolToolStripMenuItem  9
=: ;
new< ?
ToolStripMenuItem@ Q
(Q R
)R S
;S T
	protected 
ToolStripMenuItem (
returnToolsToolStripMenuItem  <
== >
new? B
ToolStripMenuItemC T
(T U
)U V
;V W
	protected 
ToolStripMenuItem (
viewRentalsToolStripMenuItem  <
== >
new? B
ToolStripMenuItemC T
(T U
)U V
;V W
	protected 
ToolStripMenuItem )
adminReportsToolStripMenuItem  =
=> ?
new@ C
ToolStripMenuItemD U
(U V
)V W
;W X
	protected 
ToolStripMenuItem %
analysisToolStripMenuItem  9
=: ;
new< ?
ToolStripMenuItem@ Q
(Q R
)R S
;S T
	protected 
ToolStripMenuItem %
mainMenuToolStripMenuItem  9
=: ;
new< ?
ToolStripMenuItem@ Q
(Q R
)R S
;S T
	protected 
ToolStripMenuItem '
exitSystemToolStripMenuItem  ;
=< =
new> A
ToolStripMenuItemB S
(S T
)T U
;U V
public 

NavForm 
( 
INavigation 
? 

navigation  *
=+ ,
null- 1
)1 2
{   
_navigation!! 
=!! 

navigation!!  
??!!! #
new!!$ '
NoOpNavigation!!( 6
(!!6 7
)!!7 8
;!!8 9
InitializeComponent"" 
("" 
)"" 
;"" 
}## 
public%% 

NavForm%% 
(%% 
)%% 
:%% 
this%% 
(%% 
new%% 
NoOpNavigation%%  .
(%%. /
)%%/ 0
)%%0 1
{&& 
}'' 
private++ 
void++ 
InitializeComponent++ $
(++$ %
)++% &
{,, 

menuStrip1-- 
=-- 
new-- 
	MenuStrip-- "
(--" #
)--# $
;--$ %"
ratesToolStripMenuItem.. 
=..  
new..! $
ToolStripMenuItem..% 6
(..6 7
)..7 8
;..8 9,
 setToolCategoryToolStripMenuItem// (
=//) *
new//+ .
ToolStripMenuItem/// @
(//@ A
)//A B
;//B C+
updateToolRateToolStripMenuItem00 '
=00( )
new00* -
ToolStripMenuItem00. ?
(00? @
)00@ A
;00A B"
toolsToolStripMenuItem11 
=11  
new11! $
ToolStripMenuItem11% 6
(116 7
)117 8
;118 9 
addToolStripMenuItem22 
=22 
new22 "
ToolStripMenuItem22# 4
(224 5
)225 6
;226 7(
updateToolsToolStripMenuItem33 $
=33% &
new33' *
ToolStripMenuItem33+ <
(33< =
)33= >
;33> ?(
removeToolsToolStripMenuItem44 $
=44% &
new44' *
ToolStripMenuItem44+ <
(44< =
)44= >
;44> ?&
viewToolsToolStripMenuItem55 "
=55# $
new55% (
ToolStripMenuItem55) :
(55: ;
)55; <
;55< =&
customersToolStripMenuItem66 "
=66# $
new66% (
ToolStripMenuItem66) :
(66: ;
)66; <
;66< =(
addCustomerToolStripMenuItem77 $
=77% &
new77' *
ToolStripMenuItem77+ <
(77< =
)77= >
;77> ?+
updateCustomerToolStripMenuItem88 '
=88( )
new88* -
ToolStripMenuItem88. ?
(88? @
)88@ A
;88A B*
viewCustomersToolStripMenuItem99 &
=99' (
new99) ,
ToolStripMenuItem99- >
(99> ?
)99? @
;99@ A$
rentalsToolStripMenuItem::  
=::! "
new::# &
ToolStripMenuItem::' 8
(::8 9
)::9 :
;::: ;%
rentToolToolStripMenuItem;; !
=;;" #
new;;$ '
ToolStripMenuItem;;( 9
(;;9 :
);;: ;
;;;; <(
returnToolsToolStripMenuItem<< $
=<<% &
new<<' *
ToolStripMenuItem<<+ <
(<<< =
)<<= >
;<<> ?(
viewRentalsToolStripMenuItem== $
===% &
new==' *
ToolStripMenuItem==+ <
(==< =
)=== >
;==> ?)
adminReportsToolStripMenuItem>> %
=>>& '
new>>( +
ToolStripMenuItem>>, =
(>>= >
)>>> ?
;>>? @%
analysisToolStripMenuItem?? !
=??" #
new??$ '
ToolStripMenuItem??( 9
(??9 :
)??: ;
;??; <%
mainMenuToolStripMenuItem@@ !
=@@" #
new@@$ '
ToolStripMenuItem@@( 9
(@@9 :
)@@: ;
;@@; <'
exitSystemToolStripMenuItemAA #
=AA$ %
newAA& )
ToolStripMenuItemAA* ;
(AA; <
)AA< =
;AA= >

menuStrip1BB 
.BB 
SuspendLayoutBB  
(BB  !
)BB! "
;BB" #
SuspendLayoutCC 
(CC 
)CC 
;CC 

menuStrip1GG 
.GG 
	BackColorGG 
=GG 
SystemColorsGG +
.GG+ ,
AppWorkspaceGG, 8
;GG8 9

menuStrip1HH 
.HH 
FontHH 
=HH 
newHH 
FontHH "
(HH" #
$strHH# 3
,HH3 4
$numHH5 7
,HH7 8
	FontStyleHH9 B
.HHB C
RegularHHC J
,HHJ K
GraphicsUnitHHL X
.HHX Y
PointHHY ^
,HH^ _
$numHH` a
)HHa b
;HHb c

menuStrip1II 
.II 
ImageScalingSizeII #
=II$ %
newII& )
SizeII* .
(II. /
$numII/ 1
,II1 2
$numII3 5
)II5 6
;II6 7

menuStrip1JJ 
.JJ 
ItemsJJ 
.JJ 
AddRangeJJ !
(JJ! "
newJJ" %
ToolStripItemJJ& 3
[JJ3 4
]JJ4 5
{JJ6 7"
ratesToolStripMenuItemJJ8 N
,JJN O"
toolsToolStripMenuItemJJP f
,JJf g'
customersToolStripMenuItem	JJh Ç
,
JJÇ É&
rentalsToolStripMenuItem
JJÑ ú
,
JJú ù+
adminReportsToolStripMenuItem
JJû ª
,
JJª º'
mainMenuToolStripMenuItem
JJΩ ÷
,
JJ÷ ◊)
exitSystemToolStripMenuItem
JJÿ Û
}
JJÙ ı
)
JJı ˆ
;
JJˆ ˜

menuStrip1KK 
.KK 
LocationKK 
=KK 
newKK !
PointKK" '
(KK' (
$numKK( )
,KK) *
$numKK+ ,
)KK, -
;KK- .

menuStrip1LL 
.LL 
NameLL 
=LL 
$strLL &
;LL& '

menuStrip1MM 
.MM 
SizeMM 
=MM 
newMM 
SizeMM "
(MM" #
$numMM# '
,MM' (
$numMM) +
)MM+ ,
;MM, -

menuStrip1NN 
.NN 
TabIndexNN 
=NN 
$numNN 
;NN  

menuStrip1OO 
.OO 
TextOO 
=OO 
$strOO &
;OO& '"
ratesToolStripMenuItemSS 
.SS 
DropDownItemsSS ,
.SS, -
AddRangeSS- 5
(SS5 6
newSS6 9
ToolStripItemSS: G
[SSG H
]SSH I
{SSJ K,
 setToolCategoryToolStripMenuItemSSL l
,SSl m,
updateToolRateToolStripMenuItem	SSn ç
}
SSé è
)
SSè ê
;
SSê ë"
ratesToolStripMenuItemTT 
.TT 
NameTT #
=TT$ %
$strTT& >
;TT> ?"
ratesToolStripMenuItemUU 
.UU 
SizeUU #
=UU$ %
newUU& )
SizeUU* .
(UU. /
$numUU/ 1
,UU1 2
$numUU3 5
)UU5 6
;UU6 7"
ratesToolStripMenuItemVV 
.VV 
TextVV #
=VV$ %
$strVV& -
;VV- .,
 setToolCategoryToolStripMenuItemZZ (
.ZZ( )
NameZZ) -
=ZZ. /
$strZZ0 R
;ZZR S,
 setToolCategoryToolStripMenuItem[[ (
.[[( )
Size[[) -
=[[. /
new[[0 3
Size[[4 8
([[8 9
$num[[9 <
,[[< =
$num[[> @
)[[@ A
;[[A B,
 setToolCategoryToolStripMenuItem\\ (
.\\( )
Text\\) -
=\\. /
$str\\0 C
;\\C D,
 setToolCategoryToolStripMenuItem]] (
.]]( )
Click]]) .
+=]]/ 12
&SetToolCategoryToolStripMenuItem_Click]]2 X
;]]X Y+
updateToolRateToolStripMenuItemaa '
.aa' (
Nameaa( ,
=aa- .
$straa/ P
;aaP Q+
updateToolRateToolStripMenuItembb '
.bb' (
Sizebb( ,
=bb- .
newbb/ 2
Sizebb3 7
(bb7 8
$numbb8 ;
,bb; <
$numbb= ?
)bb? @
;bb@ A+
updateToolRateToolStripMenuItemcc '
.cc' (
Textcc( ,
=cc- .
$strcc/ A
;ccA B+
updateToolRateToolStripMenuItemdd '
.dd' (
Clickdd( -
+=dd. 01
%UpdateToolRateToolStripMenuItem_Clickdd1 V
;ddV W"
toolsToolStripMenuItemhh 
.hh 
DropDownItemshh ,
.hh, -
AddRangehh- 5
(hh5 6
newhh6 9
ToolStripItemhh: G
[hhG H
]hhH I
{hhJ K 
addToolStripMenuItemhhL `
,hh` a(
updateToolsToolStripMenuItemhhb ~
,hh~ *
removeToolsToolStripMenuItem
hhÄ ú
,
hhú ù(
viewToolsToolStripMenuItem
hhû ∏
}
hhπ ∫
)
hh∫ ª
;
hhª º"
toolsToolStripMenuItemii 
.ii 
Nameii #
=ii$ %
$strii& >
;ii> ?"
toolsToolStripMenuItemjj 
.jj 
Sizejj #
=jj$ %
newjj& )
Sizejj* .
(jj. /
$numjj/ 1
,jj1 2
$numjj3 5
)jj5 6
;jj6 7"
toolsToolStripMenuItemkk 
.kk 
Textkk #
=kk$ %
$strkk& -
;kk- . 
addToolStripMenuItemoo 
.oo 
Nameoo !
=oo" #
$stroo$ :
;oo: ; 
addToolStripMenuItempp 
.pp 
Sizepp !
=pp" #
newpp$ '
Sizepp( ,
(pp, -
$numpp- 0
,pp0 1
$numpp2 4
)pp4 5
;pp5 6 
addToolStripMenuItemqq 
.qq 
Textqq !
=qq" #
$strqq$ /
;qq/ 0 
addToolStripMenuItemrr 
.rr 
Clickrr "
+=rr# %&
AddToolStripMenuItem_Clickrr& @
;rr@ A(
updateToolsToolStripMenuItemvv $
.vv$ %
Namevv% )
=vv* +
$strvv, J
;vvJ K(
updateToolsToolStripMenuItemww $
.ww$ %
Sizeww% )
=ww* +
newww, /
Sizeww0 4
(ww4 5
$numww5 8
,ww8 9
$numww: <
)ww< =
;ww= >(
updateToolsToolStripMenuItemxx $
.xx$ %
Textxx% )
=xx* +
$strxx, :
;xx: ;(
updateToolsToolStripMenuItemyy $
.yy$ %
Clickyy% *
+=yy+ -.
"UpdateToolsToolStripMenuItem_Clickyy. P
;yyP Q(
removeToolsToolStripMenuItem}} $
.}}$ %
Name}}% )
=}}* +
$str}}, J
;}}J K(
removeToolsToolStripMenuItem~~ $
.~~$ %
Size~~% )
=~~* +
new~~, /
Size~~0 4
(~~4 5
$num~~5 8
,~~8 9
$num~~: <
)~~< =
;~~= >(
removeToolsToolStripMenuItem $
.$ %
Text% )
=* +
$str, :
;: ;*
removeToolsToolStripMenuItem
ÄÄ $
.
ÄÄ$ %
Click
ÄÄ% *
+=
ÄÄ+ -0
"RemoveToolsToolStripMenuItem_Click
ÄÄ. P
;
ÄÄP Q(
viewToolsToolStripMenuItem
ÑÑ "
.
ÑÑ" #
Name
ÑÑ# '
=
ÑÑ( )
$str
ÑÑ* F
;
ÑÑF G(
viewToolsToolStripMenuItem
ÖÖ "
.
ÖÖ" #
Size
ÖÖ# '
=
ÖÖ( )
new
ÖÖ* -
Size
ÖÖ. 2
(
ÖÖ2 3
$num
ÖÖ3 6
,
ÖÖ6 7
$num
ÖÖ8 :
)
ÖÖ: ;
;
ÖÖ; <(
viewToolsToolStripMenuItem
ÜÜ "
.
ÜÜ" #
Text
ÜÜ# '
=
ÜÜ( )
$str
ÜÜ* 6
;
ÜÜ6 7(
viewToolsToolStripMenuItem
áá "
.
áá" #
Click
áá# (
+=
áá) +.
 ViewToolsToolStripMenuItem_Click
áá, L
;
ááL M(
customersToolStripMenuItem
ãã "
.
ãã" #
DropDownItems
ãã# 0
.
ãã0 1
AddRange
ãã1 9
(
ãã9 :
new
ãã: =
ToolStripItem
ãã> K
[
ããK L
]
ããL M
{
ããN O*
addCustomerToolStripMenuItem
ããP l
,
ããl m.
updateCustomerToolStripMenuItemããn ç
,ããç é.
viewCustomersToolStripMenuItemããè ≠
}ããÆ Ø
)ããØ ∞
;ãã∞ ±(
customersToolStripMenuItem
åå "
.
åå" #
Name
åå# '
=
åå( )
$str
åå* F
;
ååF G(
customersToolStripMenuItem
çç "
.
çç" #
Size
çç# '
=
çç( )
new
çç* -
Size
çç. 2
(
çç2 3
$num
çç3 5
,
çç5 6
$num
çç7 9
)
çç9 :
;
çç: ;(
customersToolStripMenuItem
éé "
.
éé" #
Text
éé# '
=
éé( )
$str
éé* 5
;
éé5 6*
addCustomerToolStripMenuItem
íí $
.
íí$ %
Name
íí% )
=
íí* +
$str
íí, J
;
ííJ K*
addCustomerToolStripMenuItem
ìì $
.
ìì$ %
Size
ìì% )
=
ìì* +
new
ìì, /
Size
ìì0 4
(
ìì4 5
$num
ìì5 8
,
ìì8 9
$num
ìì: <
)
ìì< =
;
ìì= >*
addCustomerToolStripMenuItem
îî $
.
îî$ %
Text
îî% )
=
îî* +
$str
îî, :
;
îî: ;*
addCustomerToolStripMenuItem
ïï $
.
ïï$ %
Click
ïï% *
+=
ïï+ -0
"AddCustomerToolStripMenuItem_Click
ïï. P
;
ïïP Q-
updateCustomerToolStripMenuItem
ôô '
.
ôô' (
Name
ôô( ,
=
ôô- .
$str
ôô/ P
;
ôôP Q-
updateCustomerToolStripMenuItem
öö '
.
öö' (
Size
öö( ,
=
öö- .
new
öö/ 2
Size
öö3 7
(
öö7 8
$num
öö8 ;
,
öö; <
$num
öö= ?
)
öö? @
;
öö@ A-
updateCustomerToolStripMenuItem
õõ '
.
õõ' (
Text
õõ( ,
=
õõ- .
$str
õõ/ @
;
õõ@ A-
updateCustomerToolStripMenuItem
úú '
.
úú' (
Click
úú( -
+=
úú. 03
%UpdateCustomerToolStripMenuItem_Click
úú1 V
;
úúV W,
viewCustomersToolStripMenuItem
†† &
.
††& '
Name
††' +
=
††, -
$str
††. N
;
††N O,
viewCustomersToolStripMenuItem
°° &
.
°°& '
Size
°°' +
=
°°, -
new
°°. 1
Size
°°2 6
(
°°6 7
$num
°°7 :
,
°°: ;
$num
°°< >
)
°°> ?
;
°°? @,
viewCustomersToolStripMenuItem
¢¢ &
.
¢¢& '
Text
¢¢' +
=
¢¢, -
$str
¢¢. >
;
¢¢> ?,
viewCustomersToolStripMenuItem
££ &
.
££& '
Click
££' ,
+=
££- /2
$viewCustomersToolStripMenuItem_Click
££0 T
;
££T U&
rentalsToolStripMenuItem
ßß  
.
ßß  !
DropDownItems
ßß! .
.
ßß. /
AddRange
ßß/ 7
(
ßß7 8
new
ßß8 ;
ToolStripItem
ßß< I
[
ßßI J
]
ßßJ K
{
ßßL M'
rentToolToolStripMenuItem
ßßN g
,
ßßg h+
returnToolsToolStripMenuItemßßi Ö
,ßßÖ Ü,
viewRentalsToolStripMenuItemßßá £
}ßß§ •
)ßß• ¶
;ßß¶ ß&
rentalsToolStripMenuItem
®®  
.
®®  !
Name
®®! %
=
®®& '
$str
®®( B
;
®®B C&
rentalsToolStripMenuItem
©©  
.
©©  !
Size
©©! %
=
©©& '
new
©©( +
Size
©©, 0
(
©©0 1
$num
©©1 3
,
©©3 4
$num
©©5 7
)
©©7 8
;
©©8 9&
rentalsToolStripMenuItem
™™  
.
™™  !
Text
™™! %
=
™™& '
$str
™™( 1
;
™™1 2'
rentToolToolStripMenuItem
ÆÆ !
.
ÆÆ! "
Name
ÆÆ" &
=
ÆÆ' (
$str
ÆÆ) D
;
ÆÆD E'
rentToolToolStripMenuItem
ØØ !
.
ØØ! "
Size
ØØ" &
=
ØØ' (
new
ØØ) ,
Size
ØØ- 1
(
ØØ1 2
$num
ØØ2 5
,
ØØ5 6
$num
ØØ7 9
)
ØØ9 :
;
ØØ: ;'
rentToolToolStripMenuItem
∞∞ !
.
∞∞! "
Text
∞∞" &
=
∞∞' (
$str
∞∞) 5
;
∞∞5 6'
rentToolToolStripMenuItem
±± !
.
±±! "
Click
±±" '
+=
±±( *-
RentToolToolStripMenuItem_Click
±±+ J
;
±±J K*
returnToolsToolStripMenuItem
µµ $
.
µµ$ %
Name
µµ% )
=
µµ* +
$str
µµ, J
;
µµJ K*
returnToolsToolStripMenuItem
∂∂ $
.
∂∂$ %
Size
∂∂% )
=
∂∂* +
new
∂∂, /
Size
∂∂0 4
(
∂∂4 5
$num
∂∂5 8
,
∂∂8 9
$num
∂∂: <
)
∂∂< =
;
∂∂= >*
returnToolsToolStripMenuItem
∑∑ $
.
∑∑$ %
Text
∑∑% )
=
∑∑* +
$str
∑∑, :
;
∑∑: ;*
returnToolsToolStripMenuItem
∏∏ $
.
∏∏$ %
Click
∏∏% *
+=
∏∏+ -0
"ReturnToolsToolStripMenuItem_Click
∏∏. P
;
∏∏P Q*
viewRentalsToolStripMenuItem
ºº $
.
ºº$ %
Name
ºº% )
=
ºº* +
$str
ºº, J
;
ººJ K*
viewRentalsToolStripMenuItem
ΩΩ $
.
ΩΩ$ %
Size
ΩΩ% )
=
ΩΩ* +
new
ΩΩ, /
Size
ΩΩ0 4
(
ΩΩ4 5
$num
ΩΩ5 8
,
ΩΩ8 9
$num
ΩΩ: <
)
ΩΩ< =
;
ΩΩ= >*
viewRentalsToolStripMenuItem
ææ $
.
ææ$ %
Text
ææ% )
=
ææ* +
$str
ææ, :
;
ææ: ;*
viewRentalsToolStripMenuItem
øø $
.
øø$ %
Click
øø% *
+=
øø+ -0
"ViewRentalsToolStripMenuItem_Click
øø. P
;
øøP Q+
adminReportsToolStripMenuItem
√√ %
.
√√% &
DropDownItems
√√& 3
.
√√3 4
AddRange
√√4 <
(
√√< =
new
√√= @
ToolStripItem
√√A N
[
√√N O
]
√√O P
{
√√Q R'
analysisToolStripMenuItem
√√S l
}
√√m n
)
√√n o
;
√√o p+
adminReportsToolStripMenuItem
ƒƒ %
.
ƒƒ% &
Name
ƒƒ& *
=
ƒƒ+ ,
$str
ƒƒ- L
;
ƒƒL M+
adminReportsToolStripMenuItem
≈≈ %
.
≈≈% &
Size
≈≈& *
=
≈≈+ ,
new
≈≈- 0
Size
≈≈1 5
(
≈≈5 6
$num
≈≈6 9
,
≈≈9 :
$num
≈≈; =
)
≈≈= >
;
≈≈> ?+
adminReportsToolStripMenuItem
∆∆ %
.
∆∆% &
Text
∆∆& *
=
∆∆+ ,
$str
∆∆- <
;
∆∆< ='
analysisToolStripMenuItem
   !
.
  ! "
Name
  " &
=
  ' (
$str
  ) D
;
  D E'
analysisToolStripMenuItem
ÀÀ !
.
ÀÀ! "
Size
ÀÀ" &
=
ÀÀ' (
new
ÀÀ) ,
Size
ÀÀ- 1
(
ÀÀ1 2
$num
ÀÀ2 5
,
ÀÀ5 6
$num
ÀÀ7 9
)
ÀÀ9 :
;
ÀÀ: ;'
analysisToolStripMenuItem
ÃÃ !
.
ÃÃ! "
Text
ÃÃ" &
=
ÃÃ' (
$str
ÃÃ) 3
;
ÃÃ3 4'
analysisToolStripMenuItem
ÕÕ !
.
ÕÕ! "
Click
ÕÕ" '
+=
ÕÕ( *-
AnalysisToolStripMenuItem_Click
ÕÕ+ J
;
ÕÕJ K'
mainMenuToolStripMenuItem
—— !
.
——! "
	Alignment
——" +
=
——, -$
ToolStripItemAlignment
——. D
.
——D E
Right
——E J
;
——J K'
mainMenuToolStripMenuItem
““ !
.
““! "
Name
““" &
=
““' (
$str
““) D
;
““D E'
mainMenuToolStripMenuItem
”” !
.
””! "
Size
””" &
=
””' (
new
””) ,
Size
””- 1
(
””1 2
$num
””2 4
,
””4 5
$num
””6 8
)
””8 9
;
””9 :'
mainMenuToolStripMenuItem
‘‘ !
.
‘‘! "
Text
‘‘" &
=
‘‘' (
$str
‘‘) 4
;
‘‘4 5'
mainMenuToolStripMenuItem
’’ !
.
’’! "
Click
’’" '
+=
’’( *-
MainMenuToolStripMenuItem_Click
’’+ J
;
’’J K)
exitSystemToolStripMenuItem
ŸŸ #
.
ŸŸ# $
	Alignment
ŸŸ$ -
=
ŸŸ. /$
ToolStripItemAlignment
ŸŸ0 F
.
ŸŸF G
Right
ŸŸG L
;
ŸŸL M)
exitSystemToolStripMenuItem
⁄⁄ #
.
⁄⁄# $
Name
⁄⁄$ (
=
⁄⁄) *
$str
⁄⁄+ H
;
⁄⁄H I)
exitSystemToolStripMenuItem
€€ #
.
€€# $
Size
€€$ (
=
€€) *
new
€€+ .
Size
€€/ 3
(
€€3 4
$num
€€4 6
,
€€6 7
$num
€€8 :
)
€€: ;
;
€€; <)
exitSystemToolStripMenuItem
‹‹ #
.
‹‹# $
Text
‹‹$ (
=
‹‹) *
$str
‹‹+ 8
;
‹‹8 9)
exitSystemToolStripMenuItem
›› #
.
››# $
Click
››$ )
+=
››* ,/
!ExitSystemToolStripMenuItem_Click
››- N
;
››N O

ClientSize
·· 
=
·· 
new
·· 
Size
·· 
(
·· 
$num
·· "
,
··" #
$num
··$ '
)
··' (
;
··( )
Controls
‚‚ 
.
‚‚ 
Add
‚‚ 
(
‚‚ 

menuStrip1
‚‚ 
)
‚‚  
;
‚‚  !
MainMenuStrip
„„ 
=
„„ 

menuStrip1
„„ "
;
„„" #
Name
‰‰ 
=
‰‰ 
$str
‰‰ 
;
‰‰ 

menuStrip1
ÂÂ 
.
ÂÂ 
ResumeLayout
ÂÂ 
(
ÂÂ  
false
ÂÂ  %
)
ÂÂ% &
;
ÂÂ& '

menuStrip1
ÊÊ 
.
ÊÊ 
PerformLayout
ÊÊ  
(
ÊÊ  !
)
ÊÊ! "
;
ÊÊ" #
ResumeLayout
ÁÁ 
(
ÁÁ 
false
ÁÁ 
)
ÁÁ 
;
ÁÁ 
PerformLayout
ËË 
(
ËË 
)
ËË 
;
ËË 
}
ÈÈ 
private
ÎÎ 
void
ÎÎ 4
&SetToolCategoryToolStripMenuItem_Click
ÎÎ 7
(
ÎÎ7 8
object
ÎÎ8 >
sender
ÎÎ? E
,
ÎÎE F
	EventArgs
ÎÎG P
e
ÎÎQ R
)
ÎÎR S
{
ÏÏ 
_navigation
ÌÌ 
.
ÌÌ '
NavigateToSetToolCategory
ÌÌ -
(
ÌÌ- .
this
ÌÌ. 2
)
ÌÌ2 3
;
ÌÌ3 4
}
ÓÓ 
private
 
void
 3
%UpdateToolRateToolStripMenuItem_Click
 6
(
6 7
object
7 =
sender
> D
,
D E
	EventArgs
F O
e
P Q
)
Q R
{
ÒÒ 
_navigation
ÚÚ 
.
ÚÚ "
NavigateToUpdateRate
ÚÚ (
(
ÚÚ( )
this
ÚÚ) -
)
ÚÚ- .
;
ÚÚ. /
}
ÛÛ 
private
ıı 
void
ıı (
AddToolStripMenuItem_Click
ıı +
(
ıı+ ,
object
ıı, 2
sender
ıı3 9
,
ıı9 :
	EventArgs
ıı; D
e
ııE F
)
ııF G
{
ˆˆ 
_navigation
˜˜ 
.
˜˜ 
NavigateToAddTool
˜˜ %
(
˜˜% &
this
˜˜& *
)
˜˜* +
;
˜˜+ ,
}
¯¯ 
private
˙˙ 
void
˙˙ 0
"UpdateToolsToolStripMenuItem_Click
˙˙ 3
(
˙˙3 4
object
˙˙4 :
sender
˙˙; A
,
˙˙A B
	EventArgs
˙˙C L
e
˙˙M N
)
˙˙N O
{
˚˚ 
_navigation
¸¸ 
.
¸¸ "
NavigateToUpdateTool
¸¸ (
(
¸¸( )
this
¸¸) -
)
¸¸- .
;
¸¸. /
}
˝˝ 
private
ˇˇ 
void
ˇˇ 0
"RemoveToolsToolStripMenuItem_Click
ˇˇ 3
(
ˇˇ3 4
object
ˇˇ4 :
sender
ˇˇ; A
,
ˇˇA B
	EventArgs
ˇˇC L
e
ˇˇM N
)
ˇˇN O
{
ÄÄ 
_navigation
ÅÅ 
.
ÅÅ "
NavigateToRemoveTool
ÅÅ (
(
ÅÅ( )
this
ÅÅ) -
)
ÅÅ- .
;
ÅÅ. /
}
ÇÇ 
private
ÑÑ 
void
ÑÑ .
 ViewToolsToolStripMenuItem_Click
ÑÑ 1
(
ÑÑ1 2
object
ÑÑ2 8
sender
ÑÑ9 ?
,
ÑÑ? @
	EventArgs
ÑÑA J
e
ÑÑK L
)
ÑÑL M
{
ÖÖ 
_navigation
ÜÜ 
.
ÜÜ !
NavigateToViewTools
ÜÜ '
(
ÜÜ' (
this
ÜÜ( ,
)
ÜÜ, -
;
ÜÜ- .
}
áá 
private
ââ 
void
ââ 0
"AddCustomerToolStripMenuItem_Click
ââ 3
(
ââ3 4
object
ââ4 :
sender
ââ; A
,
ââA B
	EventArgs
ââC L
e
ââM N
)
ââN O
{
ää 
_navigation
ãã 
.
ãã #
NavigateToAddCustomer
ãã )
(
ãã) *
this
ãã* .
)
ãã. /
;
ãã/ 0
}
åå 
private
éé 
void
éé 3
%UpdateCustomerToolStripMenuItem_Click
éé 6
(
éé6 7
object
éé7 =
sender
éé> D
,
ééD E
	EventArgs
ééF O
e
ééP Q
)
ééQ R
{
èè 
_navigation
êê 
.
êê &
NavigateToUpdateCustomer
êê ,
(
êê, -
this
êê- 1
)
êê1 2
;
êê2 3
}
ëë 
private
ìì 
void
ìì 2
$viewCustomersToolStripMenuItem_Click
ìì 5
(
ìì5 6
object
ìì6 <
sender
ìì= C
,
ììC D
	EventArgs
ììE N
e
ììO P
)
ììP Q
{
îî 
_navigation
ïï 
.
ïï %
NavigateToViewCustomers
ïï +
(
ïï+ ,
this
ïï, 0
)
ïï0 1
;
ïï1 2
}
ññ 
private
òò 
void
òò -
RentToolToolStripMenuItem_Click
òò 0
(
òò0 1
object
òò1 7
sender
òò8 >
,
òò> ?
	EventArgs
òò@ I
e
òòJ K
)
òòK L
{
ôô 
_navigation
öö 
.
öö !
NavigateToRentTools
öö '
(
öö' (
this
öö( ,
)
öö, -
;
öö- .
}
õõ 
private
ùù 
void
ùù 0
"ReturnToolsToolStripMenuItem_Click
ùù 3
(
ùù3 4
object
ùù4 :
sender
ùù; A
,
ùùA B
	EventArgs
ùùC L
e
ùùM N
)
ùùN O
{
ûû 
_navigation
üü 
.
üü #
NavigateToReturnTools
üü )
(
üü) *
this
üü* .
)
üü. /
;
üü/ 0
}
†† 
private
¢¢ 
void
¢¢ 0
"ViewRentalsToolStripMenuItem_Click
¢¢ 3
(
¢¢3 4
object
¢¢4 :
sender
¢¢; A
,
¢¢A B
	EventArgs
¢¢C L
e
¢¢M N
)
¢¢N O
{
££ 
_navigation
§§ 
.
§§ #
NavigateToViewRentals
§§ )
(
§§) *
this
§§* .
)
§§. /
;
§§/ 0
}
•• 
private
ßß 
void
ßß -
AnalysisToolStripMenuItem_Click
ßß 0
(
ßß0 1
object
ßß1 7
sender
ßß8 >
,
ßß> ?
	EventArgs
ßß@ I
e
ßßJ K
)
ßßK L
{
®® 
_navigation
©© 
.
©©  
NavigateToAnalysis
©© &
(
©©& '
this
©©' +
)
©©+ ,
;
©©, -
}
™™ 
private
¨¨ 
void
¨¨ -
MainMenuToolStripMenuItem_Click
¨¨ 0
(
¨¨0 1
object
¨¨1 7
sender
¨¨8 >
,
¨¨> ?
	EventArgs
¨¨@ I
e
¨¨J K
)
¨¨K L
{
≠≠ 
_navigation
ÆÆ 
.
ÆÆ  
NavigateToMainMenu
ÆÆ &
(
ÆÆ& '
this
ÆÆ' +
)
ÆÆ+ ,
;
ÆÆ, -
}
ØØ 
private
±± 
void
±± /
!ExitSystemToolStripMenuItem_Click
±± 2
(
±±2 3
object
±±3 9
sender
±±: @
,
±±@ A
	EventArgs
±±B K
e
±±L M
)
±±M N
{
≤≤ 
var
≥≥ 
confirmExit
≥≥ 
=
≥≥ 

MessageBox
≥≥ $
.
≥≥$ %
Show
≥≥% )
(
≥≥) *
$str
≥≥* J
,
≥≥J K
$str
≥≥L Z
,
≥≥Z [
MessageBoxButtons
≥≥\ m
.
≥≥m n
YesNo
≥≥n s
)
≥≥s t
;
≥≥t u
if
µµ 

(
µµ 
confirmExit
µµ 
==
µµ 
DialogResult
µµ '
.
µµ' (
Yes
µµ( +
)
µµ+ ,
{
∂∂ 	
Application
∑∑ 
.
∑∑ 
Exit
∑∑ 
(
∑∑ 
)
∑∑ 
;
∑∑ 
}
∏∏ 	
}
ππ 
private
ºº 
class
ºº 
NoOpNavigation
ºº  
:
ºº! "
INavigation
ºº# .
{
ΩΩ 
public
ææ 
void
ææ '
NavigateToSetToolCategory
ææ -
(
ææ- .
Form
ææ. 2
form
ææ3 7
)
ææ7 8
{
ææ9 :
}
ææ; <
public
øø 
void
øø "
NavigateToUpdateRate
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
¿¿ 
NavigateToAddTool
¿¿ %
(
¿¿% &
Form
¿¿& *
form
¿¿+ /
)
¿¿/ 0
{
¿¿1 2
}
¿¿3 4
public
¡¡ 
void
¡¡ "
NavigateToUpdateTool
¡¡ (
(
¡¡( )
Form
¡¡) -
form
¡¡. 2
)
¡¡2 3
{
¡¡4 5
}
¡¡6 7
public
¬¬ 
void
¬¬ "
NavigateToRemoveTool
¬¬ (
(
¬¬( )
Form
¬¬) -
form
¬¬. 2
)
¬¬2 3
{
¬¬4 5
}
¬¬6 7
public
√√ 
void
√√ !
NavigateToViewTools
√√ '
(
√√' (
Form
√√( ,
form
√√- 1
)
√√1 2
{
√√3 4
}
√√5 6
public
ƒƒ 
void
ƒƒ #
NavigateToAddCustomer
ƒƒ )
(
ƒƒ) *
Form
ƒƒ* .
form
ƒƒ/ 3
)
ƒƒ3 4
{
ƒƒ5 6
}
ƒƒ7 8
public
≈≈ 
void
≈≈ &
NavigateToUpdateCustomer
≈≈ ,
(
≈≈, -
Form
≈≈- 1
form
≈≈2 6
)
≈≈6 7
{
≈≈8 9
}
≈≈: ;
public
∆∆ 
void
∆∆ %
NavigateToViewCustomers
∆∆ +
(
∆∆+ ,
Form
∆∆, 0
form
∆∆1 5
)
∆∆5 6
{
∆∆7 8
}
∆∆9 :
public
«« 
void
«« !
NavigateToRentTools
«« '
(
««' (
Form
««( ,
form
««- 1
)
««1 2
{
««3 4
}
««5 6
public
»» 
void
»» #
NavigateToReturnTools
»» )
(
»») *
Form
»»* .
form
»»/ 3
)
»»3 4
{
»»5 6
}
»»7 8
public
…… 
void
…… #
NavigateToViewRentals
…… )
(
……) *
Form
……* .
form
……/ 3
)
……3 4
{
……5 6
}
……7 8
public
   
void
    
NavigateToAnalysis
   &
(
  & '
Form
  ' +
form
  , 0
)
  0 1
{
  2 3
}
  4 5
public
ÀÀ 
void
ÀÀ  
NavigateToMainMenu
ÀÀ &
(
ÀÀ& '
Form
ÀÀ' +
form
ÀÀ, 0
)
ÀÀ0 1
{
ÀÀ2 3
}
ÀÀ4 5
}
ÃÃ 
}ÕÕ Ì
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
} Õ8
SC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Forms\frmViewTools.cs
	namespace 	
ToolSYS
 
. 
Presentation 
{ 
public 

partial 
class 
frmViewTools %
:& '
NavForm( /
{ 
private 
IToolService 
_toolService )
;) *
private 
RateService 
_rateService (
;( )
public 
frmViewTools 
( 
INavigation '

navigation( 2
,2 3
IToolService4 @
toolServiceA L
)L M
:N O
baseP T
(T U

navigationU _
)_ `
{ 	
InitializeComponent 
(  
)  !
;! "
_toolService 
= 
toolService &
;& '
_rateService 
= 
new 
RateService *
(* +
)+ ,
;, -
} 	
private 
void 
frmViewTools_Load &
(& '
object' -
sender. 4
,4 5
	EventArgs6 ?
e@ A
)A B
{ 	
cboCategories 
. 
Items 
.  
Add  #
(# $
$str$ &
)& '
;' (
cboCategories 
. 
Items 
.  
Add  #
(# $
$str$ &
)& '
;' (
DataSet 

categories 
=  
_rateService! -
.- .
GetAllCategories. >
(> ?
)? @
;@ A
foreach!! 
(!! 
DataRow!! 
row!!  
in!!! #

categories!!$ .
.!!. /
Tables!!/ 5
[!!5 6
$num!!6 7
]!!7 8
.!!8 9
Rows!!9 =
)!!= >
{"" 
string## 
category## 
=##  !
row##" %
[##% &
$str##& 4
]##4 5
+##6 7
$str##8 =
+##> ?
row##@ C
[##C D
$str##D R
]##R S
;##S T
cboCategories$$ 
.$$ 
Items$$ #
.$$# $
Add$$$ '
($$' (
category$$( 0
)$$0 1
;$$1 2
}%% 
	cboStatus'' 
.'' 
Items'' 
.'' 
Add'' 
(''  
$str''  "
)''" #
;''# $
	cboStatus(( 
.(( 
Items(( 
.(( 
Add(( 
(((  
$str((  (
)((( )
;(() *
	cboStatus)) 
.)) 
Items)) 
.)) 
Add)) 
())  
$str))  )
)))) *
;))* +
	cboStatus** 
.** 
Items** 
.** 
Add** 
(**  
$str**  1
)**1 2
;**2 3
this++ 
.++ 
AcceptButton++ 
=++ 
	btnSearch++  )
;++) *
},, 	
private.. 
void.. 
btnSearch_Click.. $
(..$ %
object..% +
sender.., 2
,..2 3
	EventArgs..4 =
e..> ?
)..? @
{// 	
try00 
{11 
string22 
toolID22 
=22 
	txtToolID22  )
.22) *
Text22* .
;22. /
string33 
categoryCode33 #
=33$ %
cboCategories33& 3
.333 4
SelectedItem334 @
!=33A C
null33D H
?33I J
cboCategories33K X
.33X Y
SelectedItem33Y e
.33e f
ToString33f n
(33n o
)33o p
:33q r
string33s y
.33y z
Empty33z 
;	33 Ä
string44 
description44 "
=44# $
txtDescription44% 3
.443 4
Text444 8
;448 9
string55 
manufacturer55 #
=55$ %
txtManufacturer55& 5
.555 6
Text556 :
;55: ;
string66 
status66 
=66 
	cboStatus66  )
.66) *
SelectedItem66* 6
!=667 9
null66: >
?66? @
	cboStatus66A J
.66J K
SelectedItem66K W
.66W X
ToString66X `
(66` a
)66a b
:66c d
string66e k
.66k l
Empty66l q
;66q r
string77 
phrase77 
=77 
	txtPhrase77  )
.77) *
Text77* .
;77. /
DataSet99 
results99 
=99  !
_toolService99" .
.99. /
GetFilteredTools99/ ?
(99? @
toolID99@ F
,99F G
categoryCode99H T
,99T U
description99V a
,99a b
manufacturer99c o
,99o p
status99q w
,99w x
phrase99y 
)	99 Ä
;
99Ä Å
dgvTools;; 
.;; 

DataSource;; #
=;;$ %
results;;& -
.;;- .
Tables;;. 4
[;;4 5
$str;;5 ;
];;; <
;;;< =
dgvTools<< 
.<< 
AutoSizeColumnsMode<< ,
=<<- .+
DataGridViewAutoSizeColumnsMode<</ N
.<<N O
Fill<<O S
;<<S T
dgvTools== 
.== 
Columns==  
[==  !
$num==! "
]==" #
.==# $
AutoSizeMode==$ 0
===1 2*
DataGridViewAutoSizeColumnMode==3 Q
.==Q R
AllCells==R Z
;==Z [
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
(AA  
$"AA  "
{AA" #
exAA# %
.AA% &
MessageAA& -
}AA- .
"AA. /
,AA/ 0
$strAA1 8
,AA8 9
MessageBoxButtonsAA: K
.AAK L
OKAAL N
,AAN O
MessageBoxIconAAP ^
.AA^ _
ErrorAA_ d
)AAd e
;AAe f
}BB 
}CC 	
privateEE 
voidEE 
btnClear_ClickEE #
(EE# $
objectEE$ *
senderEE+ 1
,EE1 2
	EventArgsEE3 <
eEE= >
)EE> ?
{FF 	
	txtToolIDGG 
.GG 
ClearGG 
(GG 
)GG 
;GG 
cboCategoriesHH 
.HH 
SelectedIndexHH '
=HH( )
-HH* +
$numHH+ ,
;HH, -
txtDescriptionII 
.II 
ClearII  
(II  !
)II! "
;II" #
txtManufacturerJJ 
.JJ 
ClearJJ !
(JJ! "
)JJ" #
;JJ# $
	cboStatusKK 
.KK 
SelectedIndexKK #
=KK$ %
-KK& '
$numKK' (
;KK( )
	txtPhraseLL 
.LL 
ClearLL 
(LL 
)LL 
;LL 
}MM 	
}NN 
}OO †
UC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Forms\frmViewRentals.cs
	namespace 	
ToolSYS
 
. 
Presentation 
{ 
public 

partial 
class 
frmViewRentals '
:( )
NavForm* 1
{ 
public 
frmViewRentals 
( 
INavigation )

navigation* 4
)4 5
:6 7
base8 <
(< =

navigation= G
)G H
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
} 
} «&
WC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Forms\frmViewCustomers.cs
	namespace 	
ToolSYS
 
. 
Presentation 
{ 
public 

partial 
class 
frmViewCustomers )
:* +
NavForm, 3
{ 
private 
CustomerService 
_customerService  0
;0 1
public 
frmViewCustomers 
(  
INavigation  +

navigation, 6
)6 7
:8 9
base: >
(> ?

navigation? I
)I J
{ 	
InitializeComponent 
(  
)  !
;! "
_customerService 
= 
new "
CustomerService# 2
(2 3
)3 4
;4 5
} 	
private 
void 
btnSearch_Click $
($ %
object% +
sender, 2
,2 3
	EventArgs4 =
e> ?
)? @
{ 	
try 
{ 
string 

customerID !
=" #
txtCustomerID$ 1
.1 2
Text2 6
;6 7
string 
forename 
=  !
txtForename" -
.- .
Text. 2
;2 3
string 
surname 
=  

txtSurname! +
.+ ,
Text, 0
;0 1
string   
email   
=   
txtEmail   '
.  ' (
Text  ( ,
;  , -
string!! 
phone!! 
=!! 
txtPhone!! '
.!!' (
Text!!( ,
;!!, -
string"" 
eircode"" 
=""  

txtEircode""! +
.""+ ,
Text"", 0
;""0 1
string## 
phrase## 
=## 
	txtPhrase##  )
.##) *
Text##* .
;##. /
DataSet%% 
results%% 
=%%  !
_customerService%%" 2
.%%2 3 
GetFilteredCustomers%%3 G
(%%G H

customerID%%H R
,%%R S
forename%%T \
,%%\ ]
surname%%^ e
,%%e f
email%%g l
,%%l m
phone%%n s
,%%s t
eircode%%u |
,%%| }
phrase	%%~ Ñ
)
%%Ñ Ö
;
%%Ö Ü
dgvCustomers'' 
.'' 

DataSource'' '
=''( )
results''* 1
.''1 2
Tables''2 8
[''8 9
$str''9 C
]''C D
;''D E
dgvCustomers(( 
.(( 
AutoSizeColumnsMode(( 0
=((1 2+
DataGridViewAutoSizeColumnsMode((3 R
.((R S
Fill((S W
;((W X
dgvCustomers)) 
.)) 
Columns)) $
[))$ %
$num))% &
]))& '
.))' (
AutoSizeMode))( 4
=))5 6*
DataGridViewAutoSizeColumnMode))7 U
.))U V
AllCells))V ^
;))^ _
}** 
catch++ 
(++ 
	Exception++ 
ex++ 
)++  
{,, 

MessageBox-- 
.-- 
Show-- 
(--  
$"--  "
{--" #
ex--# %
.--% &
Message--& -
}--- .
"--. /
,--/ 0
$str--1 8
,--8 9
MessageBoxButtons--: K
.--K L
OK--L N
,--N O
MessageBoxIcon--P ^
.--^ _
Error--_ d
)--d e
;--e f
}.. 
}// 	
private11 
void11 !
frmViewCustomers_Load11 *
(11* +
object11+ 1
sender112 8
,118 9
	EventArgs11: C
e11D E
)11E F
{22 	
this33 
.33 
AcceptButton33 
=33 
	btnSearch33  )
;33) *
}44 	
private66 
void66 
btnClear_Click66 #
(66# $
object66$ *
sender66+ 1
,661 2
	EventArgs663 <
e66= >
)66> ?
{77 	
txtCustomerID88 
.88 
Clear88 
(88  
)88  !
;88! "
txtForename99 
.99 
Clear99 
(99 
)99 
;99  

txtSurname:: 
.:: 
Clear:: 
(:: 
):: 
;:: 
txtEmail;; 
.;; 
Clear;; 
(;; 
);; 
;;; 
txtPhone<< 
.<< 
Clear<< 
(<< 
)<< 
;<< 

txtEircode== 
.== 
Clear== 
(== 
)== 
;== 
	txtPhrase>> 
.>> 
Clear>> 
(>> 
)>> 
;>> 
}?? 	
}@@ 
}AA ÿ1
XC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Forms\frmUpdateToolRate.cs
	namespace 	
ToolSYS
 
. 
Presentation 
{ 
public 

partial 
class 
frmUpdateToolRate *
:+ ,
NavForm- 4
{ 
private 
RateService 
_rateService (
;( )
public 
frmUpdateToolRate  
(  !
INavigation! ,

navigation- 7
)7 8
:9 :
base; ?
(? @

navigation@ J
)J K
{ 	
InitializeComponent 
(  
)  !
;! "
_rateService 
= 
new 
RateService *
(* +
)+ ,
;, -
} 	
private 
void "
FrmUpdateToolRate_Load +
(+ ,
object, 2
sender3 9
,9 :
	EventArgs; D
eE F
)F G
{ 	
LoadCategories 
( 
) 
; 
} 	
private   
void   .
"CboCategories_SelectedIndexChanged   7
(  7 8
object  8 >
sender  ? E
,  E F
	EventArgs  G P
e  Q R
)  R S
{!! 	
if## 
(## 
cboCategories## 
.## 
SelectedIndex## *
==##+ -
-##. /
$num##/ 0
)##0 1
{$$ 
	groupBox2%% 
.%% 
Visible%% !
=%%" #
false%%$ )
;%%) *
}&& 
else'' 
{(( 
string)) 
categoryCode)) #
=))$ %
cboCategories))& 3
.))3 4
SelectedItem))4 @
.))@ A
ToString))A I
())I J
)))J K
.))K L
	Substring))L U
())U V
$num))V W
,))W X
$num))Y Z
)))Z [
;))[ \
Rate** 
rate** 
=** 
_rateService** (
.**( )!
GetRateByCategoryCode**) >
(**> ?
categoryCode**? K
)**K L
;**L M"
txtCategoryDescription,, &
.,,& '
Text,,' +
=,,, -
rate,,. 2
.,,2 3
categoryDesc,,3 ?
;,,? @
txtRate-- 
.-- 
Text-- 
=-- 
rate-- #
.--# $
rate--$ (
.--( )
ToString--) 1
(--1 2
)--2 3
;--3 4
	groupBox2// 
.// 
Visible// !
=//" #
true//$ (
;//( )
}00 
}11 	
private33 
void33 
BtnConfirm_Click33 %
(33% &
object33& ,
sender33- 3
,333 4
	EventArgs335 >
e33? @
)33@ A
{44 	
try55 
{66 
Rate77 
rate77 
=77 
new77 
Rate77  $
{88 
categoryCode99  
=99! "
cboCategories99# 0
.990 1
SelectedItem991 =
.99= >
ToString99> F
(99F G
)99G H
.99H I
	Substring99I R
(99R S
$num99S T
,99T U
$num99V W
)99W X
,99X Y
categoryDesc::  
=::! ""
txtCategoryDescription::# 9
.::9 :
Text::: >
,::> ?
rate;; 
=;; 
Convert;; "
.;;" #
	ToDecimal;;# ,
(;;, -
txtRate;;- 4
.;;4 5
Text;;5 9
);;9 :
}<< 
;<< 
_rateService>> 
.>> 

UpdateRate>> '
(>>' (
rate>>( ,
)>>, -
;>>- .

MessageBox@@ 
.@@ 
Show@@ 
(@@  
$str@@  M
,@@M N
$str@@O \
,@@\ ]
MessageBoxButtons@@^ o
.@@o p
OK@@p r
,@@r s
MessageBoxIcon	@@t Ç
.
@@Ç É
Information
@@É é
)
@@é è
;
@@è ê
	groupBox2AA 
.AA 
VisibleAA !
=AA" #
falseAA$ )
;AA) *
cboCategoriesBB 
.BB 
SelectedIndexBB +
=BB, -
-BB. /
$numBB/ 0
;BB0 1
cboCategoriesDD 
.DD 
ItemsDD #
.DD# $
ClearDD$ )
(DD) *
)DD* +
;DD+ ,
LoadCategoriesEE 
(EE 
)EE  
;EE  !
}GG 
catchHH 
(HH 
	ExceptionHH 
exHH 
)HH  
{II 

MessageBoxJJ 
.JJ 
ShowJJ 
(JJ  
$"JJ  "
{JJ" #
exJJ# %
.JJ% &
MessageJJ& -
}JJ- .
"JJ. /
,JJ/ 0
$strJJ1 8
,JJ8 9
MessageBoxButtonsJJ: K
.JJK L
OKJJL N
,JJN O
MessageBoxIconJJP ^
.JJ^ _
ErrorJJ_ d
)JJd e
;JJe f
}KK 
}LL 	
privateNN 
voidNN 
LoadCategoriesNN #
(NN# $
)NN$ %
{OO 	
cboCategoriesPP 
.PP 
ItemsPP 
.PP  
AddPP  #
(PP# $
$strPP$ &
)PP& '
;PP' (
DataSetQQ 

categoriesQQ 
=QQ  
_rateServiceQQ! -
.QQ- .
GetAllCategoriesQQ. >
(QQ> ?
)QQ? @
;QQ@ A
foreachSS 
(SS 
DataRowSS 
rowSS  
inSS! #

categoriesSS$ .
.SS. /
TablesSS/ 5
[SS5 6
$numSS6 7
]SS7 8
.SS8 9
RowsSS9 =
)SS= >
{TT 
stringUU 
categoryUU 
=UU  !
rowUU" %
[UU% &
$strUU& 4
]UU4 5
+UU6 7
$strUU8 =
+UU> ?
rowUU@ C
[UUC D
$strUUD R
]UUR S
;UUS T
cboCategoriesVV 
.VV 
ItemsVV #
.VV# $
AddVV$ '
(VV' (
categoryVV( 0
)VV0 1
;VV1 2
}WW 
}XX 	
}YY 
}ZZ …q
TC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Forms\frmUpdateTool.cs
	namespace 	
ToolSYS
 
. 
Presentation 
{ 
public 

partial 
class 
frmUpdateTool &
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
frmUpdateTool 
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
toolID.. 
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
toolID55@ F
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
(==  
$"==  "
{==" #
ex==# %
.==% &
Message==& -
}==- .
"==. /
,==/ 0
$str==1 8
,==8 9
MessageBoxButtons==: K
.==K L
OK==L N
,==N O
MessageBoxIcon==P ^
.==^ _
Error==_ d
)==d e
;==e f
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
toolIDXX 
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
toolIDaa 
=aa 
toolIDaa #
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
$strjj  D
,jjD E
$strjjF O
,jjO P
MessageBoxButtonsjjQ b
.jjb c
OKjjc e
,jje f
MessageBoxIconjjg u
.jju v
Information	jjv Å
)
jjÅ Ç
;
jjÇ É
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
(qq  
$"qq  "
$strqq" )
{qq) *
exqq* ,
.qq, -
Messageqq- 4
}qq4 5
"qq5 6
,qq6 7
$strqq8 F
,qqF G
MessageBoxButtonsqqH Y
.qqY Z
OKqqZ \
,qq\ ]
MessageBoxIconqq^ l
.qql m
Errorqqm r
)qqr s
;qqs t
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
}àà ÑQ
XC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Forms\frmUpdateCustomer.cs
	namespace 	
ToolSYS
 
. 
Presentation 
{ 
public 

partial 
class 
frmUpdateCustomer *
:+ ,
NavForm- 4
{ 
private 
CustomerService 
_customerService  0
;0 1
public 
frmUpdateCustomer  
(  !
INavigation! ,

navigation- 7
)7 8
:9 :
base; ?
(? @

navigation@ J
)J K
{ 	
InitializeComponent 
(  
)  !
;! "
_customerService 
= 
new "
CustomerService# 2
(2 3
)3 4
;4 5
} 	
private 
void 
btnSearch_Click $
($ %
object% +
sender, 2
,2 3
	EventArgs4 =
e> ?
)? @
{ 	
try 
{ 
string 

customerID !
=" #
txtCustomerID$ 1
.1 2
Text2 6
;6 7
string 
forename 
=  !
txtForename" -
.- .
Text. 2
;2 3
string 
surname 
=  

txtSurname! +
.+ ,
Text, 0
;0 1
string   
email   
=   
txtEmail   '
.  ' (
Text  ( ,
;  , -
string!! 
phone!! 
=!! 
txtPhone!! '
.!!' (
Text!!( ,
;!!, -
string"" 
eircode"" 
=""  

txtEircode""! +
.""+ ,
Text"", 0
;""0 1
string## 
phrase## 
=## 
	txtPhrase##  )
.##) *
Text##* .
;##. /
DataSet%% 
results%% 
=%%  !
_customerService%%" 2
.%%2 3 
GetFilteredCustomers%%3 G
(%%G H

customerID%%H R
,%%R S
forename%%T \
,%%\ ]
surname%%^ e
,%%e f
email%%g l
,%%l m
phone%%n s
,%%s t
eircode%%u |
,%%| }
phrase	%%~ Ñ
)
%%Ñ Ö
;
%%Ö Ü
dgvCustomers'' 
.'' 

DataSource'' '
=''( )
results''* 1
.''1 2
Tables''2 8
[''8 9
$str''9 C
]''C D
;''D E
dgvCustomers(( 
.(( 
AutoSizeColumnsMode(( 0
=((1 2+
DataGridViewAutoSizeColumnsMode((3 R
.((R S
Fill((S W
;((W X
dgvCustomers)) 
.)) 
Columns)) $
[))$ %
$num))% &
]))& '
.))' (
AutoSizeMode))( 4
=))5 6*
DataGridViewAutoSizeColumnMode))7 U
.))U V
AllCells))V ^
;))^ _
}** 
catch++ 
(++ 
	Exception++ 
ex++ 
)++  
{,, 

MessageBox-- 
.-- 
Show-- 
(--  
$"--  "
{--" #
ex--# %
.--% &
Message--& -
}--- .
"--. /
,--/ 0
$str--1 8
,--8 9
MessageBoxButtons--: K
.--K L
OK--L N
,--N O
MessageBoxIcon--P ^
.--^ _
Error--_ d
)--d e
;--e f
}.. 
}// 	
private11 
void11 
btnClear_Click11 #
(11# $
object11$ *
sender11+ 1
,111 2
	EventArgs113 <
e11= >
)11> ?
{22 	
txtCustomerID33 
.33 
Clear33 
(33  
)33  !
;33! "
txtForename44 
.44 
Clear44 
(44 
)44 
;44  

txtSurname55 
.55 
Clear55 
(55 
)55 
;55 
txtEmail66 
.66 
Clear66 
(66 
)66 
;66 
txtPhone77 
.77 
Clear77 
(77 
)77 
;77 

txtEircode88 
.88 
Clear88 
(88 
)88 
;88 
	txtPhrase99 
.99 
Clear99 
(99 
)99 
;99 
}:: 	
private<< 
void<< 
btnUpdate_Click<< $
(<<$ %
object<<% +
sender<<, 2
,<<2 3
	EventArgs<<4 =
e<<> ?
)<<? @
{== 	
try>> 
{?? 
Customer@@ 
customer@@ !
=@@" #
new@@$ '
Customer@@( 0
{@@1 2

customerIDAA 
=AA  
ConvertAA! (
.AA( )
ToInt32AA) 0
(AA0 1
txtUpdCustomerIDAA1 A
.AAA B
TextAAB F
)AAF G
,AAG H
forenameBB 
=BB 
txtUpdForenameBB -
.BB- .
TextBB. 2
,BB2 3
surnameCC 
=CC 
txtUpdSurnameCC +
.CC+ ,
TextCC, 0
,CC0 1
emailDD 
=DD 
txtUpdEmailDD '
.DD' (
TextDD( ,
,DD, -
phoneEE 
=EE 
txtUpdPhoneEE '
.EE' (
TextEE( ,
,EE, -
eircodeFF 
=FF 
txtUpdEircodeFF +
.FF+ ,
TextFF, 0
}GG 
;GG 
_customerServiceII  
.II  !
UpdateCustomerII! /
(II/ 0
customerII0 8
)II8 9
;II9 :

MessageBoxKK 
.KK 
ShowKK 
(KK  
$strKK  I
,KKI J
$strKKK X
,KKX Y
MessageBoxButtonsKKZ k
.KKk l
OKKKl n
,KKn o
MessageBoxIconKKp ~
.KK~ 
Information	KK ä
)
KKä ã
;
KKã å
txtUpdCustomerIDLL  
.LL  !
ClearLL! &
(LL& '
)LL' (
;LL( )
txtUpdForenameMM 
.MM 
ClearMM $
(MM$ %
)MM% &
;MM& '
txtUpdSurnameNN 
.NN 
ClearNN #
(NN# $
)NN$ %
;NN% &
txtUpdEmailOO 
.OO 
ClearOO !
(OO! "
)OO" #
;OO# $
txtUpdPhonePP 
.PP 
ClearPP !
(PP! "
)PP" #
;PP# $
txtUpdEircodeQQ 
.QQ 
ClearQQ #
(QQ# $
)QQ$ %
;QQ% &
}RR 
catchSS 
(SS 
	ExceptionSS 
exSS 
)SS  
{TT 

MessageBoxVV 
.VV 
ShowVV 
(VV  
$"VV  "
{VV" #
exVV# %
.VV% &
MessageVV& -
}VV- .
"VV. /
,VV/ 0
$strVV1 8
,VV8 9
MessageBoxButtonsVV: K
.VVK L
OKVVL N
,VVN O
MessageBoxIconVVP ^
.VV^ _
ErrorVV_ d
)VVd e
;VVe f
}WW 
}XX 	
privateZZ 
voidZZ "
dgvCustomers_CellClickZZ +
(ZZ+ ,
objectZZ, 2
senderZZ3 9
,ZZ9 :%
DataGridViewCellEventArgsZZ; T
eZZU V
)ZZV W
{[[ 	
txtUpdCustomerID\\ 
.\\ 
Text\\ !
=\\" #
dgvCustomers\\$ 0
.\\0 1
Rows\\1 5
[\\5 6
dgvCustomers\\6 B
.\\B C

CurrentRow\\C M
.\\M N
Index\\N S
]\\S T
.\\T U
Cells\\U Z
[\\Z [
$num\\[ \
]\\\ ]
.\\] ^
Value\\^ c
.\\c d
ToString\\d l
(\\l m
)\\m n
;\\n o
txtUpdForename]] 
.]] 
Text]] 
=]]  !
dgvCustomers]]" .
.]]. /
Rows]]/ 3
[]]3 4
dgvCustomers]]4 @
.]]@ A

CurrentRow]]A K
.]]K L
Index]]L Q
]]]Q R
.]]R S
Cells]]S X
[]]X Y
$num]]Y Z
]]]Z [
.]][ \
Value]]\ a
.]]a b
ToString]]b j
(]]j k
)]]k l
;]]l m
txtUpdSurname^^ 
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
;^^k l
txtUpdEmail__ 
.__ 
Text__ 
=__ 
dgvCustomers__ +
.__+ ,
Rows__, 0
[__0 1
dgvCustomers__1 =
.__= >

CurrentRow__> H
.__H I
Index__I N
]__N O
.__O P
Cells__P U
[__U V
$num__V W
]__W X
.__X Y
Value__Y ^
.__^ _
ToString___ g
(__g h
)__h i
;__i j
txtUpdPhone`` 
.`` 
Text`` 
=`` 
dgvCustomers`` +
.``+ ,
Rows``, 0
[``0 1
dgvCustomers``1 =
.``= >

CurrentRow``> H
.``H I
Index``I N
]``N O
.``O P
Cells``P U
[``U V
$num``V W
]``W X
.``X Y
Value``Y ^
.``^ _
ToString``_ g
(``g h
)``h i
;``i j
txtUpdEircodeaa 
.aa 
Textaa 
=aa  
dgvCustomersaa! -
.aa- .
Rowsaa. 2
[aa2 3
dgvCustomersaa3 ?
.aa? @

CurrentRowaa@ J
.aaJ K
IndexaaK P
]aaP Q
.aaQ R
CellsaaR W
[aaW X
$numaaX Y
]aaY Z
.aaZ [
Valueaa[ `
.aa` a
ToStringaaa i
(aai j
)aaj k
;aak l
}bb 	
}cc 
}dd •
YC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Forms\frmSetToolCategory.cs
	namespace 	
ToolSYS
 
. 
Presentation 
{ 
public 

partial 
class 
frmSetToolCategory +
:, -
NavForm. 5
{ 
private 
RateService 
_rateService (
;( )
public 
frmSetToolCategory !
(! "
INavigation" -

navigation. 8
)8 9
:: ;
base< @
(@ A

navigationA K
)K L
{ 	
InitializeComponent 
(  
)  !
;! "
_rateService 
= 
new 
RateService *
(* +
)+ ,
;, -
} 	
private 
void 
btnConfirm_Click %
(% &
object& ,
sender- 3
,3 4
	EventArgs5 >
e? @
)@ A
{ 	
try 
{ 
Rate 
rate 
= 
new 
Rate  $
{   
categoryCode!!  
=!!! "
txtCategoryCode!!# 2
.!!2 3
Text!!3 7
,!!7 8
categoryDesc""  
=""! "
txtCategoryDesc""# 2
.""2 3
Text""3 7
,""7 8
rate## 
=## 
decimal## "
.##" #
Parse### (
(##( )
txtRate##) 0
.##0 1
Text##1 5
)##5 6
}$$ 
;$$ 
_rateService&& 
.&& 
AddRate&& $
(&&$ %
rate&&% )
)&&) *
;&&* +

MessageBox'' 
.'' 
Show'' 
(''  
$str''  :
,'': ;
$str''< E
,''E F
MessageBoxButtons''G X
.''X Y
OK''Y [
,''[ \
MessageBoxIcon(( "
.((" #
Information((# .
)((. /
;((/ 0
txtCategoryCode** 
.**  
Clear**  %
(**% &
)**& '
;**' (
txtCategoryDesc++ 
.++  
Clear++  %
(++% &
)++& '
;++' (
txtRate,, 
.,, 
Clear,, 
(,, 
),, 
;,,  
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
(00  
$"00  "
{00" #
ex00# %
.00% &
Message00& -
}00- .
"00. /
,00/ 0
$str001 8
,008 9
MessageBoxButtons00: K
.00K L
OK00L N
,00N O
MessageBoxIcon00P ^
.00^ _
Error00_ d
)00d e
;00e f
}11 
}22 	
}33 
}44 √?
UC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Forms\frmReturnTools.cs
	namespace 	
ToolSYS
 
. 
Presentation 
{ 
public 

partial 
class 
frmReturnTools '
:( )
NavForm* 1
{ 
private 
RentalService 
_rentalService ,
;, -
public 
frmReturnTools 
( 
INavigation )

navigation* 4
)4 5
:6 7
base8 <
(< =

navigation= G
)G H
{ 	
InitializeComponent 
(  
)  !
;! "
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
btnConfirm_Click %
(% &
object& ,
sender- 3
,3 4
	EventArgs5 >
e? @
)@ A
{ 	
if 
( 
int 
. 
TryParse 
( 
txtRentalID (
.( )
Text) -
,- .
out/ 2
int3 6
rentalID7 ?
)? @
)@ A
{ 
try 
{ 
	DataTable 
rentalItems )
=* +
RentalService, 9
.9 :
GetRentalItems: H
(H I
rentalIDI Q
)Q R
;R S
dgvRentalItems   "
.  " #

DataSource  # -
=  . /
rentalItems  0 ;
;  ; <
dgvRentalItems!! "
.!!" #
AutoSizeColumnsMode!!# 6
=!!7 8+
DataGridViewAutoSizeColumnsMode!!9 X
.!!X Y
Fill!!Y ]
;!!] ^
dgvRentalItems"" "
.""" #
Columns""# *
[""* +
$num""+ ,
]"", -
.""- .
AutoSizeMode"". :
=""; <*
DataGridViewAutoSizeColumnMode""= [
.""[ \
AllCells""\ d
;""d e
gbxReturnTool$$ !
.$$! "
Visible$$" )
=$$* +
true$$, 0
;$$0 1
	txtToolID%% 
.%% 
Focus%% #
(%%# $
)%%$ %
;%%% &
gbxRentalID&& 
.&&  
Enabled&&  '
=&&( )
false&&* /
;&&/ 0
}'' 
catch(( 
((( 
	Exception((  
ex((! #
)((# $
{)) 

MessageBox** 
.** 
Show** #
(**# $
$"**$ &
$str**& -
{**- .
ex**. 0
.**0 1
Message**1 8
}**8 9
"**9 :
,**: ;
$str**< C
,**C D
MessageBoxButtons**E V
.**V W
OK**W Y
,**Y Z
MessageBoxIcon**[ i
.**i j
Error**j o
)**o p
;**p q
}++ 
},, 
else-- 
{.. 

MessageBox// 
.// 
Show// 
(//  
$str//  C
,//C D
$str//E N
,//N O
MessageBoxButtons//P a
.//a b
OK//b d
,//d e
MessageBoxIcon//f t
.//t u
Error//u z
)//z {
;//{ |
txtRentalID00 
.00 
Focus00 !
(00! "
)00" #
;00# $
}11 
}22 	
private44 
void44 
btnReturn_Click44 $
(44$ %
object44% +
sender44, 2
,442 3
	EventArgs444 =
e44> ?
)44? @
{55 	
if66 
(66 
int66 
.66 
TryParse66 
(66 
txtRentalID66 (
.66( )
Text66) -
,66- .
out66/ 2
int663 6
rentalID667 ?
)66? @
&&66A C
int66D G
.66G H
TryParse66H P
(66P Q
	txtToolID66Q Z
.66Z [
Text66[ _
,66_ `
out66a d
int66e h
toolID66i o
)66o p
)66p q
{77 
try88 
{99 
RentalService;; !
.;;! "

ReturnTool;;" ,
(;;, -
rentalID;;- 5
,;;5 6
toolID;;7 =
);;= >
;;;> ?

MessageBox== 
.== 
Show== #
(==# $
$str==$ A
,==A B
$str==C L
,==L M
MessageBoxButtons==N _
.==_ `
OK==` b
,==b c
MessageBoxIcon==d r
.==r s
Information==s ~
)==~ 
;	== Ä
	DataTable@@ 
rentalItems@@ )
=@@* +
RentalService@@, 9
.@@9 :
GetRentalItems@@: H
(@@H I
rentalID@@I Q
)@@Q R
;@@R S
dgvRentalItemsBB "
.BB" #

DataSourceBB# -
=BB. /
rentalItemsBB0 ;
;BB; <
dgvRentalItemsCC "
.CC" #
AutoSizeColumnsModeCC# 6
=CC7 8+
DataGridViewAutoSizeColumnsModeCC9 X
.CCX Y
FillCCY ]
;CC] ^
dgvRentalItemsDD "
.DD" #
ColumnsDD# *
[DD* +
$numDD+ ,
]DD, -
.DD- .
AutoSizeModeDD. :
=DD; <*
DataGridViewAutoSizeColumnModeDD= [
.DD[ \
AllCellsDD\ d
;DDd e
	txtToolIDFF 
.FF 
ClearFF #
(FF# $
)FF$ %
;FF% &
	txtToolIDGG 
.GG 
FocusGG #
(GG# $
)GG$ %
;GG% &
}HH 
catchII 
(II 
	ExceptionII  
exII! #
)II# $
{JJ 

MessageBoxKK 
.KK 
ShowKK #
(KK# $
$"KK$ &
$strKK& -
{KK- .
exKK. 0
.KK0 1
MessageKK1 8
}KK8 9
"KK9 :
,KK: ;
$strKK< C
,KKC D
MessageBoxButtonsKKE V
.KKV W
OKKKW Y
,KKY Z
MessageBoxIconKK[ i
.KKi j
ErrorKKj o
)KKo p
;KKp q
}LL 
}MM 
elseNN 
{OO 

MessageBoxPP 
.PP 
ShowPP 
(PP  
$strPP  <
,PP< =
$strPP> G
,PPG H
MessageBoxButtonsPPI Z
.PPZ [
OKPP[ ]
,PP] ^
MessageBoxIconPP_ m
.PPm n
ErrorPPn s
)PPs t
;PPt u
	txtToolIDQQ 
.QQ 
FocusQQ 
(QQ  
)QQ  !
;QQ! "
}RR 
}SS 	
privateUU 
voidUU 
btnFinish_ClickUU $
(UU$ %
objectUU% +
senderUU, 2
,UU2 3
	EventArgsUU4 =
eUU> ?
)UU? @
{VV 	
	txtToolIDWW 
.WW 
ClearWW 
(WW 
)WW 
;WW 
txtRentalIDXX 
.XX 
ClearXX 
(XX 
)XX 
;XX  
gbxReturnToolYY 
.YY 
VisibleYY !
=YY" #
falseYY$ )
;YY) *
gbxRentalIDZZ 
.ZZ 
EnabledZZ 
=ZZ  !
trueZZ" &
;ZZ& '
}[[ 	
private]] 
void]] $
dgvRentalItems_CellClick]] -
(]]- .
object]]. 4
sender]]5 ;
,]]; <%
DataGridViewCellEventArgs]]= V
e]]W X
)]]X Y
{^^ 	
	txtToolID__ 
.__ 
Text__ 
=__ 
dgvRentalItems__ +
.__+ ,
Rows__, 0
[__0 1
dgvRentalItems__1 ?
.__? @

CurrentRow__@ J
.__J K
Index__K P
]__P Q
.__Q R
Cells__R W
[__W X
$num__X Y
]__Y Z
.__Z [
Value__[ `
.__` a
ToString__a i
(__i j
)__j k
;__k l
}`` 	
}aa 
}bb ˜Ÿ
SC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Forms\frmRentTools.cs
	namespace 	
ToolSYS
 
. 
Presentation 
{ 
public 

partial 
class 
frmRentTools %
:& '
NavForm( /
{ 
private 
readonly 
IToolService %
_toolService& 2
;2 3
private 
readonly 
RateService $
_rateService% 1
;1 2
private 
readonly 
CustomerService (
_customerService) 9
;9 :
private 
readonly 
RentalService &
_rentalService' 5
;5 6
public 
frmRentTools 
( 
INavigation '

navigation( 2
,2 3
IToolService4 @
toolServiceA L
)L M
:N O
baseP T
(T U

navigationU _
)_ `
{ 	
InitializeComponent 
(  
)  !
;! "
_toolService 
= 
toolService &
;& '
_rateService 
= 
new 
RateService *
(* +
)+ ,
;, -
_customerService 
= 
new "
CustomerService# 2
(2 3
)3 4
;4 5
_rentalService 
= 
new  
RentalService! .
(. /
)/ 0
;0 1
} 	
private!! 
void!! 
frmRentTools_Load!! &
(!!& '
object!!' -
sender!!. 4
,!!4 5
	EventArgs!!6 ?
e!!@ A
)!!A B
{"" 	
dtpFrom## 
.## 
MinDate## 
=## 
DateTime## &
.##& '
Today##' ,
;##, -
dtpTo$$ 
.$$ 
MinDate$$ 
=$$ 
DateTime$$ $
.$$$ %
Today$$% *
;$$* +
txtRentalID%% 
.%% 
Text%% 
=%% 
RentalService%% ,
.%%, -
GetNextRentalID%%- <
(%%< =
)%%= >
.%%> ?
ToString%%? G
(%%G H
)%%H I
;%%I J
cboCategories&& 
.&& 
Items&& 
.&&  
Add&&  #
(&&# $
$str&&$ &
)&&& '
;&&' (
DataSet'' 

categories'' 
=''  
_rateService''! -
.''- .
GetAllCategories''. >
(''> ?
)''? @
;''@ A
foreach)) 
()) 
DataRow)) 
row))  
in))! #

categories))$ .
.)). /
Tables))/ 5
[))5 6
$num))6 7
]))7 8
.))8 9
Rows))9 =
)))= >
{** 
string++ 
category++ 
=++  !
row++" %
[++% &
$str++& 4
]++4 5
+++6 7
$str++8 =
+++> ?
row++@ C
[++C D
$str++D R
]++R S
;++S T
cboCategories,, 
.,, 
Items,, #
.,,# $
Add,,$ '
(,,' (
category,,( 0
),,0 1
;,,1 2
}-- 
	dgvRental.. 
... 
Columns.. 
... 
Add.. !
(..! "
$str.." *
,..* +
$str.., 0
)..0 1
;..1 2
	dgvRental// 
.// 
Columns// 
.// 
Add// !
(//! "
$str//" 0
,//0 1
$str//2 A
)//A B
;//B C
	dgvRental00 
.00 
Columns00 
.00 
Add00 !
(00! "
$str00" 3
,003 4
$str005 B
)00B C
;00C D
	dgvRental11 
.11 
Columns11 
.11 
Add11 !
(11! "
$str11" 4
,114 5
$str116 D
)11D E
;11E F
	dgvRental22 
.22 
Columns22 
.22 
Add22 !
(22! "
$str22" ,
,22, -
$str22. 9
)229 :
;22: ;
	dgvRental33 
.33 
Columns33 
.33 
Add33 !
(33! "
$str33" .
,33. /
$str330 =
)33= >
;33> ?
	dgvRental44 
.44 
Columns44 
.44 
Add44 !
(44! "
$str44" -
,44- .
$str44/ ;
)44; <
;44< =
Miscellaneous55 
.55 %
SetDataGridViewProperties55 3
(553 4
	dgvRental554 =
)55= >
;55> ?
}66 	
private77 
void77 #
btnCustomerSearch_Click77 ,
(77, -
object77- 3
sender774 :
,77: ;
	EventArgs77< E
e77F G
)77G H
{88 	
dgvCustomers99 
.99 

DataSource99 #
=99$ %
_customerService99& 6
.996 7
SearchCustomers997 F
(99F G
txtCustomerSearch99G X
.99X Y
Text99Y ]
)99] ^
.99^ _
Tables99_ e
[99e f
$str99f p
]99p q
;99q r
dgvCustomers;; 
.;; 
Columns;;  
[;;  !
$num;;! "
];;" #
.;;# $

HeaderText;;$ .
=;;/ 0
$str;;1 5
;;;5 6
dgvCustomers<< 
.<< 
Columns<<  
[<<  !
$num<<! "
]<<" #
.<<# $

HeaderText<<$ .
=<</ 0
$str<<1 ;
;<<; <
dgvCustomers== 
.== 
Columns==  
[==  !
$num==! "
]==" #
.==# $

HeaderText==$ .
===/ 0
$str==1 :
;==: ;
dgvCustomers>> 
.>> 
Columns>>  
[>>  !
$num>>! "
]>>" #
.>># $

HeaderText>>$ .
=>>/ 0
$str>>1 8
;>>8 9
dgvCustomers?? 
.?? 
Columns??  
[??  !
$num??! "
]??" #
.??# $

HeaderText??$ .
=??/ 0
$str??1 8
;??8 9
dgvCustomers@@ 
.@@ 
Columns@@  
[@@  !
$num@@! "
]@@" #
.@@# $

HeaderText@@$ .
=@@/ 0
$str@@1 :
;@@: ;
MiscellaneousAA 
.AA %
SetDataGridViewPropertiesAA 3
(AA3 4
dgvCustomersAA4 @
)AA@ A
;AAA B
}BB 	
privateEE 
voidEE "
dgvCustomers_CellClickEE +
(EE+ ,
objectEE, 2
senderEE3 9
,EE9 :%
DataGridViewCellEventArgsEE; T
eEEU V
)EEV W
{FF 	
txtCustomerIDGG 
.GG 
TextGG 
=GG  
dgvCustomersGG! -
.GG- .
RowsGG. 2
[GG2 3
dgvCustomersGG3 ?
.GG? @

CurrentRowGG@ J
.GGJ K
IndexGGK P
]GGP Q
.GGQ R
CellsGGR W
[GGW X
$numGGX Y
]GGY Z
.GGZ [
ValueGG[ `
.GG` a
ToStringGGa i
(GGi j
)GGj k
;GGk l
txtForenameHH 
.HH 
TextHH 
=HH 
dgvCustomersHH +
.HH+ ,
RowsHH, 0
[HH0 1
dgvCustomersHH1 =
.HH= >

CurrentRowHH> H
.HHH I
IndexHHI N
]HHN O
.HHO P
CellsHHP U
[HHU V
$numHHV W
]HHW X
.HHX Y
ValueHHY ^
.HH^ _
ToStringHH_ g
(HHg h
)HHh i
;HHi j

txtSurnameII 
.II 
TextII 
=II 
dgvCustomersII *
.II* +
RowsII+ /
[II/ 0
dgvCustomersII0 <
.II< =

CurrentRowII= G
.IIG H
IndexIIH M
]IIM N
.IIN O
CellsIIO T
[IIT U
$numIIU V
]IIV W
.IIW X
ValueIIX ]
.II] ^
ToStringII^ f
(IIf g
)IIg h
;IIh i
txtEmailJJ 
.JJ 
TextJJ 
=JJ 
dgvCustomersJJ (
.JJ( )
RowsJJ) -
[JJ- .
dgvCustomersJJ. :
.JJ: ;

CurrentRowJJ; E
.JJE F
IndexJJF K
]JJK L
.JJL M
CellsJJM R
[JJR S
$numJJS T
]JJT U
.JJU V
ValueJJV [
.JJ[ \
ToStringJJ\ d
(JJd e
)JJe f
;JJf g
txtPhoneKK 
.KK 
TextKK 
=KK 
dgvCustomersKK (
.KK( )
RowsKK) -
[KK- .
dgvCustomersKK. :
.KK: ;

CurrentRowKK; E
.KKE F
IndexKKF K
]KKK L
.KKL M
CellsKKM R
[KKR S
$numKKS T
]KKT U
.KKU V
ValueKKV [
.KK[ \
ToStringKK\ d
(KKd e
)KKe f
;KKf g

txtEircodeLL 
.LL 
TextLL 
=LL 
dgvCustomersLL *
.LL* +
RowsLL+ /
[LL/ 0
dgvCustomersLL0 <
.LL< =

CurrentRowLL= G
.LLG H
IndexLLH M
]LLM N
.LLN O
CellsLLO T
[LLT U
$numLLU V
]LLV W
.LLW X
ValueLLX ]
.LL] ^
ToStringLL^ f
(LLf g
)LLg h
;LLh i
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
String`` 
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
;aaL M
ifbb 
(bb 
dgvToolsbb 
.bb 
SelectedCellsbb *
.bb* +
Countbb+ 0
==bb1 3
$numbb4 5
)bb5 6
throwcc 
newcc 
ArgumentExceptioncc /
(cc/ 0
$strcc0 G
)ccG H
;ccH I
intee 

customerIDee 
=ee  
Convertee! (
.ee( )
ToInt32ee) 0
(ee0 1
txtCustomerIDee1 >
.ee> ?
Textee? C
)eeC D
;eeD E
Stringff 
idff 
=ff 
dgvToolsff $
.ff$ %
Rowsff% )
[ff) *
dgvToolsff* 2
.ff2 3

CurrentRowff3 =
.ff= >
Indexff> C
]ffC D
.ffD E
CellsffE J
[ffJ K
$numffK L
]ffL M
.ffM N
ValueffN S
.ffS T
ToStringffT \
(ff\ ]
)ff] ^
;ff^ _
Stringgg 
categoryCodegg #
=gg$ %
dgvToolsgg& .
.gg. /
Rowsgg/ 3
[gg3 4
dgvToolsgg4 <
.gg< =

CurrentRowgg= G
.ggG H
IndexggH M
]ggM N
.ggN O
CellsggO T
[ggT U
$numggU V
]ggV W
.ggW X
ValueggX ]
.gg] ^
ToStringgg^ f
(ggf g
)ggg h
;ggh i
Stringhh 
descriptionhh "
=hh# $
dgvToolshh% -
.hh- .
Rowshh. 2
[hh2 3
dgvToolshh3 ;
.hh; <

CurrentRowhh< F
.hhF G
IndexhhG L
]hhL M
.hhM N
CellshhN S
[hhS T
$numhhT U
]hhU V
.hhV W
ValuehhW \
.hh\ ]
ToStringhh] e
(hhe f
)hhf g
;hhg h
Stringii 
manufacturerii #
=ii$ %
dgvToolsii& .
.ii. /
Rowsii/ 3
[ii3 4
dgvToolsii4 <
.ii< =

CurrentRowii= G
.iiG H
IndexiiH M
]iiM N
.iiN O
CellsiiO T
[iiT U
$numiiU V
]iiV W
.iiW X
ValueiiX ]
.ii] ^
ToStringii^ f
(iif g
)iig h
;iih i
DateTimejj 
rentDatejj !
=jj" #
dtpFromjj$ +
.jj+ ,
Valuejj, 1
;jj1 2
DateTimekk 

returnDatekk #
=kk$ %
dtpTokk& +
.kk+ ,
Valuekk, 1
;kk1 2
decimalnn 
	rentalFeenn !
=nn" #
_rentalServicenn$ 2
.nn2 3
CalculateRentalFeenn3 E
(nnE F

customerIDnnF P
,nnP Q
categoryCodennR ^
,nn^ _
rentDatenn` h
,nnh i

returnDatennj t
)nnt u
;nnu v
ifpp 
(pp 
	dgvRentalpp 
.pp 
Rowspp "
.pp" #
Countpp# (
>=pp) +
$numpp, -
)pp- .
{qq 
foreachrr 
(rr 
DataGridViewRowrr ,
rowrr- 0
inrr1 3
	dgvRentalrr4 =
.rr= >
Rowsrr> B
)rrB C
{ss 
iftt 
(tt 
rowtt 
.tt  
Cellstt  %
[tt% &
$strtt& .
]tt. /
.tt/ 0
Valuett0 5
.tt5 6
ToStringtt6 >
(tt> ?
)tt? @
==ttA C
idttD F
)ttF G
{uu 

MessageBoxvv &
.vv& '
Showvv' +
(vv+ ,
$strvv, S
,vvS T
$strvvU ^
,vv^ _
MessageBoxButtonsvv` q
.vvq r
OKvvr t
,vvt u
MessageBoxIcon	vvv Ñ
.
vvÑ Ö
Error
vvÖ ä
)
vvä ã
;
vvã å
returnww "
;ww" #
}xx 
}yy 
}zz 
	dgvRental|| 
.|| 
Rows|| 
.|| 
Add|| "
(||" #
id}} 
,}} 
categoryCode~~  
,~~  !
description 
,  
manufacturer
ÄÄ  
,
ÄÄ  !
rentDate
ÅÅ 
.
ÅÅ 
ToString
ÅÅ %
(
ÅÅ% &
$str
ÅÅ& 1
)
ÅÅ1 2
,
ÅÅ2 3

returnDate
ÇÇ 
.
ÇÇ 
ToString
ÇÇ '
(
ÇÇ' (
$str
ÇÇ( 3
)
ÇÇ3 4
,
ÇÇ4 5
	rentalFee
ÉÉ 
.
ÉÉ 
ToString
ÉÉ &
(
ÉÉ& '
$str
ÉÉ' -
)
ÉÉ- .
)
ÑÑ 
;
ÑÑ 
UpdateTotalFee
ÜÜ 
(
ÜÜ 
)
ÜÜ  
;
ÜÜ  !
}
áá 
catch
àà 
(
àà 
	Exception
àà 
ex
àà 
)
àà  
{
ââ 

MessageBox
ää 
.
ää 
Show
ää 
(
ää  
$"
ää  "
{
ää" #
ex
ää# %
.
ää% &
Message
ää& -
}
ää- .
"
ää. /
,
ää/ 0
$str
ää1 8
,
ää8 9
MessageBoxButtons
ää: K
.
ääK L
OK
ääL N
,
ääN O
MessageBoxIcon
ääP ^
.
ää^ _
Error
ää_ d
)
ääd e
;
ääe f
}
ãã 
}
åå 	
private
éé 
void
éé 
UpdateTotalFee
éé #
(
éé# $
)
éé$ %
{
èè 	
txtTotalFee
êê 
.
êê 
Text
êê 
=
êê 
	dgvRental
êê (
.
êê( )
Rows
êê) -
.
êê- .
Cast
êê. 2
<
êê2 3
DataGridViewRow
êê3 B
>
êêB C
(
êêC D
)
êêD E
.
ëë  !
Sum
ëë! $
(
ëë$ %
row
ëë% (
=>
ëë) +
Convert
ëë, 3
.
ëë3 4
	ToDecimal
ëë4 =
(
ëë= >
row
ëë> A
.
ëëA B
Cells
ëëB G
[
ëëG H
$str
ëëH S
]
ëëS T
.
ëëT U
Value
ëëU Z
)
ëëZ [
)
ëë[ \
.
íí  !
ToString
íí! )
(
íí) *
$str
íí* 0
)
íí0 1
;
íí1 2
}
ìì 	
private
ïï 
void
ïï $
btnConfirmRental_Click
ïï +
(
ïï+ ,
object
ïï, 2
sender
ïï3 9
,
ïï9 :
	EventArgs
ïï; D
e
ïïE F
)
ïïF G
{
ññ 	
try
óó 
{
òò 
if
ôô 
(
ôô 
String
ôô 
.
ôô 
IsNullOrEmpty
ôô (
(
ôô( )
txtCustomerID
ôô) 6
.
ôô6 7
Text
ôô7 ;
)
ôô; <
)
ôô< =
throw
öö 
new
öö 
ArgumentException
öö /
(
öö/ 0
$str
öö0 K
)
ööK L
;
ööL M
if
úú 
(
úú 
	dgvRental
úú 
.
úú 
Rows
úú "
.
úú" #
Count
úú# (
==
úú) +
$num
úú, -
)
úú- .
throw
ùù 
new
ùù 
ArgumentException
ùù /
(
ùù/ 0
$str
ùù0 Y
)
ùùY Z
;
ùùZ [
var
üü 
rentalBuilder
üü !
=
üü" #
new
üü$ '
RentalBuilder
üü( 5
(
üü5 6
)
üü6 7
.
†† 
SetRentalID
††  
(
††  !
Convert
††! (
.
††( )
ToInt32
††) 0
(
††0 1
txtRentalID
††1 <
.
††< =
Text
††= A
)
††A B
)
††B C
.
°° 
SetCustomerID
°° "
(
°°" #
Convert
°°# *
.
°°* +
ToInt32
°°+ 2
(
°°2 3
txtCustomerID
°°3 @
.
°°@ A
Text
°°A E
)
°°E F
)
°°F G
.
¢¢  
SetTransactionDate
¢¢ '
(
¢¢' (
DateTime
¢¢( 0
.
¢¢0 1
Today
¢¢1 6
)
¢¢6 7
.
££ 
SetTotalFee
££  
(
££  !
Convert
££! (
.
££( )
	ToDecimal
££) 2
(
££2 3
txtTotalFee
££3 >
.
££> ?
Text
££? C
)
££C D
)
££D E
;
££E F
foreach
•• 
(
•• 
DataGridViewRow
•• (
row
••) ,
in
••- /
	dgvRental
••0 9
.
••9 :
Rows
••: >
)
••> ?
{
¶¶ 
var
ßß 

rentalItem
ßß "
=
ßß# $
new
ßß% (

RentalItem
ßß) 3
{
®® 
rentalID
©©  
=
©©! "
Convert
©©# *
.
©©* +
ToInt32
©©+ 2
(
©©2 3
txtRentalID
©©3 >
.
©©> ?
Text
©©? C
)
©©C D
,
©©D E
toolID
™™ 
=
™™  
Convert
™™! (
.
™™( )
ToInt32
™™) 0
(
™™0 1
row
™™1 4
.
™™4 5
Cells
™™5 :
[
™™: ;
$str
™™; C
]
™™C D
.
™™D E
Value
™™E J
)
™™J K
,
™™K L
rentDate
´´  
=
´´! "
DateTime
´´# +
.
´´+ ,
Parse
´´, 1
(
´´1 2
row
´´2 5
.
´´5 6
Cells
´´6 ;
[
´´; <
$str
´´< F
]
´´F G
.
´´G H
Value
´´H M
.
´´M N
ToString
´´N V
(
´´V W
)
´´W X
)
´´X Y
,
´´Y Z

returnDate
¨¨ "
=
¨¨# $
DateTime
¨¨% -
.
¨¨- .
Parse
¨¨. 3
(
¨¨3 4
row
¨¨4 7
.
¨¨7 8
Cells
¨¨8 =
[
¨¨= >
$str
¨¨> J
]
¨¨J K
.
¨¨K L
Value
¨¨L Q
.
¨¨Q R
ToString
¨¨R Z
(
¨¨Z [
)
¨¨[ \
)
¨¨\ ]
,
¨¨] ^
	rentalFee
≠≠ !
=
≠≠" #
Convert
≠≠$ +
.
≠≠+ ,
	ToDecimal
≠≠, 5
(
≠≠5 6
row
≠≠6 9
.
≠≠9 :
Cells
≠≠: ?
[
≠≠? @
$str
≠≠@ K
]
≠≠K L
.
≠≠L M
Value
≠≠M R
)
≠≠R S
}
ÆÆ 
;
ÆÆ 
rentalBuilder
∞∞ !
.
∞∞! "
AddRentalItem
∞∞" /
(
∞∞/ 0

rentalItem
∞∞0 :
)
∞∞: ;
;
∞∞; <
}
±± 
Rental
≥≥ 
rental
≥≥ 
=
≥≥ 
rentalBuilder
≥≥  -
.
≥≥- .
Build
≥≥. 3
(
≥≥3 4
)
≥≥4 5
;
≥≥5 6
_rentalService
µµ 
.
µµ 
ConfirmRental
µµ ,
(
µµ, -
rental
µµ- 3
)
µµ3 4
;
µµ4 5

MessageBox
∑∑ 
.
∑∑ 
Show
∑∑ 
(
∑∑  
$str
∑∑  3
,
∑∑3 4
$str
∑∑5 B
,
∑∑B C
MessageBoxButtons
∑∑D U
.
∑∑U V
OK
∑∑V X
,
∑∑X Y
MessageBoxIcon
∑∑Z h
.
∑∑h i
Information
∑∑i t
)
∑∑t u
;
∑∑u v
RefreshForm
∏∏ 
(
∏∏ 
)
∏∏ 
;
∏∏ 
}
ππ 
catch
∫∫ 
(
∫∫ 
	Exception
∫∫ 
ex
∫∫ 
)
∫∫  
{
ªª 

MessageBox
ºº 
.
ºº 
Show
ºº 
(
ºº  
$"
ºº  "
{
ºº" #
ex
ºº# %
.
ºº% &
Message
ºº& -
}
ºº- .
"
ºº. /
,
ºº/ 0
$str
ºº1 8
,
ºº8 9
MessageBoxButtons
ºº: K
.
ººK L
OK
ººL N
,
ººN O
MessageBoxIcon
ººP ^
.
ºº^ _
Error
ºº_ d
)
ººd e
;
ººe f
}
ΩΩ 
}
ææ 	
private
¿¿ 
void
¿¿ 
RefreshForm
¿¿  
(
¿¿  !
)
¿¿! "
{
¡¡ 	
txtRentalID
¬¬ 
.
¬¬ 
Text
¬¬ 
=
¬¬ 
RentalService
¬¬ ,
.
¬¬, -
GetNextRentalID
¬¬- <
(
¬¬< =
)
¬¬= >
.
¬¬> ?
ToString
¬¬? G
(
¬¬G H
)
¬¬H I
;
¬¬I J
txtCustomerSearch
√√ 
.
√√ 
Clear
√√ #
(
√√# $
)
√√$ %
;
√√% &
txtCustomerID
ƒƒ 
.
ƒƒ 
Clear
ƒƒ 
(
ƒƒ  
)
ƒƒ  !
;
ƒƒ! "
txtForename
≈≈ 
.
≈≈ 
Clear
≈≈ 
(
≈≈ 
)
≈≈ 
;
≈≈  
txtPhone
∆∆ 
.
∆∆ 
Clear
∆∆ 
(
∆∆ 
)
∆∆ 
;
∆∆ 
txtEmail
«« 
.
«« 
Clear
«« 
(
«« 
)
«« 
;
«« 

txtEircode
»» 
.
»» 
Clear
»» 
(
»» 
)
»» 
;
»» 

txtSurname
…… 
.
…… 
Clear
…… 
(
…… 
)
…… 
;
…… 
txtTotalFee
   
.
   
Clear
   
(
   
)
   
;
    
dgvCustomers
ÀÀ 
.
ÀÀ 

DataSource
ÀÀ #
=
ÀÀ$ %
null
ÀÀ& *
;
ÀÀ* +
dgvCustomers
ÃÃ 
.
ÃÃ 
Rows
ÃÃ 
.
ÃÃ 
Clear
ÃÃ #
(
ÃÃ# $
)
ÃÃ$ %
;
ÃÃ% &
dgvTools
ÕÕ 
.
ÕÕ 

DataSource
ÕÕ 
=
ÕÕ  !
null
ÕÕ" &
;
ÕÕ& '
dgvTools
ŒŒ 
.
ŒŒ 
Rows
ŒŒ 
.
ŒŒ 
Clear
ŒŒ 
(
ŒŒ  
)
ŒŒ  !
;
ŒŒ! "
	dgvRental
œœ 
.
œœ 
Rows
œœ 
.
œœ 
Clear
œœ  
(
œœ  !
)
œœ! "
;
œœ" #
cboCategories
–– 
.
–– 
SelectedIndex
–– '
=
––( )
-
––* +
$num
––+ ,
;
––, -
dtpFrom
—— 
.
—— 
Value
—— 
=
—— 
DateTime
—— $
.
——$ %
Today
——% *
;
——* +
dtpTo
““ 
.
““ 
Value
““ 
=
““ 
DateTime
““ "
.
““" #
Today
““# (
;
““( )
}
”” 	
private
’’ 
void
’’ 0
"cboCategories_SelectedIndexChanged
’’ 7
(
’’7 8
object
’’8 >
sender
’’? E
,
’’E F
	EventArgs
’’G P
e
’’Q R
)
’’R S
{
÷÷ 	
if
◊◊ 
(
◊◊ 
cboCategories
◊◊ 
.
◊◊ 
SelectedIndex
◊◊ +
>=
◊◊, .
$num
◊◊/ 0
)
◊◊0 1
{
ÿÿ 
dgvTools
ŸŸ 
.
ŸŸ 

DataSource
ŸŸ #
=
ŸŸ$ %
_toolService
ŸŸ& 2
.
⁄⁄ 
GetRentableTools
⁄⁄ %
(
⁄⁄% &
cboCategories
⁄⁄& 3
.
⁄⁄3 4
SelectedItem
⁄⁄4 @
.
⁄⁄@ A
ToString
⁄⁄A I
(
⁄⁄I J
)
⁄⁄J K
.
⁄⁄K L
	Substring
⁄⁄L U
(
⁄⁄U V
$num
⁄⁄V W
,
⁄⁄W X
$num
⁄⁄Y Z
)
⁄⁄Z [
,
⁄⁄[ \
dtpFrom
⁄⁄] d
.
⁄⁄d e
Value
⁄⁄e j
,
⁄⁄j k
dtpTo
⁄⁄l q
.
⁄⁄q r
Value
⁄⁄r w
)
⁄⁄w x
.
€€ 
Tables
€€ 
[
€€ 
$str
€€ "
]
€€" #
;
€€# $
dgvTools
›› 
.
›› 
Columns
››  
[
››  !
$num
››! "
]
››" #
.
››# $

HeaderText
››$ .
=
››/ 0
$str
››1 5
;
››5 6
dgvTools
ﬁﬁ 
.
ﬁﬁ 
Columns
ﬁﬁ  
[
ﬁﬁ  !
$num
ﬁﬁ! "
]
ﬁﬁ" #
.
ﬁﬁ# $

HeaderText
ﬁﬁ$ .
=
ﬁﬁ/ 0
$str
ﬁﬁ1 @
;
ﬁﬁ@ A
dgvTools
ﬂﬂ 
.
ﬂﬂ 
Columns
ﬂﬂ  
[
ﬂﬂ  !
$num
ﬂﬂ! "
]
ﬂﬂ" #
.
ﬂﬂ# $

HeaderText
ﬂﬂ$ .
=
ﬂﬂ/ 0
$str
ﬂﬂ1 >
;
ﬂﬂ> ?
dgvTools
‡‡ 
.
‡‡ 
Columns
‡‡  
[
‡‡  !
$num
‡‡! "
]
‡‡" #
.
‡‡# $

HeaderText
‡‡$ .
=
‡‡/ 0
$str
‡‡1 ?
;
‡‡? @
dgvTools
·· 
.
·· 
Columns
··  
[
··  !
$num
··! "
]
··" #
.
··# $

HeaderText
··$ .
=
··/ 0
$str
··1 9
;
··9 :
Miscellaneous
‚‚ 
.
‚‚ '
SetDataGridViewProperties
‚‚ 7
(
‚‚7 8
dgvTools
‚‚8 @
)
‚‚@ A
;
‚‚A B
}
„„ 
}
‰‰ 	
}
ÂÂ 
}ÊÊ Ö8
TC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Forms\frmRemoveTool.cs
	namespace 	
ToolSYS
 
. 
Presentation 
{ 
public 

partial 
class 
frmRemoveTool &
:' (
NavForm) 0
{ 
private 
readonly 
IToolService %
_toolService& 2
;2 3
public 
frmRemoveTool 
( 
INavigation (

navigation) 3
,3 4
IToolService5 A
toolServiceB M
)M N
:O P
baseQ U
(U V

navigationV `
)` a
{ 	
InitializeComponent 
(  
)  !
;! "
_toolService 
= 
toolService &
;& '
} 	
private 
void 
frmRemoveTool_Load '
(' (
object( .
sender/ 5
,5 6
	EventArgs7 @
eA B
)B C
{ 	
RefreshGridView 
( 
) 
; 
this 
. 
AcceptButton 
= 

btnConfirm  *
;* +
} 	
private 
void 
btnConfirm_Click %
(% &
object& ,
sender- 3
,3 4
	EventArgs5 >
e? @
)@ A
{   	
DialogResult!! 
confirmRemove!! &
=!!' (

MessageBox!!) 3
.!!3 4
Show!!4 8
(!!8 9
$str!!9 e
,!!e f
$str!!g p
,!!p q
MessageBoxButtons	!!r É
.
!!É Ñ
YesNo
!!Ñ â
)
!!â ä
;
!!ä ã
if## 
(## 
confirmRemove## 
==##  
DialogResult##! -
.##- .
Yes##. 1
)##1 2
{$$ 
try%% 
{&& 
_toolService''  
.''  !

RemoveTool''! +
(''+ ,
Convert'', 3
.''3 4
ToInt32''4 ;
(''; <
	txtToolID''< E
.''E F
Text''F J
)''J K
)''K L
;''L M

MessageBox(( 
.(( 
Show(( #
(((# $
$str(($ ?
,((? @
$str((A N
,((N O
MessageBoxButtons((P a
.((a b
OK((b d
,((d e
MessageBoxIcon((f t
.((t u
Information	((u Ä
)
((Ä Å
;
((Å Ç
	txtToolID)) 
.)) 
Clear)) #
())# $
)))$ %
;))% &
RefreshGridView** #
(**# $
)**$ %
;**% &
}++ 
catch,, 
(,, 
	Exception,,  
ex,,! #
),,# $
{-- 

MessageBox.. 
... 
Show.. #
(..# $
$"..$ &
{..& '
ex..' )
...) *
Message..* 1
}..1 2
"..2 3
,..3 4
$str..5 <
,..< =
MessageBoxButtons..> O
...O P
OK..P R
,..R S
MessageBoxIcon..T b
...b c
Error..c h
)..h i
;..i j
}// 
}00 
}11 	
private33 
void33 
RefreshGridView33 $
(33$ %
)33% &
{44 	
dgvTools55 
.55 

DataSource55 
=55  !
_toolService55" .
.55. /
GetAvailableTools55/ @
(55@ A
)55A B
.55B C
Tables55C I
[55I J
$str55J P
]55P Q
;55Q R
dgvTools66 
.66 
AutoSizeColumnsMode66 (
=66) *+
DataGridViewAutoSizeColumnsMode66+ J
.66J K
Fill66K O
;66O P
dgvTools77 
.77 
Columns77 
[77 
$num77 
]77 
.77  
AutoSizeMode77  ,
=77- .*
DataGridViewAutoSizeColumnMode77/ M
.77M N
AllCells77N V
;77V W
}88 	
private:: 
void:: 
dgvTools_CellClick:: '
(::' (
object::( .
sender::/ 5
,::5 6%
DataGridViewCellEventArgs::7 P
e::Q R
)::R S
{;; 	
	txtToolID<< 
.<< 
Text<< 
=<< 
dgvTools<< %
.<<% &

CurrentRow<<& 0
.<<0 1
Cells<<1 6
[<<6 7
$num<<7 8
]<<8 9
.<<9 :
Value<<: ?
.<<? @
ToString<<@ H
(<<H I
)<<I J
;<<J K
}== 	
private@@ 
void@@ $
dgvTools_CellDoubleClick@@ -
(@@- .
object@@. 4
sender@@5 ;
,@@; <%
DataGridViewCellEventArgs@@= V
e@@W X
)@@X Y
{AA 	
ifBB 
(BB 
dgvToolsBB 
.BB 

CurrentRowBB #
!=BB$ &
nullBB' +
)BB+ ,
{CC 
DialogResultDD 
confirmRemoveDD *
=DD+ ,

MessageBoxDD- 7
.DD7 8
ShowDD8 <
(DD< =
$strDD= i
,DDi j
$strDDk t
,DDt u
MessageBoxButtons	DDv á
.
DDá à
YesNo
DDà ç
)
DDç é
;
DDé è
ifFF 
(FF 
confirmRemoveFF !
==FF" $
DialogResultFF% 1
.FF1 2
YesFF2 5
)FF5 6
{GG 
tryHH 
{II 
intJJ 
toolIDJJ "
=JJ# $
intJJ% (
.JJ( )
ParseJJ) .
(JJ. /
dgvToolsJJ/ 7
.JJ7 8

CurrentRowJJ8 B
.JJB C
CellsJJC H
[JJH I
$numJJI J
]JJJ K
.JJK L
ValueJJL Q
.JJQ R
ToStringJJR Z
(JJZ [
)JJ[ \
)JJ\ ]
;JJ] ^
_toolServiceKK $
.KK$ %

RemoveToolKK% /
(KK/ 0
toolIDKK0 6
)KK6 7
;KK7 8

MessageBoxMM "
.MM" #
ShowMM# '
(MM' (
$strMM( C
,MMC D
$strMME R
,MMR S
MessageBoxButtonsMMT e
.MMe f
OKMMf h
,MMh i
MessageBoxIconMMj x
.MMx y
Information	MMy Ñ
)
MMÑ Ö
;
MMÖ Ü
RefreshGridViewNN '
(NN' (
)NN( )
;NN) *
}OO 
catchPP 
(PP 
	ExceptionPP $
exPP% '
)PP' (
{QQ 

MessageBoxRR "
.RR" #
ShowRR# '
(RR' (
$"RR( *
$strRR* 1
{RR1 2
exRR2 4
.RR4 5
MessageRR5 <
}RR< =
"RR= >
,RR> ?
$strRR@ N
,RRN O
MessageBoxButtonsRRP a
.RRa b
OKRRb d
,RRd e
MessageBoxIconRRf t
.RRt u
ErrorRRu z
)RRz {
;RR{ |
}SS 
}TT 
}UU 
}VV 	
}WW 
}XX ó
RC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Forms\frmMainMenu.cs
	namespace 	
ToolSYS
 
. 
Presentation 
{ 
public 

partial 
class 
frmMainMenu $
:% &
NavForm' .
{ 
public 
frmMainMenu 
( 
INavigation &

navigation' 1
)1 2
:3 4
base5 9
(: ;

navigation; E
)E F
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
} 
} ⁄`
RC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Forms\frmAnalysis.cs
	namespace		 	
ToolSYS		
 
.		 
Presentation		 
{

 
public 

partial 
class 
frmAnalysis $
:% &
NavForm' .
{ 
private 
readonly 
AnalysisService (
analysisService) 8
;8 9
private 
readonly 
RateService $
rateService% 0
;0 1
private 
IReportStrategy 
report  &
;& '
public 
frmAnalysis 
( 
INavigation &

navigation' 1
)1 2
:3 4
base5 9
(9 :

navigation: D
)D E
{ 	
InitializeComponent 
(  
)  !
;! "
analysisService 
= 
new !
AnalysisService" 1
(1 2
)2 3
;3 4
rateService 
= 
new 
RateService )
() *
)* +
;+ ,
} 	
private 
void 
frmAnalysis_Load %
(% &
object& ,
sender- 3
,3 4
	EventArgs5 >
e? @
)@ A
{ 	!
InitializeReportTypes !
(! "
)" #
;# $
	LoadYears 
( 
) 
; 
LoadCategories 
( 
) 
; 
SetReportType 
( 
) 
; 
} 	
private   
void   !
InitializeReportTypes   *
(  * +
)  + ,
{!! 	
cboReportType"" 
."" 
Items"" 
.""  
Add""  #
(""# $
$str""$ 6
)""6 7
;""7 8
cboReportType## 
.## 
Items## 
.##  
Add##  #
(### $
$str##$ :
)##: ;
;##; <
cboReportType$$ 
.$$ 
SelectedIndex$$ '
=$$( )
$num$$* +
;$$+ ,
}%% 	
private'' 
void'' 
LoadCategories'' #
(''# $
)''$ %
{(( 	
try)) 
{** 
cboCategories++ 
.++ 
Items++ #
.++# $
Clear++$ )
(++) *
)++* +
;+++ ,
DataSet,, 

categories,, "
=,,# $
rateService,,% 0
.,,0 1
GetAllCategories,,1 A
(,,A B
),,B C
;,,C D
foreach.. 
(.. 
DataRow..  
row..! $
in..% '

categories..( 2
...2 3
Tables..3 9
[..9 :
$num..: ;
]..; <
...< =
Rows..= A
)..A B
{// 
string00 
category00 #
=00$ %
$"00& (
{00( )
row00) ,
[00, -
$str00- ;
]00; <
}00< =
$str00= @
{00@ A
row00A D
[00D E
$str00E S
]00S T
}00T U
"00U V
;00V W
cboCategories11 !
.11! "
Items11" '
.11' (
Add11( +
(11+ ,
category11, 4
)114 5
;115 6
}22 
}33 
catch44 
(44 
	Exception44 
ex44 
)44  
{55 

MessageBox66 
.66 
Show66 
(66  
$"66  "
{66" #
ex66# %
.66% &
Message66& -
}66- .
"66. /
,66/ 0
$str661 8
,668 9
MessageBoxButtons66: K
.66K L
OK66L N
,66N O
MessageBoxIcon66P ^
.66^ _
Error66_ d
)66d e
;66e f
}77 
}88 	
private:: 
void:: 
	LoadYears:: 
(:: 
)::  
{;; 	
try<< 
{== 
	DataTable>> 

yearsTable>> $
=>>% &
analysisService>>' 6
.>>6 7
GetDistinctYears>>7 G
(>>G H
)>>H I
;>>I J
cboYears?? 
.?? 
Items?? 
.?? 
Clear?? $
(??$ %
)??% &
;??& '
foreachAA 
(AA 
DataRowAA  
rowAA! $
inAA% '

yearsTableAA( 2
.AA2 3
RowsAA3 7
)AA7 8
{BB 
cboYearsCC 
.CC 
ItemsCC "
.CC" #
AddCC# &
(CC& '
rowCC' *
[CC* +
$strCC+ 1
]CC1 2
.CC2 3
ToStringCC3 ;
(CC; <
)CC< =
)CC= >
;CC> ?
}DD 
}EE 
catchFF 
(FF 
	ExceptionFF 
exFF 
)FF  
{GG 

MessageBoxHH 
.HH 
ShowHH 
(HH  
$"HH  "
{HH" #
exHH# %
.HH% &
MessageHH& -
}HH- .
"HH. /
,HH/ 0
$strHH1 8
,HH8 9
MessageBoxButtonsHH: K
.HHK L
OKHHL N
,HHN O
MessageBoxIconHHP ^
.HH^ _
ErrorHH_ d
)HHd e
;HHe f
}II 
}JJ 	
privateLL 
voidLL 
SetReportTypeLL "
(LL" #
)LL# $
{MM 	
ifNN 
(NN 
cboReportTypeNN 
.NN 
SelectedItemNN *
.NN* +
ToStringNN+ 3
(NN3 4
)NN4 5
==NN6 8
$strNN9 K
)NNK L
{OO 
reportPP 
=PP 
newPP 
RevenueReportPP *
(PP* +
analysisServicePP+ :
)PP: ;
;PP; <
}QQ 
elseRR 
{SS 
reportTT 
=TT 
newTT 
ToolRentalReportTT -
(TT- .
analysisServiceTT. =
)TT= >
;TT> ?
}UU 
lblCategoryVV 
.VV 
VisibleVV 
=VV  !
reportVV" (
.VV( )
NeedsCategoryVV) 6
;VV6 7
cboCategoriesWW 
.WW 
VisibleWW !
=WW" #
reportWW$ *
.WW* +
NeedsCategoryWW+ 8
;WW8 9
}XX 	
privateZZ 
voidZZ 0
$cboReportType_SelectedIndexChanged_1ZZ 9
(ZZ9 :
objectZZ: @
senderZZA G
,ZZG H
	EventArgsZZI R
eZZS T
)ZZT U
{[[ 	
SetReportType\\ 
(\\ 
)\\ 
;\\ 
}]] 	
private__ 
void__ 
btnConfirm_Click__ %
(__% &
object__& ,
sender__- 3
,__3 4
	EventArgs__5 >
e__? @
)__@ A
{`` 	
tryaa 
{bb 
ValidateSelectionscc "
(cc" #
)cc# $
;cc$ %
UpdateChartdd 
(dd 
)dd 
;dd 
}ee 
catchff 
(ff 
	Exceptionff 
exff 
)ff  
{gg 

MessageBoxhh 
.hh 
Showhh 
(hh  
exhh  "
.hh" #
Messagehh# *
,hh* +
$strhh, ?
,hh? @
MessageBoxButtonshhA R
.hhR S
OKhhS U
,hhU V
MessageBoxIconhhW e
.hhe f
Warninghhf m
)hhm n
;hhn o
}ii 
}jj 	
privatell 
voidll 
ValidateSelectionsll '
(ll' (
)ll( )
{mm 	
ifnn 
(nn 
reportnn 
.nn 
NeedsCategorynn $
)nn$ %
{oo 
ifpp 
(pp 
cboCategoriespp !
.pp! "
SelectedIndexpp" /
<pp0 1
$numpp2 3
)pp3 4
throwqq 
newqq 
ArgumentExceptionqq /
(qq/ 0
$strqq0 P
)qqP Q
;qqQ R
}rr 
iftt 
(tt 
cboYearstt 
.tt 
SelectedIndextt &
<tt' (
$numtt) *
)tt* +
throwuu 
newuu 
ArgumentExceptionuu +
(uu+ ,
$struu, C
)uuC D
;uuD E
}vv 	
privatexx 
voidxx 
UpdateChartxx  
(xx  !
)xx! "
{yy 	
tryzz 
{{{ 
int|| 
selectedYear||  
=||! "
int||# &
.||& '
Parse||' ,
(||, -
cboYears||- 5
.||5 6
SelectedItem||6 B
.||B C
ToString||C K
(||K L
)||L M
)||M N
;||N O
string}} 
categoryCode}} #
=}}$ %
null}}& *
;}}* +
if 
( 
report 
. 
NeedsCategory (
&&) +
cboCategories, 9
.9 :
SelectedItem: F
!=G I
nullJ N
)N O
{
ÄÄ 
categoryCode
ÅÅ  
=
ÅÅ! "
cboCategories
ÅÅ# 0
.
ÅÅ0 1
SelectedItem
ÅÅ1 =
.
ÅÅ= >
ToString
ÅÅ> F
(
ÅÅF G
)
ÅÅG H
.
ÅÅH I
	Substring
ÅÅI R
(
ÅÅR S
$num
ÅÅS T
,
ÅÅT U
$num
ÅÅV W
)
ÅÅW X
;
ÅÅX Y
}
ÇÇ 
var
ÉÉ 
(
ÉÉ 
labels
ÉÉ 
,
ÉÉ 
values
ÉÉ #
)
ÉÉ# $
=
ÉÉ% &
report
ÉÉ' -
.
ÉÉ- .
GetData
ÉÉ. 5
(
ÉÉ5 6
selectedYear
ÉÉ6 B
,
ÉÉB C
categoryCode
ÉÉD P
)
ÉÉP Q
;
ÉÉQ R

formsPlot1
ÖÖ 
.
ÖÖ 
Plot
ÖÖ 
.
ÖÖ  
Clear
ÖÖ  %
(
ÖÖ% &
)
ÖÖ& '
;
ÖÖ' (

formsPlot1
ÜÜ 
.
ÜÜ 
Plot
ÜÜ 
.
ÜÜ  
AddBar
ÜÜ  &
(
ÜÜ& '
values
ÜÜ' -
)
ÜÜ- .
;
ÜÜ. /
double
áá 
[
áá 
]
áá 

xPositions
áá #
=
áá$ %

Enumerable
áá& 0
.
áá0 1
Range
áá1 6
(
áá6 7
$num
áá7 8
,
áá8 9
labels
áá: @
.
áá@ A
Length
ááA G
)
ááG H
.
àà 
Select
àà 
(
àà 
i
àà 
=>
àà  
(
àà! "
double
àà" (
)
àà( )
i
àà) *
)
àà* +
.
àà+ ,
ToArray
àà, 3
(
àà3 4
)
àà4 5
;
àà5 6

formsPlot1
ââ 
.
ââ 
Plot
ââ 
.
ââ  
XTicks
ââ  &
(
ââ& '

xPositions
ââ' 1
,
ââ1 2
labels
ââ3 9
)
ââ9 :
;
ââ: ;

formsPlot1
ää 
.
ää 
Plot
ää 
.
ää  
Title
ää  %
(
ää% &
report
ää& ,
.
ää, -
GetTitle
ää- 5
(
ää5 6
selectedYear
ää6 B
,
ääB C
categoryCode
ääD P
)
ääP Q
)
ääQ R
;
ääR S

formsPlot1
ãã 
.
ãã 
Plot
ãã 
.
ãã  
XLabel
ãã  &
(
ãã& '
$str
ãã' /
)
ãã/ 0
;
ãã0 1

formsPlot1
åå 
.
åå 
Refresh
åå "
(
åå" #
)
åå# $
;
åå$ %
}
çç 
catch
éé 
(
éé 
	Exception
éé 
ex
éé 
)
éé  
{
èè 

MessageBox
êê 
.
êê 
Show
êê 
(
êê  
$"
êê  "
$str
êê" ;
{
êê; <
ex
êê< >
.
êê> ?
Message
êê? F
}
êêF G
"
êêG H
,
êêH I
$str
êêJ Q
,
êêQ R
MessageBoxButtons
êêS d
.
êêd e
OK
êêe g
,
êêg h
MessageBoxIcon
êêi w
.
êêw x
Error
êêx }
)
êê} ~
;
êê~ 
}
ëë 
}
íí 	
}
ìì 
}îî Ç2
QC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Forms\frmAddTool.cs
	namespace 	
ToolSYS
 
. 
Presentation 
{ 
public		 

partial		 
class		 

frmAddTool		 #
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
RateService $
rateService% 0
;0 1
public 

frmAddTool 
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
;& '
rateService 
= 
new 
RateService )
() *
)* +
;+ ,
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
GetNextToolID* 7
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
=  
rateService! ,
., -
GetAllCategories- =
(= >
)> ?
;? @
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
$str(($ D
,((D E
$str((F O
,((O P
MessageBoxButtons((Q b
.((b c
OK((c e
,((e f
MessageBoxIcon((g u
.((u v
Error((v {
)(({ |
;((| }
cboCategories)) !
.))! "
Focus))" '
())' (
)))( )
;))) *
return** 
;** 
}++ 
int-- 
toolID-- 
=-- 
Convert-- $
.--$ %
ToInt32--% ,
(--, -
	txtToolID--- 6
.--6 7
Text--7 ;
)--; <
;--< =
string.. 
categoryCode.. #
=..$ %
cboCategories..& 3
...3 4
SelectedItem..4 @
...@ A
ToString..A I
(..I J
)..J K
...K L
	Substring..L U
(..U V
$num..V W
,..W X
$num..Y Z
)..Z [
;..[ \
string// 
description// "
=//# $
txtDescription//% 3
.//3 4
Text//4 8
;//8 9
string00 
manufacturer00 #
=00$ %
txtManufacturer00& 5
.005 6
Text006 :
;00: ;
Tool22 
tool22 
=22 
new22 
Tool22  $
{33 
toolID44 
=44 
toolID44 #
,44# $
categoryCode55  
=55! "
categoryCode55# /
,55/ 0
toolDescription66 #
=66$ %
description66& 1
,661 2
toolManufacturer77 $
=77% &
manufacturer77' 3
}88 
;88 
_toolService:: 
.:: 
AddTool:: $
(::$ %
tool::% )
)::) *
;::* +

MessageBox<< 
.<< 
Show<< 
(<<  
$str<<  G
,<<G H
$str<<I V
,<<V W
MessageBoxButtons<<X i
.<<i j
OK<<j l
,<<l m
MessageBoxIcon<<n |
.<<| }
Information	<<} à
)
<<à â
;
<<â ä
txtDescription>> 
.>> 
Clear>> $
(>>$ %
)>>% &
;>>& '
txtManufacturer?? 
.??  
Clear??  %
(??% &
)??& '
;??' (
cboCategories@@ 
.@@ 
SelectedIndex@@ +
=@@, -
-@@. /
$num@@/ 0
;@@0 1
	txtToolIDAA 
.AA 
TextAA 
=AA  
_toolServiceAA! -
.AA- .
GetNextToolIDAA. ;
(AA; <
)AA< =
.AA= >
ToStringAA> F
(AAF G
$strAAG L
)AAL M
;AAM N
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
(EE  
$"EE  "
$strEE" )
{EE) *
exEE* ,
.EE, -
MessageEE- 4
}EE4 5
"EE5 6
,EE6 7
$strEE8 ?
,EE? @
MessageBoxButtonsEEA R
.EER S
OKEES U
,EEU V
MessageBoxIconEEW e
.EEe f
ErrorEEf k
)EEk l
;EEl m
}FF 
}GG 	
}HH 
}II Ÿ"
UC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Forms\frmAddCustomer.cs
	namespace 	
ToolSYS
 
. 
Presentation 
{ 
public 

partial 
class 
frmAddCustomer '
:( )
NavForm* 1
{ 
private 
readonly 
CustomerService (
_customerService) 9
;9 :
public 
frmAddCustomer 
( 
INavigation )

navigation* 4
)4 5
:6 7
base8 <
(= >

navigation> H
)H I
{ 	
InitializeComponent 
(  
)  !
;! "
_customerService 
= 
new "
CustomerService# 2
(2 3
)3 4
;4 5
} 	
private 
void 
frmAddCustomer_Load (
(( )
object) /
sender0 6
,6 7
	EventArgs8 A
eB C
)C D
{ 	
txtCustomerID 
. 
Text 
=  
_customerService! 1
.1 2
GetNextCustomerID2 C
(C D
)D E
.E F
ToStringF N
(N O
$strO U
)U V
;V W
} 	
private 
void 
BtnConfirm_Click %
(% &
object& ,
sender- 3
,3 4
	EventArgs5 >
e? @
)@ A
{ 	
try   
{!! 
Customer"" 
customer"" !
=""" #
new""$ '
Customer""( 0
{## 

customerID$$ 
=$$  
Convert$$! (
.$$( )
ToInt32$$) 0
($$0 1
txtCustomerID$$1 >
.$$> ?
Text$$? C
)$$C D
,$$D E
forename%% 
=%% 
txtForename%% *
.%%* +
Text%%+ /
,%%/ 0
surname&& 
=&& 

txtSurname&& (
.&&( )
Text&&) -
,&&- .
email'' 
='' 
txtEmail'' $
.''$ %
Text''% )
,'') *
phone(( 
=(( 
txtPhone(( $
.(($ %
Text((% )
,(() *
eircode)) 
=)) 

txtEircode)) (
.))( )
Text))) -
}** 
;** 
_customerService,,  
.,,  !
AddCustomer,,! ,
(,,, -
customer,,- 5
),,5 6
;,,6 7

MessageBox-- 
.-- 
Show-- 
(--  
$str--  K
,--K L
$str--M Z
,--Z [
MessageBoxButtons--\ m
.--m n
OK--n p
,--p q
MessageBoxIcon	--r Ä
.
--Ä Å
Information
--Å å
)
--å ç
;
--ç é
txtCustomerID.. 
... 
Clear.. #
(..# $
)..$ %
;..% &
txtForename// 
.// 
Clear// !
(//! "
)//" #
;//# $

txtSurname00 
.00 
Clear00  
(00  !
)00! "
;00" #
txtEmail11 
.11 
Clear11 
(11 
)11  
;11  !
txtPhone22 
.22 
Clear22 
(22 
)22  
;22  !

txtEircode33 
.33 
Clear33  
(33  !
)33! "
;33" #
txtCustomerID44 
.44 
Text44 "
=44# $
_customerService44% 5
.445 6
GetNextCustomerID446 G
(44G H
)44H I
.44I J
ToString44J R
(44R S
$str44S Y
)44Y Z
;44Z [
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
(99  
$"99  "
{99" #
ex99# %
.99% &
Message99& -
}99- .
"99. /
,99/ 0
$str991 8
,998 9
MessageBoxButtons99: K
.99K L
OK99L N
,99N O
MessageBoxIcon99P ^
.99^ _
Error99_ d
)99d e
;99e f
}:: 
}== 	
}>> 
}?? 