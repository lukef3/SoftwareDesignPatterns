Ù
HC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Program.cs
	namespace 	
ToolSYS
 
. 
Presentation 
{ 
static		 

class		 
Program		 
{

 
[ 	
	STAThread	 
] 
static 
void 
Main 
( 
) 
{ 	
Application 
. 
EnableVisualStyles *
(* +
)+ ,
;, -
Application 
. -
!SetCompatibleTextRenderingDefault 9
(9 :
false: ?
)? @
;@ A
Application 
. 
Run 
( 
new 
frmMainMenu  +
(+ ,
), -
)- .
;. /
} 	
} 
} ⁄L
KC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Navigation.cs
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
 

Navigation

 
{ 
public 
static 
void 
SetToolCategory *
(* +
Form+ /
form0 4
)4 5
{ 	
form 
. 
Hide 
( 
) 
; 
frmSetToolCategory 
nextForm '
=( )
new* -
frmSetToolCategory. @
(@ A
)A B
;B C
nextForm 
. 

ShowDialog 
(  
)  !
;! "
form 
. 
Close 
( 
) 
; 
} 	
public 
static 
void 

UpdateRate %
(% &
Form& *
form+ /
)/ 0
{ 	
form 
. 
Hide 
( 
) 
; 
frmUpdateToolRate 
nextForm &
=' (
new) ,
frmUpdateToolRate- >
(> ?
)? @
;@ A
nextForm 
. 

ShowDialog 
(  
)  !
;! "
form 
. 
Close 
( 
) 
; 
} 	
public 
static 
void 
AddTool "
(" #
Form# '
form( ,
), -
{ 	
form 
. 
Hide 
( 
) 
; 

frmAddTool 
nextForm 
=  !
new" %

frmAddTool& 0
(0 1
)1 2
;2 3
nextForm 
. 

ShowDialog 
(  
)  !
;! "
form   
.   
Close   
(   
)   
;   
}!! 	
public## 
static## 
void## 

UpdateTool## %
(##% &
Form##& *
form##+ /
)##/ 0
{$$ 	
form%% 
.%% 
Hide%% 
(%% 
)%% 
;%% 
frmUpdateTool&& 
nextForm&& "
=&&# $
new&&% (
frmUpdateTool&&) 6
(&&6 7
)&&7 8
;&&8 9
nextForm'' 
.'' 

ShowDialog'' 
(''  
)''  !
;''! "
form(( 
.(( 
Close(( 
((( 
)(( 
;(( 
})) 	
public++ 
static++ 
void++ 

RemoveTool++ %
(++% &
Form++& *
form+++ /
)++/ 0
{,, 	
form-- 
.-- 
Hide-- 
(-- 
)-- 
;-- 
frmRemoveTool.. 
nextForm.. "
=..# $
new..% (
frmRemoveTool..) 6
(..6 7
)..7 8
;..8 9
nextForm// 
.// 

ShowDialog// 
(//  
)//  !
;//! "
form00 
.00 
Close00 
(00 
)00 
;00 
}11 	
public22 
static22 
void22 
	ViewTools22 $
(22$ %
Form22% )
form22* .
)22. /
{33 	
form44 
.44 
Hide44 
(44 
)44 
;44 
frmViewTools55 
nextForm55 !
=55" #
new55$ '
frmViewTools55( 4
(554 5
)555 6
;556 7
nextForm66 
.66 

ShowDialog66 
(66  
)66  !
;66! "
form77 
.77 
Close77 
(77 
)77 
;77 
}88 	
public:: 
static:: 
void:: 
	RentTools:: $
(::$ %
Form::% )
form::* .
)::. /
{;; 	
form<< 
.<< 
Hide<< 
(<< 
)<< 
;<< 
frmRentTools== 
nextForm== !
===" #
new==$ '
frmRentTools==( 4
(==4 5
)==5 6
;==6 7
nextForm>> 
.>> 

ShowDialog>> 
(>>  
)>>  !
;>>! "
form?? 
.?? 
Close?? 
(?? 
)?? 
;?? 
}@@ 	
publicBB 
staticBB 
voidBB 
ReturnToolsBB &
(BB& '
FormBB' +
formBB, 0
)BB0 1
{CC 	
formDD 
.DD 
HideDD 
(DD 
)DD 
;DD 
frmReturnToolsEE 
nextFormEE #
=EE$ %
newEE& )
frmReturnToolsEE* 8
(EE8 9
)EE9 :
;EE: ;
nextFormFF 
.FF 

ShowDialogFF 
(FF  
)FF  !
;FF! "
formGG 
.GG 
CloseGG 
(GG 
)GG 
;GG 
}HH 	
publicJJ 
staticJJ 
voidJJ 
ViewRentalsJJ &
(JJ& '
FormJJ' +
formJJ, 0
)JJ0 1
{KK 	
formLL 
.LL 
HideLL 
(LL 
)LL 
;LL 
frmViewRentalsMM 
nextFormMM #
=MM$ %
newMM& )
frmViewRentalsMM* 8
(MM8 9
)MM9 :
;MM: ;
nextFormNN 
.NN 

ShowDialogNN 
(NN  
)NN  !
;NN! "
formOO 
.OO 
CloseOO 
(OO 
)OO 
;OO 
}PP 	
publicQQ 
staticQQ 
voidQQ 
AddCustomerQQ &
(QQ& '
FormQQ' +
formQQ, 0
)QQ0 1
{RR 	
formSS 
.SS 
HideSS 
(SS 
)SS 
;SS 
frmAddCustomerTT 
nextFormTT #
=TT$ %
newTT& )
frmAddCustomerTT* 8
(TT8 9
)TT9 :
;TT: ;
nextFormUU 
.UU 

ShowDialogUU 
(UU  
)UU  !
;UU! "
formVV 
.VV 
CloseVV 
(VV 
)VV 
;VV 
}WW 	
publicXX 
staticXX 
voidXX 
UpdateCustomerXX )
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
;ZZ 
frmUpdateCustomer[[ 
nextForm[[ &
=[[' (
new[[) ,
frmUpdateCustomer[[- >
([[> ?
)[[? @
;[[@ A
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
public__ 
static__ 
void__ 
ViewCustomers__ (
(__( )
Form__) -
form__. 2
)__2 3
{`` 	
formaa 
.aa 
Hideaa 
(aa 
)aa 
;aa 
frmViewCustomersbb 
nextFormbb %
=bb& '
newbb( +
frmViewCustomersbb, <
(bb< =
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
publicgg 
staticgg 
voidgg 
RevenueAnalysisgg *
(gg* +
Formgg+ /
formgg0 4
)gg4 5
{hh 	
formii 
.ii 
Hideii 
(ii 
)ii 
;ii $
frmAnnualRevenueAnalysisjj $
nextFormjj% -
=jj. /
newjj0 3$
frmAnnualRevenueAnalysisjj4 L
(jjL M
)jjM N
;jjN O
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
publicoo 
staticoo 
voidoo 
ToolTypeAnalysisoo +
(oo+ ,
Formoo, 0
formoo1 5
)oo5 6
{pp 	
formqq 
.qq 
Hideqq 
(qq 
)qq 
;qq %
frmAnnualToolTypeAnalysisrr %
nextFormrr& .
=rr/ 0
newrr1 4%
frmAnnualToolTypeAnalysisrr5 N
(rrN O
)rrO P
;rrP Q
nextFormss 
.ss 

ShowDialogss 
(ss  
)ss  !
;ss! "
formtt 
.tt 
Closett 
(tt 
)tt 
;tt 
}uu 	
publicvv 
staticvv 
voidvv 
MainMenuvv #
(vv# $
Formvv$ (
formvv) -
)vv- .
{ww 	
formxx 
.xx 
Hidexx 
(xx 
)xx 
;xx 
frmMainMenuyy 
nextFormyy  
=yy! "
newyy# &
frmMainMenuyy' 2
(yy2 3
)yy3 4
;yy4 5
nextFormzz 
.zz 

ShowDialogzz 
(zz  
)zz  !
;zz! "
form{{ 
.{{ 
Close{{ 
({{ 
){{ 
;{{ 
}|| 	
}}} 
}~~ Ì
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
} ¶c
MC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\frmViewTools.cs
	namespace 	
ToolSYS
 
. 
Presentation 
{ 
public 

partial 
class 
frmViewTools %
:& '
Form( ,
{ 
private 
ToolService 
_toolService (
;( )
private 
RateService 
_rateService (
;( )
public 
frmViewTools 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
_toolService 
= 
new 
ToolService *
(* +
)+ ,
;, -
_rateService 
= 
new 
RateService *
(* +
)+ ,
;, -
} 	
private 
void 
frmViewTools_Load &
(& '
object' -
sender. 4
,4 5
	EventArgs6 ?
e@ A
)A B
{ 	
cboCategories 
. 
Items 
.  
Add  #
(# $
$str$ &
)& '
;' (
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
	cboStatus&& 
.&& 
Items&& 
.&& 
Add&& 
(&&  
$str&&  "
)&&" #
;&&# $
	cboStatus'' 
.'' 
Items'' 
.'' 
Add'' 
(''  
$str''  (
)''( )
;'') *
	cboStatus(( 
.(( 
Items(( 
.(( 
Add(( 
(((  
$str((  )
)(() *
;((* +
	cboStatus)) 
.)) 
Items)) 
.)) 
Add)) 
())  
$str))  1
)))1 2
;))2 3
this** 
.** 
AcceptButton** 
=** 
	btnSearch**  )
;**) *
}++ 	
private-- 
void-- 
btnSearch_Click-- $
(--$ %
object--% +
sender--, 2
,--2 3
	EventArgs--4 =
e--> ?
)--? @
{.. 	
try// 
{00 
string11 
toolID11 
=11 
	txtToolID11  )
.11) *
Text11* .
;11. /
string22 
categoryCode22 #
=22$ %
cboCategories22& 3
.223 4
SelectedItem224 @
!=22A C
null22D H
?22I J
cboCategories22K X
.22X Y
SelectedItem22Y e
.22e f
ToString22f n
(22n o
)22o p
:22q r
string22s y
.22y z
Empty22z 
;	22 Ä
string33 
description33 "
=33# $
txtDescription33% 3
.333 4
Text334 8
;338 9
string44 
manufacturer44 #
=44$ %
txtManufacturer44& 5
.445 6
Text446 :
;44: ;
string55 
status55 
=55 
	cboStatus55  )
.55) *
SelectedItem55* 6
!=557 9
null55: >
?55? @
	cboStatus55A J
.55J K
SelectedItem55K W
.55W X
ToString55X `
(55` a
)55a b
:55c d
string55e k
.55k l
Empty55l q
;55q r
string66 
phrase66 
=66 
	txtPhrase66  )
.66) *
Text66* .
;66. /
DataSet88 
results88 
=88  !
_toolService88" .
.88. /
GetFilteredTools88/ ?
(88? @
toolID88@ F
,88F G
categoryCode88H T
,88T U
description88V a
,88a b
manufacturer88c o
,88o p
status88q w
,88w x
phrase88y 
)	88 Ä
;
88Ä Å
dgvTools:: 
.:: 

DataSource:: #
=::$ %
results::& -
.::- .
Tables::. 4
[::4 5
$str::5 ;
]::; <
;::< =
dgvTools;; 
.;; 
AutoSizeColumnsMode;; ,
=;;- .+
DataGridViewAutoSizeColumnsMode;;/ N
.;;N O
Fill;;O S
;;;S T
dgvTools<< 
.<< 
Columns<<  
[<<  !
$num<<! "
]<<" #
.<<# $
AutoSizeMode<<$ 0
=<<1 2*
DataGridViewAutoSizeColumnMode<<3 Q
.<<Q R
AllCells<<R Z
;<<Z [
}== 
catch>> 
(>> 
	Exception>> 
ex>> 
)>>  
{?? 

MessageBox@@ 
.@@ 
Show@@ 
(@@  
$"@@  "
{@@" #
ex@@# %
.@@% &
Message@@& -
}@@- .
"@@. /
,@@/ 0
$str@@1 8
,@@8 9
MessageBoxButtons@@: K
.@@K L
OK@@L N
,@@N O
MessageBoxIcon@@P ^
.@@^ _
Error@@_ d
)@@d e
;@@e f
}AA 
}BB 	
privateDD 
voidDD 2
&SetToolCategoryToolStripMenuItem_ClickDD ;
(DD; <
objectDD< B
senderDDC I
,DDI J
	EventArgsDDK T
eDDU V
)DDV W
{EE 	

NavigationFF 
.FF 
SetToolCategoryFF &
(FF& '
thisFF' +
)FF+ ,
;FF, -
}GG 	
privateHH 
voidHH 1
%UpdateToolRateToolStripMenuItem_ClickHH :
(HH: ;
objectHH; A
senderHHB H
,HHH I
	EventArgsHHJ S
eHHT U
)HHU V
{II 	

NavigationJJ 
.JJ 

UpdateRateJJ !
(JJ! "
thisJJ" &
)JJ& '
;JJ' (
}KK 	
privateLL 
voidLL &
AddToolStripMenuItem_ClickLL /
(LL/ 0
objectLL0 6
senderLL7 =
,LL= >
	EventArgsLL? H
eLLI J
)LLJ K
{MM 	

NavigationNN 
.NN 
AddToolNN 
(NN 
thisNN #
)NN# $
;NN$ %
}OO 	
privatePP 
voidPP .
"UpdateToolsToolStripMenuItem_ClickPP 7
(PP7 8
objectPP8 >
senderPP? E
,PPE F
	EventArgsPPG P
ePPQ R
)PPR S
{QQ 	

NavigationRR 
.RR 

UpdateToolRR !
(RR! "
thisRR" &
)RR& '
;RR' (
}SS 	
privateTT 
voidTT .
"RemoveToolsToolStripMenuItem_ClickTT 7
(TT7 8
objectTT8 >
senderTT? E
,TTE F
	EventArgsTTG P
eTTQ R
)TTR S
{UU 	

NavigationVV 
.VV 

RemoveToolVV !
(VV! "
thisVV" &
)VV& '
;VV' (
}WW 	
privateXX 
voidXX ,
 ViewToolsToolStripMenuItem_ClickXX 5
(XX5 6
objectXX6 <
senderXX= C
,XXC D
	EventArgsXXE N
eXXO P
)XXP Q
{YY 	

NavigationZZ 
.ZZ 
	ViewToolsZZ  
(ZZ  !
thisZZ! %
)ZZ% &
;ZZ& '
}[[ 	
private\\ 
void\\ .
"AddCustomerToolStripMenuItem_Click\\ 7
(\\7 8
object\\8 >
sender\\? E
,\\E F
	EventArgs\\G P
e\\Q R
)\\R S
{]] 	

Navigation^^ 
.^^ 
AddCustomer^^ "
(^^" #
this^^# '
)^^' (
;^^( )
}__ 	
private`` 
void`` 1
%UpdateCustomerToolStripMenuItem_Click`` :
(``: ;
object``; A
sender``B H
,``H I
	EventArgs``J S
e``T U
)``U V
{aa 	

Navigationbb 
.bb 
UpdateCustomerbb %
(bb% &
thisbb& *
)bb* +
;bb+ ,
}cc 	
privatedd 
voiddd 0
$viewCustomersToolStripMenuItem_Clickdd 9
(dd9 :
objectdd: @
senderddA G
,ddG H
	EventArgsddI R
eddS T
)ddT U
{ee 	

Navigationff 
.ff 
ViewCustomersff $
(ff$ %
thisff% )
)ff) *
;ff* +
}gg 	
privatehh 
voidhh +
RentToolToolStripMenuItem_Clickhh 4
(hh4 5
objecthh5 ;
senderhh< B
,hhB C
	EventArgshhD M
ehhN O
)hhO P
{ii 	

Navigationjj 
.jj 
	RentToolsjj  
(jj  !
thisjj! %
)jj% &
;jj& '
}kk 	
privatell 
voidll .
"ReturnToolsToolStripMenuItem_Clickll 7
(ll7 8
objectll8 >
senderll? E
,llE F
	EventArgsllG P
ellQ R
)llR S
{mm 	

Navigationnn 
.nn 
ReturnToolsnn "
(nn" #
thisnn# '
)nn' (
;nn( )
}oo 	
privatepp 
voidpp .
"ViewRentalsToolStripMenuItem_Clickpp 7
(pp7 8
objectpp8 >
senderpp? E
,ppE F
	EventArgsppG P
eppQ R
)ppR S
{qq 	

Navigationrr 
.rr 
ViewRentalsrr "
(rr" #
thisrr# '
)rr' (
;rr( )
}ss 	
privatett 
voidtt 8
,AnnualRevenueAnalysisToolStripMenuItem_Clicktt A
(ttA B
objectttB H
senderttI O
,ttO P
	EventArgsttQ Z
ett[ \
)tt\ ]
{uu 	

Navigationvv 
.vv 
RevenueAnalysisvv &
(vv& '
thisvv' +
)vv+ ,
;vv, -
}ww 	
privatexx 
voidxx 9
-AnnualToolTypeAnalysisToolStripMenuItem_Clickxx B
(xxB C
objectxxC I
senderxxJ P
,xxP Q
	EventArgsxxR [
exx\ ]
)xx] ^
{yy 	

Navigationzz 
.zz 
ToolTypeAnalysiszz '
(zz' (
thiszz( ,
)zz, -
;zz- .
}{{ 	
private|| 
void|| +
MainMenuToolStripMenuItem_Click|| 4
(||4 5
object||5 ;
sender||< B
,||B C
	EventArgs||D M
e||N O
)||O P
{}} 	

Navigation~~ 
.~~ 
MainMenu~~ 
(~~  
this~~  $
)~~$ %
;~~% &
} 	
private
ÅÅ 
void
ÅÅ 
btnClear_Click
ÅÅ #
(
ÅÅ# $
object
ÅÅ$ *
sender
ÅÅ+ 1
,
ÅÅ1 2
	EventArgs
ÅÅ3 <
e
ÅÅ= >
)
ÅÅ> ?
{
ÇÇ 	
	txtToolID
ÉÉ 
.
ÉÉ 
Clear
ÉÉ 
(
ÉÉ 
)
ÉÉ 
;
ÉÉ 
cboCategories
ÑÑ 
.
ÑÑ 
SelectedIndex
ÑÑ '
=
ÑÑ( )
-
ÑÑ* +
$num
ÑÑ+ ,
;
ÑÑ, -
txtDescription
ÖÖ 
.
ÖÖ 
Clear
ÖÖ  
(
ÖÖ  !
)
ÖÖ! "
;
ÖÖ" #
txtManufacturer
ÜÜ 
.
ÜÜ 
Clear
ÜÜ !
(
ÜÜ! "
)
ÜÜ" #
;
ÜÜ# $
	cboStatus
áá 
.
áá 
SelectedIndex
áá #
=
áá$ %
-
áá& '
$num
áá' (
;
áá( )
	txtPhrase
àà 
.
àà 
Clear
àà 
(
àà 
)
àà 
;
àà 
}
ââ 	
}
ää 
}ãã •/
OC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\frmViewRentals.cs
	namespace 	
ToolSYS
 
. 
Presentation 
{ 
public 

partial 
class 
frmViewRentals '
:( )
Form* .
{ 
public 
frmViewRentals 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 2
&SetToolCategoryToolStripMenuItem_Click ;
(; <
object< B
senderC I
,I J
	EventArgsK T
eU V
)V W
{ 	

Navigation 
. 
SetToolCategory &
(& '
this' +
)+ ,
;, -
} 	
private 
void 1
%UpdateToolRateToolStripMenuItem_Click :
(: ;
object; A
senderB H
,H I
	EventArgsJ S
eT U
)U V
{ 	

Navigation 
. 

UpdateRate !
(! "
this" &
)& '
;' (
} 	
private 
void &
AddToolStripMenuItem_Click /
(/ 0
object0 6
sender7 =
,= >
	EventArgs? H
eI J
)J K
{ 	

Navigation 
. 
AddTool 
( 
this #
)# $
;$ %
} 	
private   
void   .
"UpdateToolsToolStripMenuItem_Click   7
(  7 8
object  8 >
sender  ? E
,  E F
	EventArgs  G P
e  Q R
)  R S
{!! 	

Navigation"" 
."" 

UpdateTool"" !
(""! "
this""" &
)""& '
;""' (
}## 	
private$$ 
void$$ .
"RemoveToolsToolStripMenuItem_Click$$ 7
($$7 8
object$$8 >
sender$$? E
,$$E F
	EventArgs$$G P
e$$Q R
)$$R S
{%% 	

Navigation&& 
.&& 

RemoveTool&& !
(&&! "
this&&" &
)&&& '
;&&' (
}'' 	
private(( 
void(( ,
 ViewToolsToolStripMenuItem_Click(( 5
(((5 6
object((6 <
sender((= C
,((C D
	EventArgs((E N
e((O P
)((P Q
{)) 	

Navigation** 
.** 
	ViewTools**  
(**  !
this**! %
)**% &
;**& '
}++ 	
private,, 
void,, .
"AddCustomerToolStripMenuItem_Click,, 7
(,,7 8
object,,8 >
sender,,? E
,,,E F
	EventArgs,,G P
e,,Q R
),,R S
{-- 	

Navigation.. 
... 
AddCustomer.. "
(.." #
this..# '
)..' (
;..( )
}// 	
private00 
void00 1
%UpdateCustomerToolStripMenuItem_Click00 :
(00: ;
object00; A
sender00B H
,00H I
	EventArgs00J S
e00T U
)00U V
{11 	

Navigation22 
.22 
UpdateCustomer22 %
(22% &
this22& *
)22* +
;22+ ,
}33 	
private44 
void44 0
$viewCustomersToolStripMenuItem_Click44 9
(449 :
object44: @
sender44A G
,44G H
	EventArgs44I R
e44S T
)44T U
{55 	

Navigation66 
.66 
ViewCustomers66 $
(66$ %
this66% )
)66) *
;66* +
}77 	
private88 
void88 +
RentToolToolStripMenuItem_Click88 4
(884 5
object885 ;
sender88< B
,88B C
	EventArgs88D M
e88N O
)88O P
{99 	

Navigation:: 
.:: 
	RentTools::  
(::  !
this::! %
)::% &
;::& '
};; 	
private<< 
void<< .
"ReturnToolsToolStripMenuItem_Click<< 7
(<<7 8
object<<8 >
sender<<? E
,<<E F
	EventArgs<<G P
e<<Q R
)<<R S
{== 	

Navigation>> 
.>> 
ReturnTools>> "
(>>" #
this>># '
)>>' (
;>>( )
}?? 	
private@@ 
void@@ .
"ViewRentalsToolStripMenuItem_Click@@ 7
(@@7 8
object@@8 >
sender@@? E
,@@E F
	EventArgs@@G P
e@@Q R
)@@R S
{AA 	

NavigationBB 
.BB 
ViewRentalsBB "
(BB" #
thisBB# '
)BB' (
;BB( )
}CC 	
privateDD 
voidDD 8
,AnnualRevenueAnalysisToolStripMenuItem_ClickDD A
(DDA B
objectDDB H
senderDDI O
,DDO P
	EventArgsDDQ Z
eDD[ \
)DD\ ]
{EE 	

NavigationFF 
.FF 
RevenueAnalysisFF &
(FF& '
thisFF' +
)FF+ ,
;FF, -
}GG 	
privateHH 
voidHH 9
-AnnualToolTypeAnalysisToolStripMenuItem_ClickHH B
(HHB C
objectHHC I
senderHHJ P
,HHP Q
	EventArgsHHR [
eHH\ ]
)HH] ^
{II 	

NavigationJJ 
.JJ 
ToolTypeAnalysisJJ '
(JJ' (
thisJJ( ,
)JJ, -
;JJ- .
}KK 	
privateLL 
voidLL +
MainMenuToolStripMenuItem_ClickLL 4
(LL4 5
objectLL5 ;
senderLL< B
,LLB C
	EventArgsLLD M
eLLN O
)LLO P
{MM 	

NavigationNN 
.NN 
MainMenuNN 
(NN  
thisNN  $
)NN$ %
;NN% &
}OO 	
}PP 
}QQ ÃP
QC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\frmViewCustomers.cs
	namespace 	
ToolSYS
 
. 
Presentation 
{ 
public 

partial 
class 
frmViewCustomers )
:* +
Form, 0
{ 
private 
CustomerService 
_customerService  0
;0 1
public 
frmViewCustomers 
(  
)  !
{ 	
InitializeComponent 
(  
)  !
;! "
_customerService 
= 
new "
CustomerService# 2
(2 3
)3 4
;4 5
} 	
private 
void 
btnSearch_Click $
($ %
object% +
sender, 2
,2 3
	EventArgs4 =
e> ?
)? @
{ 	
try 
{ 
string 

customerID !
=" #
txtCustomerID$ 1
.1 2
Text2 6
;6 7
string 
forename 
=  !
txtForename" -
.- .
Text. 2
;2 3
string 
surname 
=  

txtSurname! +
.+ ,
Text, 0
;0 1
string 
email 
= 
txtEmail '
.' (
Text( ,
;, -
string   
phone   
=   
txtPhone   '
.  ' (
Text  ( ,
;  , -
string!! 
eircode!! 
=!!  

txtEircode!!! +
.!!+ ,
Text!!, 0
;!!0 1
string"" 
phrase"" 
="" 
	txtPhrase""  )
."") *
Text""* .
;"". /
DataSet$$ 
results$$ 
=$$  !
_customerService$$" 2
.$$2 3 
GetFilteredCustomers$$3 G
($$G H

customerID$$H R
,$$R S
forename$$T \
,$$\ ]
surname$$^ e
,$$e f
email$$g l
,$$l m
phone$$n s
,$$s t
eircode$$u |
,$$| }
phrase	$$~ Ñ
)
$$Ñ Ö
;
$$Ö Ü
dgvCustomers&& 
.&& 

DataSource&& '
=&&( )
results&&* 1
.&&1 2
Tables&&2 8
[&&8 9
$str&&9 C
]&&C D
;&&D E
dgvCustomers'' 
.'' 
AutoSizeColumnsMode'' 0
=''1 2+
DataGridViewAutoSizeColumnsMode''3 R
.''R S
Fill''S W
;''W X
dgvCustomers(( 
.(( 
Columns(( $
[(($ %
$num((% &
]((& '
.((' (
AutoSizeMode((( 4
=((5 6*
DataGridViewAutoSizeColumnMode((7 U
.((U V
AllCells((V ^
;((^ _
})) 
catch** 
(** 
	Exception** 
ex** 
)**  
{++ 

MessageBox,, 
.,, 
Show,, 
(,,  
$",,  "
{,," #
ex,,# %
.,,% &
Message,,& -
},,- .
",,. /
,,,/ 0
$str,,1 8
,,,8 9
MessageBoxButtons,,: K
.,,K L
OK,,L N
,,,N O
MessageBoxIcon,,P ^
.,,^ _
Error,,_ d
),,d e
;,,e f
}-- 
}.. 	
private00 
void00 !
frmViewCustomers_Load00 *
(00* +
object00+ 1
sender002 8
,008 9
	EventArgs00: C
e00D E
)00E F
{11 	
this22 
.22 
AcceptButton22 
=22 
	btnSearch22  )
;22) *
}33 	
private55 
void55 
btnClear_Click55 #
(55# $
object55$ *
sender55+ 1
,551 2
	EventArgs553 <
e55= >
)55> ?
{66 	
txtCustomerID77 
.77 
Clear77 
(77  
)77  !
;77! "
txtForename88 
.88 
Clear88 
(88 
)88 
;88  

txtSurname99 
.99 
Clear99 
(99 
)99 
;99 
txtEmail:: 
.:: 
Clear:: 
(:: 
):: 
;:: 
txtPhone;; 
.;; 
Clear;; 
(;; 
);; 
;;; 

txtEircode<< 
.<< 
Clear<< 
(<< 
)<< 
;<< 
	txtPhrase== 
.== 
Clear== 
(== 
)== 
;== 
}>> 	
private@@ 
void@@ 2
&SetToolCategoryToolStripMenuItem_Click@@ ;
(@@; <
object@@< B
sender@@C I
,@@I J
	EventArgs@@K T
e@@U V
)@@V W
{AA 	

NavigationBB 
.BB 
SetToolCategoryBB &
(BB& '
thisBB' +
)BB+ ,
;BB, -
}CC 	
privateDD 
voidDD 1
%UpdateToolRateToolStripMenuItem_ClickDD :
(DD: ;
objectDD; A
senderDDB H
,DDH I
	EventArgsDDJ S
eDDT U
)DDU V
{EE 	

NavigationFF 
.FF 

UpdateRateFF !
(FF! "
thisFF" &
)FF& '
;FF' (
}GG 	
privateHH 
voidHH &
AddToolStripMenuItem_ClickHH /
(HH/ 0
objectHH0 6
senderHH7 =
,HH= >
	EventArgsHH? H
eHHI J
)HHJ K
{II 	

NavigationJJ 
.JJ 
AddToolJJ 
(JJ 
thisJJ #
)JJ# $
;JJ$ %
}KK 	
privateLL 
voidLL .
"UpdateToolsToolStripMenuItem_ClickLL 7
(LL7 8
objectLL8 >
senderLL? E
,LLE F
	EventArgsLLG P
eLLQ R
)LLR S
{MM 	

NavigationNN 
.NN 

UpdateToolNN !
(NN! "
thisNN" &
)NN& '
;NN' (
}OO 	
privatePP 
voidPP .
"RemoveToolsToolStripMenuItem_ClickPP 7
(PP7 8
objectPP8 >
senderPP? E
,PPE F
	EventArgsPPG P
ePPQ R
)PPR S
{QQ 	

NavigationRR 
.RR 

RemoveToolRR !
(RR! "
thisRR" &
)RR& '
;RR' (
}SS 	
privateTT 
voidTT ,
 ViewToolsToolStripMenuItem_ClickTT 5
(TT5 6
objectTT6 <
senderTT= C
,TTC D
	EventArgsTTE N
eTTO P
)TTP Q
{UU 	

NavigationVV 
.VV 
	ViewToolsVV  
(VV  !
thisVV! %
)VV% &
;VV& '
}WW 	
privateXX 
voidXX .
"AddCustomerToolStripMenuItem_ClickXX 7
(XX7 8
objectXX8 >
senderXX? E
,XXE F
	EventArgsXXG P
eXXQ R
)XXR S
{YY 	

NavigationZZ 
.ZZ 
AddCustomerZZ "
(ZZ" #
thisZZ# '
)ZZ' (
;ZZ( )
}[[ 	
private\\ 
void\\ 1
%UpdateCustomerToolStripMenuItem_Click\\ :
(\\: ;
object\\; A
sender\\B H
,\\H I
	EventArgs\\J S
e\\T U
)\\U V
{]] 	

Navigation^^ 
.^^ 
UpdateCustomer^^ %
(^^% &
this^^& *
)^^* +
;^^+ ,
}__ 	
private`` 
void`` 0
$viewCustomersToolStripMenuItem_Click`` 9
(``9 :
object``: @
sender``A G
,``G H
	EventArgs``I R
e``S T
)``T U
{aa 	

Navigationbb 
.bb 
ViewCustomersbb $
(bb$ %
thisbb% )
)bb) *
;bb* +
}cc 	
privatedd 
voiddd +
RentToolToolStripMenuItem_Clickdd 4
(dd4 5
objectdd5 ;
senderdd< B
,ddB C
	EventArgsddD M
eddN O
)ddO P
{ee 	

Navigationff 
.ff 
	RentToolsff  
(ff  !
thisff! %
)ff% &
;ff& '
}gg 	
privatehh 
voidhh .
"ReturnToolsToolStripMenuItem_Clickhh 7
(hh7 8
objecthh8 >
senderhh? E
,hhE F
	EventArgshhG P
ehhQ R
)hhR S
{ii 	

Navigationjj 
.jj 
ReturnToolsjj "
(jj" #
thisjj# '
)jj' (
;jj( )
}kk 	
privatell 
voidll .
"ViewRentalsToolStripMenuItem_Clickll 7
(ll7 8
objectll8 >
senderll? E
,llE F
	EventArgsllG P
ellQ R
)llR S
{mm 	

Navigationnn 
.nn 
ViewRentalsnn "
(nn" #
thisnn# '
)nn' (
;nn( )
}oo 	
privatepp 
voidpp 8
,AnnualRevenueAnalysisToolStripMenuItem_Clickpp A
(ppA B
objectppB H
senderppI O
,ppO P
	EventArgsppQ Z
epp[ \
)pp\ ]
{qq 	

Navigationrr 
.rr 
RevenueAnalysisrr &
(rr& '
thisrr' +
)rr+ ,
;rr, -
}ss 	
privatett 
voidtt 9
-AnnualToolTypeAnalysisToolStripMenuItem_Clicktt B
(ttB C
objectttC I
senderttJ P
,ttP Q
	EventArgsttR [
ett\ ]
)tt] ^
{uu 	

Navigationvv 
.vv 
ToolTypeAnalysisvv '
(vv' (
thisvv( ,
)vv, -
;vv- .
}ww 	
privatexx 
voidxx +
MainMenuToolStripMenuItem_Clickxx 4
(xx4 5
objectxx5 ;
senderxx< B
,xxB C
	EventArgsxxD M
exxN O
)xxO P
{yy 	

Navigationzz 
.zz 
MainMenuzz 
(zz  
thiszz  $
)zz$ %
;zz% &
}{{ 	
}|| 
}}} °]
RC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\frmUpdateToolRate.cs
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
frmUpdateToolRate *
:+ ,
Form- 1
{ 
private 
RateService 
_rateService (
;( )
public 
frmUpdateToolRate  
(  !
)! "
{ 	
InitializeComponent 
(  
)  !
;! "
_rateService 
= 
new 
RateService *
(* +
)+ ,
;, -
} 	
private 
void "
FrmUpdateToolRate_Load +
(+ ,
object, 2
sender3 9
,9 :
	EventArgs; D
eE F
)F G
{ 	
LoadCategories 
( 
) 
; 
} 	
private 
void .
"CboCategories_SelectedIndexChanged 7
(7 8
object8 >
sender? E
,E F
	EventArgsG P
eQ R
)R S
{   	
if"" 
("" 
cboCategories"" 
."" 
SelectedIndex"" *
==""+ -
-"". /
$num""/ 0
)""0 1
{## 
	groupBox2$$ 
.$$ 
Visible$$ !
=$$" #
false$$$ )
;$$) *
}%% 
else&& 
{'' 
string(( 
categoryCode(( #
=(($ %
cboCategories((& 3
.((3 4
SelectedItem((4 @
.((@ A
ToString((A I
(((I J
)((J K
.((K L
	Substring((L U
(((U V
$num((V W
,((W X
$num((Y Z
)((Z [
;(([ \
Rate)) 
rate)) 
=)) 
_rateService)) (
.))( )!
GetRateByCategoryCode))) >
())> ?
categoryCode))? K
)))K L
;))L M"
txtCategoryDescription++ &
.++& '
Text++' +
=++, -
rate++. 2
.++2 3
categoryDesc++3 ?
;++? @
txtRate,, 
.,, 
Text,, 
=,, 
rate,, #
.,,# $
rate,,$ (
.,,( )
ToString,,) 1
(,,1 2
),,2 3
;,,3 4
	groupBox2.. 
... 
Visible.. !
=.." #
true..$ (
;..( )
}// 
}00 	
private22 
void22 
BtnConfirm_Click22 %
(22% &
object22& ,
sender22- 3
,223 4
	EventArgs225 >
e22? @
)22@ A
{33 	
try44 
{55 
Rate66 
rate66 
=66 
new66 
Rate66  $
{77 
categoryCode88  
=88! "
cboCategories88# 0
.880 1
SelectedItem881 =
.88= >
ToString88> F
(88F G
)88G H
.88H I
	Substring88I R
(88R S
$num88S T
,88T U
$num88V W
)88W X
,88X Y
categoryDesc99  
=99! ""
txtCategoryDescription99# 9
.999 :
Text99: >
,99> ?
rate:: 
=:: 
Convert:: "
.::" #
	ToDecimal::# ,
(::, -
txtRate::- 4
.::4 5
Text::5 9
)::9 :
};; 
;;; 
_rateService== 
.== 

UpdateRate== '
(==' (
rate==( ,
)==, -
;==- .

MessageBox?? 
.?? 
Show?? 
(??  
$str??  M
,??M N
$str??O \
,??\ ]
MessageBoxButtons??^ o
.??o p
OK??p r
,??r s
MessageBoxIcon	??t Ç
.
??Ç É
Information
??É é
)
??é è
;
??è ê
	groupBox2@@ 
.@@ 
Visible@@ !
=@@" #
false@@$ )
;@@) *
cboCategoriesAA 
.AA 
SelectedIndexAA +
=AA, -
-AA. /
$numAA/ 0
;AA0 1
cboCategoriesCC 
.CC 
ItemsCC #
.CC# $
ClearCC$ )
(CC) *
)CC* +
;CC+ ,
LoadCategoriesDD 
(DD 
)DD  
;DD  !
}FF 
catchGG 
(GG 
	ExceptionGG 
exGG 
)GG  
{HH 

MessageBoxII 
.II 
ShowII 
(II  
$"II  "
{II" #
exII# %
.II% &
MessageII& -
}II- .
"II. /
,II/ 0
$strII1 8
,II8 9
MessageBoxButtonsII: K
.IIK L
OKIIL N
,IIN O
MessageBoxIconIIP ^
.II^ _
ErrorII_ d
)IId e
;IIe f
}JJ 
}KK 	
privateMM 
voidMM 
LoadCategoriesMM #
(MM# $
)MM$ %
{NN 	
cboCategoriesOO 
.OO 
ItemsOO 
.OO  
AddOO  #
(OO# $
$strOO$ &
)OO& '
;OO' (
DataSetPP 

categoriesPP 
=PP  
_rateServicePP! -
.PP- .
GetAllCategoriesPP. >
(PP> ?
)PP? @
;PP@ A
foreachRR 
(RR 
DataRowRR 
rowRR  
inRR! #

categoriesRR$ .
.RR. /
TablesRR/ 5
[RR5 6
$numRR6 7
]RR7 8
.RR8 9
RowsRR9 =
)RR= >
{SS 
stringTT 
categoryTT 
=TT  !
rowTT" %
[TT% &
$strTT& 4
]TT4 5
+TT6 7
$strTT8 =
+TT> ?
rowTT@ C
[TTC D
$strTTD R
]TTR S
;TTS T
cboCategoriesUU 
.UU 
ItemsUU #
.UU# $
AddUU$ '
(UU' (
categoryUU( 0
)UU0 1
;UU1 2
}VV 
}WW 	
privateYY 
voidYY 2
&SetToolCategoryToolStripMenuItem_ClickYY ;
(YY; <
objectYY< B
senderYYC I
,YYI J
	EventArgsYYK T
eYYU V
)YYV W
{ZZ 	

Navigation[[ 
.[[ 
SetToolCategory[[ &
([[& '
this[[' +
)[[+ ,
;[[, -
}\\ 	
private]] 
void]] 1
%UpdateToolRateToolStripMenuItem_Click]] :
(]]: ;
object]]; A
sender]]B H
,]]H I
	EventArgs]]J S
e]]T U
)]]U V
{^^ 	

Navigation__ 
.__ 

UpdateRate__ !
(__! "
this__" &
)__& '
;__' (
}`` 	
privateaa 
voidaa &
AddToolStripMenuItem_Clickaa /
(aa/ 0
objectaa0 6
senderaa7 =
,aa= >
	EventArgsaa? H
eaaI J
)aaJ K
{bb 	

Navigationcc 
.cc 
AddToolcc 
(cc 
thiscc #
)cc# $
;cc$ %
}dd 	
privateee 
voidee .
"UpdateToolsToolStripMenuItem_Clickee 7
(ee7 8
objectee8 >
senderee? E
,eeE F
	EventArgseeG P
eeeQ R
)eeR S
{ff 	

Navigationgg 
.gg 

UpdateToolgg !
(gg! "
thisgg" &
)gg& '
;gg' (
}hh 	
privateii 
voidii .
"RemoveToolsToolStripMenuItem_Clickii 7
(ii7 8
objectii8 >
senderii? E
,iiE F
	EventArgsiiG P
eiiQ R
)iiR S
{jj 	

Navigationkk 
.kk 

RemoveToolkk !
(kk! "
thiskk" &
)kk& '
;kk' (
}ll 	
privatemm 
voidmm ,
 ViewToolsToolStripMenuItem_Clickmm 5
(mm5 6
objectmm6 <
sendermm= C
,mmC D
	EventArgsmmE N
emmO P
)mmP Q
{nn 	

Navigationoo 
.oo 
	ViewToolsoo  
(oo  !
thisoo! %
)oo% &
;oo& '
}pp 	
privateqq 
voidqq .
"AddCustomerToolStripMenuItem_Clickqq 7
(qq7 8
objectqq8 >
senderqq? E
,qqE F
	EventArgsqqG P
eqqQ R
)qqR S
{rr 	

Navigationss 
.ss 
AddCustomerss "
(ss" #
thisss# '
)ss' (
;ss( )
}tt 	
privateuu 
voiduu 1
%UpdateCustomerToolStripMenuItem_Clickuu :
(uu: ;
objectuu; A
senderuuB H
,uuH I
	EventArgsuuJ S
euuT U
)uuU V
{vv 	

Navigationww 
.ww 
UpdateCustomerww %
(ww% &
thisww& *
)ww* +
;ww+ ,
}xx 	
privateyy 
voidyy 0
$viewCustomersToolStripMenuItem_Clickyy 9
(yy9 :
objectyy: @
senderyyA G
,yyG H
	EventArgsyyI R
eyyS T
)yyT U
{zz 	

Navigation{{ 
.{{ 
ViewCustomers{{ $
({{$ %
this{{% )
){{) *
;{{* +
}|| 	
private}} 
void}} +
RentToolToolStripMenuItem_Click}} 4
(}}4 5
object}}5 ;
sender}}< B
,}}B C
	EventArgs}}D M
e}}N O
)}}O P
{~~ 	

Navigation 
. 
	RentTools  
(  !
this! %
)% &
;& '
}
ÄÄ 	
private
ÅÅ 
void
ÅÅ 0
"ReturnToolsToolStripMenuItem_Click
ÅÅ 7
(
ÅÅ7 8
object
ÅÅ8 >
sender
ÅÅ? E
,
ÅÅE F
	EventArgs
ÅÅG P
e
ÅÅQ R
)
ÅÅR S
{
ÇÇ 	

Navigation
ÉÉ 
.
ÉÉ 
ReturnTools
ÉÉ "
(
ÉÉ" #
this
ÉÉ# '
)
ÉÉ' (
;
ÉÉ( )
}
ÑÑ 	
private
ÖÖ 
void
ÖÖ 0
"ViewRentalsToolStripMenuItem_Click
ÖÖ 7
(
ÖÖ7 8
object
ÖÖ8 >
sender
ÖÖ? E
,
ÖÖE F
	EventArgs
ÖÖG P
e
ÖÖQ R
)
ÖÖR S
{
ÜÜ 	

Navigation
áá 
.
áá 
ViewRentals
áá "
(
áá" #
this
áá# '
)
áá' (
;
áá( )
}
àà 	
private
ââ 
void
ââ :
,AnnualRevenueAnalysisToolStripMenuItem_Click
ââ A
(
ââA B
object
ââB H
sender
ââI O
,
ââO P
	EventArgs
ââQ Z
e
ââ[ \
)
ââ\ ]
{
ää 	

Navigation
ãã 
.
ãã 
RevenueAnalysis
ãã &
(
ãã& '
this
ãã' +
)
ãã+ ,
;
ãã, -
}
åå 	
private
çç 
void
çç ;
-AnnualToolTypeAnalysisToolStripMenuItem_Click
çç B
(
ççB C
object
ççC I
sender
ççJ P
,
ççP Q
	EventArgs
ççR [
e
çç\ ]
)
çç] ^
{
éé 	

Navigation
èè 
.
èè 
ToolTypeAnalysis
èè '
(
èè' (
this
èè( ,
)
èè, -
;
èè- .
}
êê 	
private
ëë 
void
ëë -
MainMenuToolStripMenuItem_Click
ëë 4
(
ëë4 5
object
ëë5 ;
sender
ëë< B
,
ëëB C
	EventArgs
ëëD M
e
ëëN O
)
ëëO P
{
íí 	

Navigation
ìì 
.
ìì 
MainMenu
ìì 
(
ìì  
this
ìì  $
)
ìì$ %
;
ìì% &
}
îî 	
}
ïï 
}ññ Ùü
NC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\frmUpdateTool.cs
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
:' (
Form) -
{		 
private

 
readonly

 
ToolService

 $
_toolService

% 1
;

1 2
private 
readonly 
RateService $
_rateService% 1
;1 2
public 
frmUpdateTool 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
_toolService 
= 
new 
ToolService *
(* +
)+ ,
;, -
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
ÜÜ 	
private
ââ 
void
ââ 4
&SetToolCategoryToolStripMenuItem_Click
ââ ;
(
ââ; <
object
ââ< B
sender
ââC I
,
ââI J
	EventArgs
ââK T
e
ââU V
)
ââV W
{
ää 	

Navigation
ãã 
.
ãã 
SetToolCategory
ãã &
(
ãã& '
this
ãã' +
)
ãã+ ,
;
ãã, -
}
åå 	
private
çç 
void
çç 3
%UpdateToolRateToolStripMenuItem_Click
çç :
(
çç: ;
object
çç; A
sender
ççB H
,
ççH I
	EventArgs
ççJ S
e
ççT U
)
ççU V
{
éé 	

Navigation
èè 
.
èè 

UpdateRate
èè !
(
èè! "
this
èè" &
)
èè& '
;
èè' (
}
êê 	
private
ëë 
void
ëë (
AddToolStripMenuItem_Click
ëë /
(
ëë/ 0
object
ëë0 6
sender
ëë7 =
,
ëë= >
	EventArgs
ëë? H
e
ëëI J
)
ëëJ K
{
íí 	

Navigation
ìì 
.
ìì 
AddTool
ìì 
(
ìì 
this
ìì #
)
ìì# $
;
ìì$ %
}
îî 	
private
ïï 
void
ïï 0
"UpdateToolsToolStripMenuItem_Click
ïï 7
(
ïï7 8
object
ïï8 >
sender
ïï? E
,
ïïE F
	EventArgs
ïïG P
e
ïïQ R
)
ïïR S
{
ññ 	

Navigation
óó 
.
óó 

UpdateTool
óó !
(
óó! "
this
óó" &
)
óó& '
;
óó' (
}
òò 	
private
ôô 
void
ôô 0
"RemoveToolsToolStripMenuItem_Click
ôô 7
(
ôô7 8
object
ôô8 >
sender
ôô? E
,
ôôE F
	EventArgs
ôôG P
e
ôôQ R
)
ôôR S
{
öö 	

Navigation
õõ 
.
õõ 

RemoveTool
õõ !
(
õõ! "
this
õõ" &
)
õõ& '
;
õõ' (
}
úú 	
private
ùù 
void
ùù .
 ViewToolsToolStripMenuItem_Click
ùù 5
(
ùù5 6
object
ùù6 <
sender
ùù= C
,
ùùC D
	EventArgs
ùùE N
e
ùùO P
)
ùùP Q
{
ûû 	

Navigation
üü 
.
üü 
	ViewTools
üü  
(
üü  !
this
üü! %
)
üü% &
;
üü& '
}
†† 	
private
°° 
void
°° 0
"AddCustomerToolStripMenuItem_Click
°° 7
(
°°7 8
object
°°8 >
sender
°°? E
,
°°E F
	EventArgs
°°G P
e
°°Q R
)
°°R S
{
¢¢ 	

Navigation
££ 
.
££ 
AddCustomer
££ "
(
££" #
this
££# '
)
££' (
;
££( )
}
§§ 	
private
•• 
void
•• 3
%UpdateCustomerToolStripMenuItem_Click
•• :
(
••: ;
object
••; A
sender
••B H
,
••H I
	EventArgs
••J S
e
••T U
)
••U V
{
¶¶ 	

Navigation
ßß 
.
ßß 
UpdateCustomer
ßß %
(
ßß% &
this
ßß& *
)
ßß* +
;
ßß+ ,
}
®® 	
private
©© 
void
©© 2
$viewCustomersToolStripMenuItem_Click
©© 9
(
©©9 :
object
©©: @
sender
©©A G
,
©©G H
	EventArgs
©©I R
e
©©S T
)
©©T U
{
™™ 	

Navigation
´´ 
.
´´ 
ViewCustomers
´´ $
(
´´$ %
this
´´% )
)
´´) *
;
´´* +
}
¨¨ 	
private
≠≠ 
void
≠≠ -
RentToolToolStripMenuItem_Click
≠≠ 4
(
≠≠4 5
object
≠≠5 ;
sender
≠≠< B
,
≠≠B C
	EventArgs
≠≠D M
e
≠≠N O
)
≠≠O P
{
ÆÆ 	

Navigation
ØØ 
.
ØØ 
	RentTools
ØØ  
(
ØØ  !
this
ØØ! %
)
ØØ% &
;
ØØ& '
}
∞∞ 	
private
±± 
void
±± 0
"ReturnToolsToolStripMenuItem_Click
±± 7
(
±±7 8
object
±±8 >
sender
±±? E
,
±±E F
	EventArgs
±±G P
e
±±Q R
)
±±R S
{
≤≤ 	

Navigation
≥≥ 
.
≥≥ 
ReturnTools
≥≥ "
(
≥≥" #
this
≥≥# '
)
≥≥' (
;
≥≥( )
}
¥¥ 	
private
µµ 
void
µµ 0
"ViewRentalsToolStripMenuItem_Click
µµ 7
(
µµ7 8
object
µµ8 >
sender
µµ? E
,
µµE F
	EventArgs
µµG P
e
µµQ R
)
µµR S
{
∂∂ 	

Navigation
∑∑ 
.
∑∑ 
ViewRentals
∑∑ "
(
∑∑" #
this
∑∑# '
)
∑∑' (
;
∑∑( )
}
∏∏ 	
private
ππ 
void
ππ :
,AnnualRevenueAnalysisToolStripMenuItem_Click
ππ A
(
ππA B
object
ππB H
sender
ππI O
,
ππO P
	EventArgs
ππQ Z
e
ππ[ \
)
ππ\ ]
{
∫∫ 	

Navigation
ªª 
.
ªª 
RevenueAnalysis
ªª &
(
ªª& '
this
ªª' +
)
ªª+ ,
;
ªª, -
}
ºº 	
private
ΩΩ 
void
ΩΩ ;
-AnnualToolTypeAnalysisToolStripMenuItem_Click
ΩΩ B
(
ΩΩB C
object
ΩΩC I
sender
ΩΩJ P
,
ΩΩP Q
	EventArgs
ΩΩR [
e
ΩΩ\ ]
)
ΩΩ] ^
{
ææ 	

Navigation
øø 
.
øø 
ToolTypeAnalysis
øø '
(
øø' (
this
øø( ,
)
øø, -
;
øø- .
}
¿¿ 	
private
¡¡ 
void
¡¡ -
MainMenuToolStripMenuItem_Click
¡¡ 4
(
¡¡4 5
object
¡¡5 ;
sender
¡¡< B
,
¡¡B C
	EventArgs
¡¡D M
e
¡¡N O
)
¡¡O P
{
¬¬ 	

Navigation
√√ 
.
√√ 
MainMenu
√√ 
(
√√  
this
√√  $
)
√√$ %
;
√√% &
}
ƒƒ 	
}
≈≈ 
}∆∆ Œ}
RC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\frmUpdateCustomer.cs
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
frmUpdateCustomer *
:+ ,
Form- 1
{ 
private 
CustomerService 
_customerService  0
;0 1
public 
frmUpdateCustomer  
(  !
)! "
{ 	
InitializeComponent 
(  
)  !
;! "
_customerService 
= 
new "
CustomerService# 2
(2 3
)3 4
;4 5
} 	
private 
void 
btnSearch_Click $
($ %
object% +
sender, 2
,2 3
	EventArgs4 =
e> ?
)? @
{ 	
try 
{ 
string 

customerID !
=" #
txtCustomerID$ 1
.1 2
Text2 6
;6 7
string 
forename 
=  !
txtForename" -
.- .
Text. 2
;2 3
string 
surname 
=  

txtSurname! +
.+ ,
Text, 0
;0 1
string 
email 
= 
txtEmail '
.' (
Text( ,
;, -
string   
phone   
=   
txtPhone   '
.  ' (
Text  ( ,
;  , -
string!! 
eircode!! 
=!!  

txtEircode!!! +
.!!+ ,
Text!!, 0
;!!0 1
string"" 
phrase"" 
="" 
	txtPhrase""  )
."") *
Text""* .
;"". /
DataSet$$ 
results$$ 
=$$  !
_customerService$$" 2
.$$2 3 
GetFilteredCustomers$$3 G
($$G H

customerID$$H R
,$$R S
forename$$T \
,$$\ ]
surname$$^ e
,$$e f
email$$g l
,$$l m
phone$$n s
,$$s t
eircode$$u |
,$$| }
phrase	$$~ Ñ
)
$$Ñ Ö
;
$$Ö Ü
dgvCustomers&& 
.&& 

DataSource&& '
=&&( )
results&&* 1
.&&1 2
Tables&&2 8
[&&8 9
$str&&9 C
]&&C D
;&&D E
dgvCustomers'' 
.'' 
AutoSizeColumnsMode'' 0
=''1 2+
DataGridViewAutoSizeColumnsMode''3 R
.''R S
Fill''S W
;''W X
dgvCustomers(( 
.(( 
Columns(( $
[(($ %
$num((% &
]((& '
.((' (
AutoSizeMode((( 4
=((5 6*
DataGridViewAutoSizeColumnMode((7 U
.((U V
AllCells((V ^
;((^ _
})) 
catch** 
(** 
	Exception** 
ex** 
)**  
{++ 

MessageBox,, 
.,, 
Show,, 
(,,  
$",,  "
{,," #
ex,,# %
.,,% &
Message,,& -
},,- .
",,. /
,,,/ 0
$str,,1 8
,,,8 9
MessageBoxButtons,,: K
.,,K L
OK,,L N
,,,N O
MessageBoxIcon,,P ^
.,,^ _
Error,,_ d
),,d e
;,,e f
}-- 
}.. 	
private00 
void00 
btnClear_Click00 #
(00# $
object00$ *
sender00+ 1
,001 2
	EventArgs003 <
e00= >
)00> ?
{11 	
txtCustomerID22 
.22 
Clear22 
(22  
)22  !
;22! "
txtForename33 
.33 
Clear33 
(33 
)33 
;33  

txtSurname44 
.44 
Clear44 
(44 
)44 
;44 
txtEmail55 
.55 
Clear55 
(55 
)55 
;55 
txtPhone66 
.66 
Clear66 
(66 
)66 
;66 

txtEircode77 
.77 
Clear77 
(77 
)77 
;77 
	txtPhrase88 
.88 
Clear88 
(88 
)88 
;88 
}99 	
private;; 
void;; 
btnUpdate_Click;; $
(;;$ %
object;;% +
sender;;, 2
,;;2 3
	EventArgs;;4 =
e;;> ?
);;? @
{<< 	
try== 
{>> 
Customer?? 
customer?? !
=??" #
new??$ '
RegularCustomer??( 7
(??7 8
)??8 9
{??: ;

customerID@@ 
=@@  
Convert@@! (
.@@( )
ToInt32@@) 0
(@@0 1
txtUpdCustomerID@@1 A
.@@A B
Text@@B F
)@@F G
,@@G H
forenameAA 
=AA 
txtUpdForenameAA -
.AA- .
TextAA. 2
,AA2 3
surnameBB 
=BB 
txtUpdSurnameBB +
.BB+ ,
TextBB, 0
,BB0 1
emailCC 
=CC 
txtUpdEmailCC '
.CC' (
TextCC( ,
,CC, -
phoneDD 
=DD 
txtUpdPhoneDD '
.DD' (
TextDD( ,
,DD, -
eircodeEE 
=EE 
txtUpdEircodeEE +
.EE+ ,
TextEE, 0
}FF 
;FF 
_customerServiceHH  
.HH  !
UpdateCustomerHH! /
(HH/ 0
customerHH0 8
)HH8 9
;HH9 :

MessageBoxJJ 
.JJ 
ShowJJ 
(JJ  
$strJJ  I
,JJI J
$strJJK X
,JJX Y
MessageBoxButtonsJJZ k
.JJk l
OKJJl n
,JJn o
MessageBoxIconJJp ~
.JJ~ 
Information	JJ ä
)
JJä ã
;
JJã å
txtUpdCustomerIDKK  
.KK  !
ClearKK! &
(KK& '
)KK' (
;KK( )
txtUpdForenameLL 
.LL 
ClearLL $
(LL$ %
)LL% &
;LL& '
txtUpdSurnameMM 
.MM 
ClearMM #
(MM# $
)MM$ %
;MM% &
txtUpdEmailNN 
.NN 
ClearNN !
(NN! "
)NN" #
;NN# $
txtUpdPhoneOO 
.OO 
ClearOO !
(OO! "
)OO" #
;OO# $
txtUpdEircodePP 
.PP 
ClearPP #
(PP# $
)PP$ %
;PP% &
}QQ 
catchRR 
(RR 
	ExceptionRR 
exRR 
)RR  
{SS 

MessageBoxUU 
.UU 
ShowUU 
(UU  
$"UU  "
{UU" #
exUU# %
.UU% &
MessageUU& -
}UU- .
"UU. /
,UU/ 0
$strUU1 8
,UU8 9
MessageBoxButtonsUU: K
.UUK L
OKUUL N
,UUN O
MessageBoxIconUUP ^
.UU^ _
ErrorUU_ d
)UUd e
;UUe f
}VV 
}WW 	
privateYY 
voidYY "
dgvCustomers_CellClickYY +
(YY+ ,
objectYY, 2
senderYY3 9
,YY9 :%
DataGridViewCellEventArgsYY; T
eYYU V
)YYV W
{ZZ 	
txtUpdCustomerID[[ 
.[[ 
Text[[ !
=[[" #
dgvCustomers[[$ 0
.[[0 1
Rows[[1 5
[[[5 6
dgvCustomers[[6 B
.[[B C

CurrentRow[[C M
.[[M N
Index[[N S
][[S T
.[[T U
Cells[[U Z
[[[Z [
$num[[[ \
][[\ ]
.[[] ^
Value[[^ c
.[[c d
ToString[[d l
([[l m
)[[m n
;[[n o
txtUpdForename\\ 
.\\ 
Text\\ 
=\\  !
dgvCustomers\\" .
.\\. /
Rows\\/ 3
[\\3 4
dgvCustomers\\4 @
.\\@ A

CurrentRow\\A K
.\\K L
Index\\L Q
]\\Q R
.\\R S
Cells\\S X
[\\X Y
$num\\Y Z
]\\Z [
.\\[ \
Value\\\ a
.\\a b
ToString\\b j
(\\j k
)\\k l
;\\l m
txtUpdSurname]] 
.]] 
Text]] 
=]]  
dgvCustomers]]! -
.]]- .
Rows]]. 2
[]]2 3
dgvCustomers]]3 ?
.]]? @

CurrentRow]]@ J
.]]J K
Index]]K P
]]]P Q
.]]Q R
Cells]]R W
[]]W X
$num]]X Y
]]]Y Z
.]]Z [
Value]][ `
.]]` a
ToString]]a i
(]]i j
)]]j k
;]]k l
txtUpdEmail^^ 
.^^ 
Text^^ 
=^^ 
dgvCustomers^^ +
.^^+ ,
Rows^^, 0
[^^0 1
dgvCustomers^^1 =
.^^= >

CurrentRow^^> H
.^^H I
Index^^I N
]^^N O
.^^O P
Cells^^P U
[^^U V
$num^^V W
]^^W X
.^^X Y
Value^^Y ^
.^^^ _
ToString^^_ g
(^^g h
)^^h i
;^^i j
txtUpdPhone__ 
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
;__i j
txtUpdEircode`` 
.`` 
Text`` 
=``  
dgvCustomers``! -
.``- .
Rows``. 2
[``2 3
dgvCustomers``3 ?
.``? @

CurrentRow``@ J
.``J K
Index``K P
]``P Q
.``Q R
Cells``R W
[``W X
$num``X Y
]``Y Z
.``Z [
Value``[ `
.``` a
ToString``a i
(``i j
)``j k
;``k l
}aa 	
privatecc 
voidcc 2
&SetToolCategoryToolStripMenuItem_Clickcc ;
(cc; <
objectcc< B
senderccC I
,ccI J
	EventArgsccK T
eccU V
)ccV W
{dd 	

Navigationee 
.ee 
SetToolCategoryee &
(ee& '
thisee' +
)ee+ ,
;ee, -
}ff 	
privategg 
voidgg 1
%UpdateToolRateToolStripMenuItem_Clickgg :
(gg: ;
objectgg; A
senderggB H
,ggH I
	EventArgsggJ S
eggT U
)ggU V
{hh 	

Navigationii 
.ii 

UpdateRateii !
(ii! "
thisii" &
)ii& '
;ii' (
}jj 	
privatekk 
voidkk &
AddToolStripMenuItem_Clickkk /
(kk/ 0
objectkk0 6
senderkk7 =
,kk= >
	EventArgskk? H
ekkI J
)kkJ K
{ll 	

Navigationmm 
.mm 
AddToolmm 
(mm 
thismm #
)mm# $
;mm$ %
}nn 	
privateoo 
voidoo .
"UpdateToolsToolStripMenuItem_Clickoo 7
(oo7 8
objectoo8 >
senderoo? E
,ooE F
	EventArgsooG P
eooQ R
)ooR S
{pp 	

Navigationqq 
.qq 

UpdateToolqq !
(qq! "
thisqq" &
)qq& '
;qq' (
}rr 	
privatess 
voidss .
"RemoveToolsToolStripMenuItem_Clickss 7
(ss7 8
objectss8 >
senderss? E
,ssE F
	EventArgsssG P
essQ R
)ssR S
{tt 	

Navigationuu 
.uu 

RemoveTooluu !
(uu! "
thisuu" &
)uu& '
;uu' (
}vv 	
privateww 
voidww ,
 ViewToolsToolStripMenuItem_Clickww 5
(ww5 6
objectww6 <
senderww= C
,wwC D
	EventArgswwE N
ewwO P
)wwP Q
{xx 	

Navigationyy 
.yy 
	ViewToolsyy  
(yy  !
thisyy! %
)yy% &
;yy& '
}zz 	
private{{ 
void{{ .
"AddCustomerToolStripMenuItem_Click{{ 7
({{7 8
object{{8 >
sender{{? E
,{{E F
	EventArgs{{G P
e{{Q R
){{R S
{|| 	

Navigation}} 
.}} 
AddCustomer}} "
(}}" #
this}}# '
)}}' (
;}}( )
}~~ 	
private 
void 1
%UpdateCustomerToolStripMenuItem_Click :
(: ;
object; A
senderB H
,H I
	EventArgsJ S
eT U
)U V
{
ÄÄ 	

Navigation
ÅÅ 
.
ÅÅ 
UpdateCustomer
ÅÅ %
(
ÅÅ% &
this
ÅÅ& *
)
ÅÅ* +
;
ÅÅ+ ,
}
ÇÇ 	
private
ÉÉ 
void
ÉÉ 2
$viewCustomersToolStripMenuItem_Click
ÉÉ 9
(
ÉÉ9 :
object
ÉÉ: @
sender
ÉÉA G
,
ÉÉG H
	EventArgs
ÉÉI R
e
ÉÉS T
)
ÉÉT U
{
ÑÑ 	

Navigation
ÖÖ 
.
ÖÖ 
ViewCustomers
ÖÖ $
(
ÖÖ$ %
this
ÖÖ% )
)
ÖÖ) *
;
ÖÖ* +
}
ÜÜ 	
private
áá 
void
áá -
RentToolToolStripMenuItem_Click
áá 4
(
áá4 5
object
áá5 ;
sender
áá< B
,
ááB C
	EventArgs
ááD M
e
ááN O
)
ááO P
{
àà 	

Navigation
ââ 
.
ââ 
	RentTools
ââ  
(
ââ  !
this
ââ! %
)
ââ% &
;
ââ& '
}
ää 	
private
ãã 
void
ãã 0
"ReturnToolsToolStripMenuItem_Click
ãã 7
(
ãã7 8
object
ãã8 >
sender
ãã? E
,
ããE F
	EventArgs
ããG P
e
ããQ R
)
ããR S
{
åå 	

Navigation
çç 
.
çç 
ReturnTools
çç "
(
çç" #
this
çç# '
)
çç' (
;
çç( )
}
éé 	
private
èè 
void
èè 0
"ViewRentalsToolStripMenuItem_Click
èè 7
(
èè7 8
object
èè8 >
sender
èè? E
,
èèE F
	EventArgs
èèG P
e
èèQ R
)
èèR S
{
êê 	

Navigation
ëë 
.
ëë 
ViewRentals
ëë "
(
ëë" #
this
ëë# '
)
ëë' (
;
ëë( )
}
íí 	
private
ìì 
void
ìì :
,AnnualRevenueAnalysisToolStripMenuItem_Click
ìì A
(
ììA B
object
ììB H
sender
ììI O
,
ììO P
	EventArgs
ììQ Z
e
ìì[ \
)
ìì\ ]
{
îî 	

Navigation
ïï 
.
ïï 
RevenueAnalysis
ïï &
(
ïï& '
this
ïï' +
)
ïï+ ,
;
ïï, -
}
ññ 	
private
óó 
void
óó ;
-AnnualToolTypeAnalysisToolStripMenuItem_Click
óó B
(
óóB C
object
óóC I
sender
óóJ P
,
óóP Q
	EventArgs
óóR [
e
óó\ ]
)
óó] ^
{
òò 	

Navigation
ôô 
.
ôô 
ToolTypeAnalysis
ôô '
(
ôô' (
this
ôô( ,
)
ôô, -
;
ôô- .
}
öö 	
private
õõ 
void
õõ -
MainMenuToolStripMenuItem_Click
õõ 4
(
õõ4 5
object
õõ5 ;
sender
õõ< B
,
õõB C
	EventArgs
õõD M
e
õõN O
)
õõO P
{
úú 	

Navigation
ùù 
.
ùù 
MainMenu
ùù 
(
ùù  
this
ùù  $
)
ùù$ %
;
ùù% &
}
ûû 	
}
üü 
}†† ™A
SC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\frmSetToolCategory.cs
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
frmSetToolCategory +
:, -
Form. 2
{ 
private 
RateService 
_rateService (
;( )
public 
frmSetToolCategory !
(! "
)" #
{ 	
InitializeComponent 
(  
)  !
;! "
_rateService 
= 
new 
RateService *
(* +
)+ ,
;, -
} 	
private 
void 
btnConfirm_Click %
(% &
object& ,
sender- 3
,3 4
	EventArgs5 >
e? @
)@ A
{ 	
try 
{ 
Rate 
rate 
= 
new 
Rate  $
{ 
categoryCode    
=  ! "
txtCategoryCode  # 2
.  2 3
Text  3 7
,  7 8
categoryDesc!!  
=!!! "
txtCategoryDesc!!# 2
.!!2 3
Text!!3 7
,!!7 8
rate"" 
="" 
decimal"" "
.""" #
Parse""# (
(""( )
txtRate"") 0
.""0 1
Text""1 5
)""5 6
}## 
;## 
_rateService%% 
.%% 
AddRate%% $
(%%$ %
rate%%% )
)%%) *
;%%* +

MessageBox&& 
.&& 
Show&& 
(&&  
$str&&  :
,&&: ;
$str&&< E
,&&E F
MessageBoxButtons&&G X
.&&X Y
OK&&Y [
,&&[ \
MessageBoxIcon'' "
.''" #
Information''# .
)''. /
;''/ 0
txtCategoryCode)) 
.))  
Clear))  %
())% &
)))& '
;))' (
txtCategoryDesc** 
.**  
Clear**  %
(**% &
)**& '
;**' (
txtRate++ 
.++ 
Clear++ 
(++ 
)++ 
;++  
},, 
catch-- 
(-- 
	Exception-- 
ex-- 
)--  
{.. 

MessageBox// 
.// 
Show// 
(//  
$"//  "
{//" #
ex//# %
.//% &
Message//& -
}//- .
"//. /
,/// 0
$str//1 8
,//8 9
MessageBoxButtons//: K
.//K L
OK//L N
,//N O
MessageBoxIcon//P ^
.//^ _
Error//_ d
)//d e
;//e f
}00 
}11 	
private33 
void33 2
&SetToolCategoryToolStripMenuItem_Click33 ;
(33; <
object33< B
sender33C I
,33I J
	EventArgs33K T
e33U V
)33V W
{44 	

Navigation55 
.55 
SetToolCategory55 &
(55& '
this55' +
)55+ ,
;55, -
}66 	
private77 
void77 1
%UpdateToolRateToolStripMenuItem_Click77 :
(77: ;
object77; A
sender77B H
,77H I
	EventArgs77J S
e77T U
)77U V
{88 	

Navigation99 
.99 

UpdateRate99 !
(99! "
this99" &
)99& '
;99' (
}:: 	
private;; 
void;; &
AddToolStripMenuItem_Click;; /
(;;/ 0
object;;0 6
sender;;7 =
,;;= >
	EventArgs;;? H
e;;I J
);;J K
{<< 	

Navigation== 
.== 
AddTool== 
(== 
this== #
)==# $
;==$ %
}>> 	
private?? 
void?? .
"UpdateToolsToolStripMenuItem_Click?? 7
(??7 8
object??8 >
sender??? E
,??E F
	EventArgs??G P
e??Q R
)??R S
{@@ 	

NavigationAA 
.AA 

UpdateToolAA !
(AA! "
thisAA" &
)AA& '
;AA' (
}BB 	
privateCC 
voidCC .
"RemoveToolsToolStripMenuItem_ClickCC 7
(CC7 8
objectCC8 >
senderCC? E
,CCE F
	EventArgsCCG P
eCCQ R
)CCR S
{DD 	

NavigationEE 
.EE 

RemoveToolEE !
(EE! "
thisEE" &
)EE& '
;EE' (
}FF 	
privateGG 
voidGG ,
 ViewToolsToolStripMenuItem_ClickGG 5
(GG5 6
objectGG6 <
senderGG= C
,GGC D
	EventArgsGGE N
eGGO P
)GGP Q
{HH 	

NavigationII 
.II 
	ViewToolsII  
(II  !
thisII! %
)II% &
;II& '
}JJ 	
privateKK 
voidKK .
"AddCustomerToolStripMenuItem_ClickKK 7
(KK7 8
objectKK8 >
senderKK? E
,KKE F
	EventArgsKKG P
eKKQ R
)KKR S
{LL 	

NavigationMM 
.MM 
AddCustomerMM "
(MM" #
thisMM# '
)MM' (
;MM( )
}NN 	
privateOO 
voidOO 1
%UpdateCustomerToolStripMenuItem_ClickOO :
(OO: ;
objectOO; A
senderOOB H
,OOH I
	EventArgsOOJ S
eOOT U
)OOU V
{PP 	

NavigationQQ 
.QQ 
UpdateCustomerQQ %
(QQ% &
thisQQ& *
)QQ* +
;QQ+ ,
}RR 	
privateSS 
voidSS 0
$viewCustomersToolStripMenuItem_ClickSS 9
(SS9 :
objectSS: @
senderSSA G
,SSG H
	EventArgsSSI R
eSSS T
)SST U
{TT 	

NavigationUU 
.UU 
ViewCustomersUU $
(UU$ %
thisUU% )
)UU) *
;UU* +
}VV 	
privateWW 
voidWW +
RentToolToolStripMenuItem_ClickWW 4
(WW4 5
objectWW5 ;
senderWW< B
,WWB C
	EventArgsWWD M
eWWN O
)WWO P
{XX 	

NavigationYY 
.YY 
	RentToolsYY  
(YY  !
thisYY! %
)YY% &
;YY& '
}ZZ 	
private[[ 
void[[ .
"ReturnToolsToolStripMenuItem_Click[[ 7
([[7 8
object[[8 >
sender[[? E
,[[E F
	EventArgs[[G P
e[[Q R
)[[R S
{\\ 	

Navigation]] 
.]] 
ReturnTools]] "
(]]" #
this]]# '
)]]' (
;]]( )
}^^ 	
private__ 
void__ .
"ViewRentalsToolStripMenuItem_Click__ 7
(__7 8
object__8 >
sender__? E
,__E F
	EventArgs__G P
e__Q R
)__R S
{`` 	

Navigationaa 
.aa 
ViewRentalsaa "
(aa" #
thisaa# '
)aa' (
;aa( )
}bb 	
privatecc 
voidcc 8
,AnnualRevenueAnalysisToolStripMenuItem_Clickcc A
(ccA B
objectccB H
senderccI O
,ccO P
	EventArgsccQ Z
ecc[ \
)cc\ ]
{dd 	

Navigationee 
.ee 
RevenueAnalysisee &
(ee& '
thisee' +
)ee+ ,
;ee, -
}ff 	
privategg 
voidgg 9
-AnnualToolTypeAnalysisToolStripMenuItem_Clickgg B
(ggB C
objectggC I
senderggJ P
,ggP Q
	EventArgsggR [
egg\ ]
)gg] ^
{hh 	

Navigationii 
.ii 
ToolTypeAnalysisii '
(ii' (
thisii( ,
)ii, -
;ii- .
}jj 	
privatekk 
voidkk +
MainMenuToolStripMenuItem_Clickkk 4
(kk4 5
objectkk5 ;
senderkk< B
,kkB C
	EventArgskkD M
ekkN O
)kkO P
{ll 	

Navigationmm 
.mm 
MainMenumm 
(mm  
thismm  $
)mm$ %
;mm% &
}nn 	
}oo 
}pp €k
OC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\frmReturnTools.cs
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
frmReturnTools '
:( )
Form* .
{ 
private 
RentalService 
_rentalService ,
;, -
public 
frmReturnTools 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
_rentalService 
= 
new  
RentalService! .
(. /
)/ 0
;0 1
} 	
private 
void 
btnConfirm_Click %
(% &
object& ,
sender- 3
,3 4
	EventArgs5 >
e? @
)@ A
{ 	
if 
( 
int 
. 
TryParse 
( 
txtRentalID (
.( )
Text) -
,- .
out/ 2
int3 6
rentalID7 ?
)? @
)@ A
{ 
try 
{ 
	DataTable 
rentalItems )
=* +
_rentalService, :
.: ;
GetRentalItems; I
(I J
rentalIDJ R
)R S
;S T
dgvRentalItems "
." #

DataSource# -
=. /
rentalItems0 ;
;; <
dgvRentalItems   "
.  " #
AutoSizeColumnsMode  # 6
=  7 8+
DataGridViewAutoSizeColumnsMode  9 X
.  X Y
Fill  Y ]
;  ] ^
dgvRentalItems!! "
.!!" #
Columns!!# *
[!!* +
$num!!+ ,
]!!, -
.!!- .
AutoSizeMode!!. :
=!!; <*
DataGridViewAutoSizeColumnMode!!= [
.!![ \
AllCells!!\ d
;!!d e
gbxReturnTool## !
.##! "
Visible##" )
=##* +
true##, 0
;##0 1
	txtToolID$$ 
.$$ 
Focus$$ #
($$# $
)$$$ %
;$$% &
gbxRentalID%% 
.%%  
Enabled%%  '
=%%( )
false%%* /
;%%/ 0
}&& 
catch'' 
('' 
	Exception''  
ex''! #
)''# $
{(( 

MessageBox)) 
.)) 
Show)) #
())# $
$"))$ &
$str))& -
{))- .
ex)). 0
.))0 1
Message))1 8
}))8 9
"))9 :
,)): ;
$str))< C
,))C D
MessageBoxButtons))E V
.))V W
OK))W Y
,))Y Z
MessageBoxIcon))[ i
.))i j
Error))j o
)))o p
;))p q
}** 
}++ 
else,, 
{-- 

MessageBox.. 
... 
Show.. 
(..  
$str..  C
,..C D
$str..E N
,..N O
MessageBoxButtons..P a
...a b
OK..b d
,..d e
MessageBoxIcon..f t
...t u
Error..u z
)..z {
;..{ |
txtRentalID// 
.// 
Focus// !
(//! "
)//" #
;//# $
}00 
}11 	
private33 
void33 
btnReturn_Click33 $
(33$ %
object33% +
sender33, 2
,332 3
	EventArgs334 =
e33> ?
)33? @
{44 	
if55 
(55 
int55 
.55 
TryParse55 
(55 
txtRentalID55 (
.55( )
Text55) -
,55- .
out55/ 2
int553 6
rentalID557 ?
)55? @
&&55A C
int55D G
.55G H
TryParse55H P
(55P Q
	txtToolID55Q Z
.55Z [
Text55[ _
,55_ `
out55a d
int55e h
toolID55i o
)55o p
)55p q
{66 
try77 
{88 
_rentalService:: "
.::" #

ReturnTool::# -
(::- .
rentalID::. 6
,::6 7
toolID::8 >
)::> ?
;::? @

MessageBox<< 
.<< 
Show<< #
(<<# $
$str<<$ A
,<<A B
$str<<C L
,<<L M
MessageBoxButtons<<N _
.<<_ `
OK<<` b
,<<b c
MessageBoxIcon<<d r
.<<r s
Information<<s ~
)<<~ 
;	<< Ä
	DataTable?? 
rentalItems?? )
=??* +
_rentalService??, :
.??: ;
GetRentalItems??; I
(??I J
rentalID??J R
)??R S
;??S T
dgvRentalItemsAA "
.AA" #

DataSourceAA# -
=AA. /
rentalItemsAA0 ;
;AA; <
dgvRentalItemsBB "
.BB" #
AutoSizeColumnsModeBB# 6
=BB7 8+
DataGridViewAutoSizeColumnsModeBB9 X
.BBX Y
FillBBY ]
;BB] ^
dgvRentalItemsCC "
.CC" #
ColumnsCC# *
[CC* +
$numCC+ ,
]CC, -
.CC- .
AutoSizeModeCC. :
=CC; <*
DataGridViewAutoSizeColumnModeCC= [
.CC[ \
AllCellsCC\ d
;CCd e
	txtToolIDEE 
.EE 
ClearEE #
(EE# $
)EE$ %
;EE% &
	txtToolIDFF 
.FF 
FocusFF #
(FF# $
)FF$ %
;FF% &
}GG 
catchHH 
(HH 
	ExceptionHH  
exHH! #
)HH# $
{II 

MessageBoxJJ 
.JJ 
ShowJJ #
(JJ# $
$"JJ$ &
$strJJ& -
{JJ- .
exJJ. 0
.JJ0 1
MessageJJ1 8
}JJ8 9
"JJ9 :
,JJ: ;
$strJJ< C
,JJC D
MessageBoxButtonsJJE V
.JJV W
OKJJW Y
,JJY Z
MessageBoxIconJJ[ i
.JJi j
ErrorJJj o
)JJo p
;JJp q
}KK 
}LL 
elseMM 
{NN 

MessageBoxOO 
.OO 
ShowOO 
(OO  
$strOO  <
,OO< =
$strOO> G
,OOG H
MessageBoxButtonsOOI Z
.OOZ [
OKOO[ ]
,OO] ^
MessageBoxIconOO_ m
.OOm n
ErrorOOn s
)OOs t
;OOt u
	txtToolIDPP 
.PP 
FocusPP 
(PP  
)PP  !
;PP! "
}QQ 
}RR 	
privateTT 
voidTT 
btnFinish_ClickTT $
(TT$ %
objectTT% +
senderTT, 2
,TT2 3
	EventArgsTT4 =
eTT> ?
)TT? @
{UU 	
	txtToolIDVV 
.VV 
ClearVV 
(VV 
)VV 
;VV 
txtRentalIDWW 
.WW 
ClearWW 
(WW 
)WW 
;WW  
gbxReturnToolXX 
.XX 
VisibleXX !
=XX" #
falseXX$ )
;XX) *
gbxRentalIDYY 
.YY 
EnabledYY 
=YY  !
trueYY" &
;YY& '
}ZZ 	
private\\ 
void\\ $
dgvRentalItems_CellClick\\ -
(\\- .
object\\. 4
sender\\5 ;
,\\; <%
DataGridViewCellEventArgs\\= V
e\\W X
)\\X Y
{]] 	
	txtToolID^^ 
.^^ 
Text^^ 
=^^ 
dgvRentalItems^^ +
.^^+ ,
Rows^^, 0
[^^0 1
dgvRentalItems^^1 ?
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
}__ 	
privateaa 
voidaa 2
&SetToolCategoryToolStripMenuItem_Clickaa ;
(aa; <
objectaa< B
senderaaC I
,aaI J
	EventArgsaaK T
eaaU V
)aaV W
{bb 	

Navigationcc 
.cc 
SetToolCategorycc &
(cc& '
thiscc' +
)cc+ ,
;cc, -
}dd 	
privateee 
voidee 1
%UpdateToolRateToolStripMenuItem_Clickee :
(ee: ;
objectee; A
sendereeB H
,eeH I
	EventArgseeJ S
eeeT U
)eeU V
{ff 	

Navigationgg 
.gg 

UpdateRategg !
(gg! "
thisgg" &
)gg& '
;gg' (
}hh 	
privateii 
voidii &
AddToolStripMenuItem_Clickii /
(ii/ 0
objectii0 6
senderii7 =
,ii= >
	EventArgsii? H
eiiI J
)iiJ K
{jj 	

Navigationkk 
.kk 
AddToolkk 
(kk 
thiskk #
)kk# $
;kk$ %
}ll 	
privatemm 
voidmm .
"UpdateToolsToolStripMenuItem_Clickmm 7
(mm7 8
objectmm8 >
sendermm? E
,mmE F
	EventArgsmmG P
emmQ R
)mmR S
{nn 	

Navigationoo 
.oo 

UpdateTooloo !
(oo! "
thisoo" &
)oo& '
;oo' (
}pp 	
privateqq 
voidqq .
"RemoveToolsToolStripMenuItem_Clickqq 7
(qq7 8
objectqq8 >
senderqq? E
,qqE F
	EventArgsqqG P
eqqQ R
)qqR S
{rr 	

Navigationss 
.ss 

RemoveToolss !
(ss! "
thisss" &
)ss& '
;ss' (
}tt 	
privateuu 
voiduu ,
 ViewToolsToolStripMenuItem_Clickuu 5
(uu5 6
objectuu6 <
senderuu= C
,uuC D
	EventArgsuuE N
euuO P
)uuP Q
{vv 	

Navigationww 
.ww 
	ViewToolsww  
(ww  !
thisww! %
)ww% &
;ww& '
}xx 	
privateyy 
voidyy .
"AddCustomerToolStripMenuItem_Clickyy 7
(yy7 8
objectyy8 >
senderyy? E
,yyE F
	EventArgsyyG P
eyyQ R
)yyR S
{zz 	

Navigation{{ 
.{{ 
AddCustomer{{ "
({{" #
this{{# '
){{' (
;{{( )
}|| 	
private}} 
void}} 1
%UpdateCustomerToolStripMenuItem_Click}} :
(}}: ;
object}}; A
sender}}B H
,}}H I
	EventArgs}}J S
e}}T U
)}}U V
{~~ 	

Navigation 
. 
UpdateCustomer %
(% &
this& *
)* +
;+ ,
}
ÄÄ 	
private
ÅÅ 
void
ÅÅ 2
$viewCustomersToolStripMenuItem_Click
ÅÅ 9
(
ÅÅ9 :
object
ÅÅ: @
sender
ÅÅA G
,
ÅÅG H
	EventArgs
ÅÅI R
e
ÅÅS T
)
ÅÅT U
{
ÇÇ 	

Navigation
ÉÉ 
.
ÉÉ 
ViewCustomers
ÉÉ $
(
ÉÉ$ %
this
ÉÉ% )
)
ÉÉ) *
;
ÉÉ* +
}
ÑÑ 	
private
ÖÖ 
void
ÖÖ -
RentToolToolStripMenuItem_Click
ÖÖ 4
(
ÖÖ4 5
object
ÖÖ5 ;
sender
ÖÖ< B
,
ÖÖB C
	EventArgs
ÖÖD M
e
ÖÖN O
)
ÖÖO P
{
ÜÜ 	

Navigation
áá 
.
áá 
	RentTools
áá  
(
áá  !
this
áá! %
)
áá% &
;
áá& '
}
àà 	
private
ââ 
void
ââ 0
"ReturnToolsToolStripMenuItem_Click
ââ 7
(
ââ7 8
object
ââ8 >
sender
ââ? E
,
ââE F
	EventArgs
ââG P
e
ââQ R
)
ââR S
{
ää 	

Navigation
ãã 
.
ãã 
ReturnTools
ãã "
(
ãã" #
this
ãã# '
)
ãã' (
;
ãã( )
}
åå 	
private
çç 
void
çç 0
"ViewRentalsToolStripMenuItem_Click
çç 7
(
çç7 8
object
çç8 >
sender
çç? E
,
ççE F
	EventArgs
ççG P
e
ççQ R
)
ççR S
{
éé 	

Navigation
èè 
.
èè 
ViewRentals
èè "
(
èè" #
this
èè# '
)
èè' (
;
èè( )
}
êê 	
private
ëë 
void
ëë :
,AnnualRevenueAnalysisToolStripMenuItem_Click
ëë A
(
ëëA B
object
ëëB H
sender
ëëI O
,
ëëO P
	EventArgs
ëëQ Z
e
ëë[ \
)
ëë\ ]
{
íí 	

Navigation
ìì 
.
ìì 
RevenueAnalysis
ìì &
(
ìì& '
this
ìì' +
)
ìì+ ,
;
ìì, -
}
îî 	
private
ïï 
void
ïï ;
-AnnualToolTypeAnalysisToolStripMenuItem_Click
ïï B
(
ïïB C
object
ïïC I
sender
ïïJ P
,
ïïP Q
	EventArgs
ïïR [
e
ïï\ ]
)
ïï] ^
{
ññ 	

Navigation
óó 
.
óó 
ToolTypeAnalysis
óó '
(
óó' (
this
óó( ,
)
óó, -
;
óó- .
}
òò 	
private
ôô 
void
ôô -
MainMenuToolStripMenuItem_Click
ôô 4
(
ôô4 5
object
ôô5 ;
sender
ôô< B
,
ôôB C
	EventArgs
ôôD M
e
ôôN O
)
ôôO P
{
öö 	

Navigation
õõ 
.
õõ 
MainMenu
õõ 
(
õõ  
this
õõ  $
)
õõ$ %
;
õõ% &
}
úú 	
}
üü 
}†† ƒÜ
MC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\frmRentTools.cs
	namespace 	
ToolSYS
 
. 
Presentation 
{ 
public 

partial 
class 
frmRentTools %
:& '
Form( ,
{ 
private 
ToolService 
_toolService (
;( )
private 
RateService 
_rateService (
;( )
private 
CustomerService 
_customerService  0
;0 1
private 
RentalService 
_rentalService ,
;, -
public 
frmRentTools 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
_toolService 
= 
new 
ToolService *
(* +
)+ ,
;, -
_rateService 
= 
new 
RateService *
(* +
)+ ,
;, -
_customerService 
= 
new "
CustomerService# 2
(2 3
)3 4
;4 5
_rentalService 
= 
new  
RentalService! .
(. /
)/ 0
;0 1
} 	
private 
void 
frmRentTools_Load &
(& '
object' -
sender. 4
,4 5
	EventArgs6 ?
e@ A
)A B
{   	
dtpFrom!! 
.!! 
MinDate!! 
=!! 
DateTime!! &
.!!& '
Today!!' ,
;!!, -
dtpTo"" 
."" 
MinDate"" 
="" 
DateTime"" $
.""$ %
Today""% *
;""* +
txtRentalID## 
.## 
Text## 
=## 
_rentalService## -
.##- .
GetNextRentalID##. =
(##= >
)##> ?
.##? @
ToString##@ H
(##H I
)##I J
;##J K
cboCategories$$ 
.$$ 
Items$$ 
.$$  
Add$$  #
($$# $
$str$$$ &
)$$& '
;$$' (
DataSet%% 

categories%% 
=%%  
_rateService%%! -
.%%- .
GetAllCategories%%. >
(%%> ?
)%%? @
;%%@ A
foreach'' 
('' 
DataRow'' 
row''  
in''! #

categories''$ .
.''. /
Tables''/ 5
[''5 6
$num''6 7
]''7 8
.''8 9
Rows''9 =
)''= >
{(( 
string)) 
category)) 
=))  !
row))" %
[))% &
$str))& 4
]))4 5
+))6 7
$str))8 =
+))> ?
row))@ C
[))C D
$str))D R
]))R S
;))S T
cboCategories** 
.** 
Items** #
.**# $
Add**$ '
(**' (
category**( 0
)**0 1
;**1 2
}++ 
	dgvRental,, 
.,, 
Columns,, 
.,, 
Add,, !
(,,! "
$str,," *
,,,* +
$str,,, 0
),,0 1
;,,1 2
	dgvRental-- 
.-- 
Columns-- 
.-- 
Add-- !
(--! "
$str--" 0
,--0 1
$str--2 A
)--A B
;--B C
	dgvRental.. 
... 
Columns.. 
... 
Add.. !
(..! "
$str.." 3
,..3 4
$str..5 B
)..B C
;..C D
	dgvRental// 
.// 
Columns// 
.// 
Add// !
(//! "
$str//" 4
,//4 5
$str//6 D
)//D E
;//E F
	dgvRental00 
.00 
Columns00 
.00 
Add00 !
(00! "
$str00" ,
,00, -
$str00. 9
)009 :
;00: ;
	dgvRental11 
.11 
Columns11 
.11 
Add11 !
(11! "
$str11" .
,11. /
$str110 =
)11= >
;11> ?
	dgvRental22 
.22 
Columns22 
.22 
Add22 !
(22! "
$str22" -
,22- .
$str22/ ;
)22; <
;22< =
Miscellaneous33 
.33 %
SetDataGridViewProperties33 3
(333 4
	dgvRental334 =
)33= >
;33> ?
}44 	
private55 
void55 #
btnCustomerSearch_Click55 ,
(55, -
object55- 3
sender554 :
,55: ;
	EventArgs55< E
e55F G
)55G H
{66 	
dgvCustomers77 
.77 

DataSource77 #
=77$ %
_customerService77& 6
.776 7
SearchCustomers777 F
(77F G
txtCustomerSearch77G X
.77X Y
Text77Y ]
)77] ^
.77^ _
Tables77_ e
[77e f
$str77f p
]77p q
;77q r
dgvCustomers99 
.99 
Columns99  
[99  !
$num99! "
]99" #
.99# $

HeaderText99$ .
=99/ 0
$str991 5
;995 6
dgvCustomers:: 
.:: 
Columns::  
[::  !
$num::! "
]::" #
.::# $

HeaderText::$ .
=::/ 0
$str::1 ;
;::; <
dgvCustomers;; 
.;; 
Columns;;  
[;;  !
$num;;! "
];;" #
.;;# $

HeaderText;;$ .
=;;/ 0
$str;;1 :
;;;: ;
dgvCustomers<< 
.<< 
Columns<<  
[<<  !
$num<<! "
]<<" #
.<<# $

HeaderText<<$ .
=<</ 0
$str<<1 8
;<<8 9
dgvCustomers== 
.== 
Columns==  
[==  !
$num==! "
]==" #
.==# $

HeaderText==$ .
===/ 0
$str==1 8
;==8 9
dgvCustomers>> 
.>> 
Columns>>  
[>>  !
$num>>! "
]>>" #
.>># $

HeaderText>>$ .
=>>/ 0
$str>>1 :
;>>: ;
Miscellaneous?? 
.?? %
SetDataGridViewProperties?? 3
(??3 4
dgvCustomers??4 @
)??@ A
;??A B
}@@ 	
privateCC 
voidCC "
dgvCustomers_CellClickCC +
(CC+ ,
objectCC, 2
senderCC3 9
,CC9 :%
DataGridViewCellEventArgsCC; T
eCCU V
)CCV W
{DD 	
txtCustomerIDEE 
.EE 
TextEE 
=EE  
dgvCustomersEE! -
.EE- .
RowsEE. 2
[EE2 3
dgvCustomersEE3 ?
.EE? @

CurrentRowEE@ J
.EEJ K
IndexEEK P
]EEP Q
.EEQ R
CellsEER W
[EEW X
$numEEX Y
]EEY Z
.EEZ [
ValueEE[ `
.EE` a
ToStringEEa i
(EEi j
)EEj k
;EEk l
txtForenameFF 
.FF 
TextFF 
=FF 
dgvCustomersFF +
.FF+ ,
RowsFF, 0
[FF0 1
dgvCustomersFF1 =
.FF= >

CurrentRowFF> H
.FFH I
IndexFFI N
]FFN O
.FFO P
CellsFFP U
[FFU V
$numFFV W
]FFW X
.FFX Y
ValueFFY ^
.FF^ _
ToStringFF_ g
(FFg h
)FFh i
;FFi j

txtSurnameGG 
.GG 
TextGG 
=GG 
dgvCustomersGG *
.GG* +
RowsGG+ /
[GG/ 0
dgvCustomersGG0 <
.GG< =

CurrentRowGG= G
.GGG H
IndexGGH M
]GGM N
.GGN O
CellsGGO T
[GGT U
$numGGU V
]GGV W
.GGW X
ValueGGX ]
.GG] ^
ToStringGG^ f
(GGf g
)GGg h
;GGh i
txtEmailHH 
.HH 
TextHH 
=HH 
dgvCustomersHH (
.HH( )
RowsHH) -
[HH- .
dgvCustomersHH. :
.HH: ;

CurrentRowHH; E
.HHE F
IndexHHF K
]HHK L
.HHL M
CellsHHM R
[HHR S
$numHHS T
]HHT U
.HHU V
ValueHHV [
.HH[ \
ToStringHH\ d
(HHd e
)HHe f
;HHf g
txtPhoneII 
.II 
TextII 
=II 
dgvCustomersII (
.II( )
RowsII) -
[II- .
dgvCustomersII. :
.II: ;

CurrentRowII; E
.IIE F
IndexIIF K
]IIK L
.IIL M
CellsIIM R
[IIR S
$numIIS T
]IIT U
.IIU V
ValueIIV [
.II[ \
ToStringII\ d
(IId e
)IIe f
;IIf g

txtEircodeJJ 
.JJ 
TextJJ 
=JJ 
dgvCustomersJJ *
.JJ* +
RowsJJ+ /
[JJ/ 0
dgvCustomersJJ0 <
.JJ< =

CurrentRowJJ= G
.JJG H
IndexJJH M
]JJM N
.JJN O
CellsJJO T
[JJT U
$numJJU V
]JJV W
.JJW X
ValueJJX ]
.JJ] ^
ToStringJJ^ f
(JJf g
)JJg h
;JJh i
}KK 	
privateMM 
voidMM &
txtCustomerSearch_KeyPressMM /
(MM/ 0
objectMM0 6
senderMM7 =
,MM= >
KeyPressEventArgsMM? P
eMMQ R
)MMR S
{NN 	
ifOO 
(OO 
eOO 
.OO 
KeyCharOO 
==OO 
(OO 
charOO !
)OO! "
$numOO" $
)OO$ %
{PP 
btnCustomerSearchQQ !
.QQ! "
PerformClickQQ" .
(QQ. /
)QQ/ 0
;QQ0 1
}RR 
}SS 	
privateUU 
voidUU $
dgvTools_CellDoubleClickUU -
(UU- .
objectUU. 4
senderUU5 ;
,UU; <%
DataGridViewCellEventArgsUU= V
eUUW X
)UUX Y
{VV 	
btnAddToRentalWW 
.WW 
PerformClickWW '
(WW' (
)WW( )
;WW) *
}XX 	
privateZZ 
voidZZ  
btnAddToRental_ClickZZ )
(ZZ) *
objectZZ* 0
senderZZ1 7
,ZZ7 8
	EventArgsZZ9 B
eZZC D
)ZZD E
{[[ 	
try\\ 
{]] 
if^^ 
(^^ 
String^^ 
.^^ 
IsNullOrEmpty^^ (
(^^( )
txtCustomerID^^) 6
.^^6 7
Text^^7 ;
)^^; <
)^^< =
throw__ 
new__ 
ArgumentException__ /
(__/ 0
$str__0 K
)__K L
;__L M
if`` 
(`` 
dgvTools`` 
.`` 
SelectedCells`` *
.``* +
Count``+ 0
==``1 3
$num``4 5
)``5 6
throwaa 
newaa 
ArgumentExceptionaa /
(aa/ 0
$straa0 G
)aaG H
;aaH I
intcc 

customerIDcc 
=cc  
Convertcc! (
.cc( )
ToInt32cc) 0
(cc0 1
txtCustomerIDcc1 >
.cc> ?
Textcc? C
)ccC D
;ccD E
Stringdd 
iddd 
=dd 
dgvToolsdd $
.dd$ %
Rowsdd% )
[dd) *
dgvToolsdd* 2
.dd2 3

CurrentRowdd3 =
.dd= >
Indexdd> C
]ddC D
.ddD E
CellsddE J
[ddJ K
$numddK L
]ddL M
.ddM N
ValueddN S
.ddS T
ToStringddT \
(dd\ ]
)dd] ^
;dd^ _
Stringee 
categoryCodeee #
=ee$ %
dgvToolsee& .
.ee. /
Rowsee/ 3
[ee3 4
dgvToolsee4 <
.ee< =

CurrentRowee= G
.eeG H
IndexeeH M
]eeM N
.eeN O
CellseeO T
[eeT U
$numeeU V
]eeV W
.eeW X
ValueeeX ]
.ee] ^
ToStringee^ f
(eef g
)eeg h
;eeh i
Stringff 
descriptionff "
=ff# $
dgvToolsff% -
.ff- .
Rowsff. 2
[ff2 3
dgvToolsff3 ;
.ff; <

CurrentRowff< F
.ffF G
IndexffG L
]ffL M
.ffM N
CellsffN S
[ffS T
$numffT U
]ffU V
.ffV W
ValueffW \
.ff\ ]
ToStringff] e
(ffe f
)fff g
;ffg h
Stringgg 
manufacturergg #
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
;ggh i
DateTimehh 
rentDatehh !
=hh" #
dtpFromhh$ +
.hh+ ,
Valuehh, 1
;hh1 2
DateTimeii 

returnDateii #
=ii$ %
dtpToii& +
.ii+ ,
Valueii, 1
;ii1 2
decimalll 
	rentalFeell !
=ll" #
_rentalServicell$ 2
.ll2 3
CalculateRentalFeell3 E
(llE F

customerIDllF P
,llP Q
categoryCodellR ^
,ll^ _
rentDatell` h
,llh i

returnDatellj t
)llt u
;llu v
ifnn 
(nn 
	dgvRentalnn 
.nn 
Rowsnn "
.nn" #
Countnn# (
>=nn) +
$numnn, -
)nn- .
{oo 
foreachpp 
(pp 
DataGridViewRowpp ,
rowpp- 0
inpp1 3
	dgvRentalpp4 =
.pp= >
Rowspp> B
)ppB C
{qq 
ifrr 
(rr 
rowrr 
.rr  
Cellsrr  %
[rr% &
$strrr& .
]rr. /
.rr/ 0
Valuerr0 5
.rr5 6
ToStringrr6 >
(rr> ?
)rr? @
==rrA C
idrrD F
)rrF G
{ss 

MessageBoxtt &
.tt& '
Showtt' +
(tt+ ,
$strtt, S
,ttS T
$strttU ^
,tt^ _
MessageBoxButtonstt` q
.ttq r
OKttr t
,ttt u
MessageBoxIcon	ttv Ñ
.
ttÑ Ö
Error
ttÖ ä
)
ttä ã
;
ttã å
returnuu "
;uu" #
}vv 
}ww 
}xx 
	dgvRentalzz 
.zz 
Rowszz 
.zz 
Addzz "
(zz" #
id{{ 
,{{ 
categoryCode||  
,||  !
description}} 
,}}  
manufacturer~~  
,~~  !
rentDate 
. 
ToString %
(% &
$str& 1
)1 2
,2 3

returnDate
ÄÄ 
.
ÄÄ 
ToString
ÄÄ '
(
ÄÄ' (
$str
ÄÄ( 3
)
ÄÄ3 4
,
ÄÄ4 5
	rentalFee
ÅÅ 
.
ÅÅ 
ToString
ÅÅ &
(
ÅÅ& '
$str
ÅÅ' -
)
ÅÅ- .
)
ÇÇ 
;
ÇÇ 
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
àà  
$"
àà  "
{
àà" #
ex
àà# %
.
àà% &
Message
àà& -
}
àà- .
"
àà. /
,
àà/ 0
$str
àà1 8
,
àà8 9
MessageBoxButtons
àà: K
.
ààK L
OK
ààL N
,
ààN O
MessageBoxIcon
ààP ^
.
àà^ _
Error
àà_ d
)
ààd e
;
ààe f
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
String
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
ôô( )
txtTotalFee
ôô) 4
.
ôô4 5
Text
ôô5 9
)
ôô9 :
)
ôô: ;
throw
öö 
new
öö 
ArgumentException
öö /
(
öö/ 0
$str
öö0 Y
)
ööY Z
;
ööZ [
Rental
úú 
rental
úú 
=
úú 
new
úú  #
Rental
úú$ *
{
ùù 
rentalID
ûû 
=
ûû 
Convert
ûû %
.
ûû% &
ToInt32
ûû& -
(
ûû- .
txtRentalID
ûû. 9
.
ûû9 :
Text
ûû: >
)
ûû> ?
,
ûû? @

customerID
üü 
=
üü 
Convert
üü  '
.
üü' (
ToInt32
üü( /
(
üü/ 0
txtCustomerID
üü0 =
.
üü= >
Text
üü> B
)
üüB C
,
üüC D
transactionDate
†† "
=
††# $
DateTime
††% -
.
††- .
Today
††. 3
,
††3 4
totalFee
°° 
=
°° 
Convert
°° %
.
°°% &
	ToDecimal
°°& /
(
°°/ 0
txtTotalFee
°°0 ;
.
°°; <
Text
°°< @
)
°°@ A
}
¢¢ 
;
¢¢ 
List
§§ 
<
§§ 

RentalItem
§§ 
>
§§  
rentalItems
§§! ,
=
§§- .
	dgvRental
§§/ 8
.
§§8 9
Rows
§§9 =
.
§§= >
Cast
§§> B
<
§§B C
DataGridViewRow
§§C R
>
§§R S
(
§§S T
)
§§T U
.
•• 
Select
•• 
(
•• 
row
•• 
=>
••  "
new
••# &

RentalItem
••' 1
{
¶¶ 
toolID
ßß 
=
ßß  
Convert
ßß! (
.
ßß( )
ToInt32
ßß) 0
(
ßß0 1
row
ßß1 4
.
ßß4 5
Cells
ßß5 :
[
ßß: ;
$str
ßß; C
]
ßßC D
.
ßßD E
Value
ßßE J
)
ßßJ K
,
ßßK L
rentalID
®®  
=
®®! "
Convert
®®# *
.
®®* +
ToInt32
®®+ 2
(
®®2 3
txtRentalID
®®3 >
.
®®> ?
Text
®®? C
)
®®C D
,
®®D E
rentDate
©©  
=
©©! "
DateTime
©©# +
.
©©+ ,
Parse
©©, 1
(
©©1 2
row
©©2 5
.
©©5 6
Cells
©©6 ;
[
©©; <
$str
©©< F
]
©©F G
.
©©G H
Value
©©H M
.
©©M N
ToString
©©N V
(
©©V W
)
©©W X
)
©©X Y
,
©©Y Z

returnDate
™™ "
=
™™# $
DateTime
™™% -
.
™™- .
Parse
™™. 3
(
™™3 4
row
™™4 7
.
™™7 8
Cells
™™8 =
[
™™= >
$str
™™> J
]
™™J K
.
™™K L
Value
™™L Q
.
™™Q R
ToString
™™R Z
(
™™Z [
)
™™[ \
)
™™\ ]
,
™™] ^
	rentalFee
´´ !
=
´´" #
Convert
´´$ +
.
´´+ ,
	ToDecimal
´´, 5
(
´´5 6
row
´´6 9
.
´´9 :
Cells
´´: ?
[
´´? @
$str
´´@ K
]
´´K L
.
´´L M
Value
´´M R
)
´´R S
}
¨¨ 
)
¨¨ 
.
¨¨ 
ToList
¨¨ 
(
¨¨ 
)
¨¨ 
;
¨¨  
_rentalService
ÆÆ 
.
ÆÆ 
ConfirmRental
ÆÆ ,
(
ÆÆ, -
rental
ÆÆ- 3
,
ÆÆ3 4
rentalItems
ÆÆ5 @
)
ÆÆ@ A
;
ÆÆA B

MessageBox
∞∞ 
.
∞∞ 
Show
∞∞ 
(
∞∞  
$str
∞∞  2
,
∞∞2 3
$str
∞∞4 A
,
∞∞A B
MessageBoxButtons
∞∞C T
.
∞∞T U
OK
∞∞U W
,
∞∞W X
MessageBoxIcon
∞∞Y g
.
∞∞g h
Information
∞∞h s
)
∞∞s t
;
∞∞t u
RefreshForm
±± 
(
±± 
)
±± 
;
±± 
}
≤≤ 
catch
≥≥ 
(
≥≥ 
	Exception
≥≥ 
ex
≥≥ 
)
≥≥  
{
¥¥ 

MessageBox
µµ 
.
µµ 
Show
µµ 
(
µµ  
$"
µµ  "
{
µµ" #
ex
µµ# %
.
µµ% &
Message
µµ& -
}
µµ- .
"
µµ. /
,
µµ/ 0
$str
µµ1 8
,
µµ8 9
MessageBoxButtons
µµ: K
.
µµK L
OK
µµL N
,
µµN O
MessageBoxIcon
µµP ^
.
µµ^ _
Error
µµ_ d
)
µµd e
;
µµe f
}
∂∂ 
}
∑∑ 	
private
ππ 
void
ππ 
RefreshForm
ππ  
(
ππ  !
)
ππ! "
{
∫∫ 	
txtRentalID
ªª 
.
ªª 
Text
ªª 
=
ªª 
_rentalService
ªª -
.
ªª- .
GetNextRentalID
ªª. =
(
ªª= >
)
ªª> ?
.
ªª? @
ToString
ªª@ H
(
ªªH I
)
ªªI J
;
ªªJ K
txtCustomerSearch
ºº 
.
ºº 
Clear
ºº #
(
ºº# $
)
ºº$ %
;
ºº% &
txtCustomerID
ΩΩ 
.
ΩΩ 
Clear
ΩΩ 
(
ΩΩ  
)
ΩΩ  !
;
ΩΩ! "
txtForename
ææ 
.
ææ 
Clear
ææ 
(
ææ 
)
ææ 
;
ææ  
txtPhone
øø 
.
øø 
Clear
øø 
(
øø 
)
øø 
;
øø 
txtEmail
¿¿ 
.
¿¿ 
Clear
¿¿ 
(
¿¿ 
)
¿¿ 
;
¿¿ 

txtEircode
¡¡ 
.
¡¡ 
Clear
¡¡ 
(
¡¡ 
)
¡¡ 
;
¡¡ 

txtSurname
¬¬ 
.
¬¬ 
Clear
¬¬ 
(
¬¬ 
)
¬¬ 
;
¬¬ 
txtTotalFee
√√ 
.
√√ 
Clear
√√ 
(
√√ 
)
√√ 
;
√√  
dgvCustomers
ƒƒ 
.
ƒƒ 

DataSource
ƒƒ #
=
ƒƒ$ %
null
ƒƒ& *
;
ƒƒ* +
dgvCustomers
≈≈ 
.
≈≈ 
Rows
≈≈ 
.
≈≈ 
Clear
≈≈ #
(
≈≈# $
)
≈≈$ %
;
≈≈% &
dgvTools
∆∆ 
.
∆∆ 

DataSource
∆∆ 
=
∆∆  !
null
∆∆" &
;
∆∆& '
dgvTools
«« 
.
«« 
Rows
«« 
.
«« 
Clear
«« 
(
««  
)
««  !
;
««! "
	dgvRental
»» 
.
»» 
Rows
»» 
.
»» 
Clear
»»  
(
»»  !
)
»»! "
;
»»" #
cboCategories
…… 
.
…… 
SelectedIndex
…… '
=
……( )
-
……* +
$num
……+ ,
;
……, -
dtpFrom
   
.
   
Value
   
=
   
DateTime
   $
.
  $ %
Today
  % *
;
  * +
dtpTo
ÀÀ 
.
ÀÀ 
Value
ÀÀ 
=
ÀÀ 
DateTime
ÀÀ "
.
ÀÀ" #
Today
ÀÀ# (
;
ÀÀ( )
}
ÃÃ 	
private
ŒŒ 
void
ŒŒ 0
"cboCategories_SelectedIndexChanged
ŒŒ 7
(
ŒŒ7 8
object
ŒŒ8 >
sender
ŒŒ? E
,
ŒŒE F
	EventArgs
ŒŒG P
e
ŒŒQ R
)
ŒŒR S
{
œœ 	
if
–– 
(
–– 
cboCategories
–– 
.
–– 
SelectedIndex
–– +
>=
––, .
$num
––/ 0
)
––0 1
{
—— 
dgvTools
““ 
.
““ 

DataSource
““ #
=
““$ %
_toolService
““& 2
.
““2 3
GetRentableTools
““3 C
(
““C D
cboCategories
““D Q
.
““Q R
SelectedItem
““R ^
.
““^ _
ToString
““_ g
(
““g h
)
““h i
.
““i j
	Substring
““j s
(
““s t
$num
““t u
,
““u v
$num
““w x
)
““x y
,
““y z
dtpFrom““{ Ç
.““Ç É
Value““É à
,““à â
dtpTo““ä è
.““è ê
Value““ê ï
)““ï ñ
.““ñ ó
Tables““ó ù
[““ù û
$str““û §
]““§ •
;““• ¶
dgvTools
‘‘ 
.
‘‘ 
Columns
‘‘  
[
‘‘  !
$num
‘‘! "
]
‘‘" #
.
‘‘# $

HeaderText
‘‘$ .
=
‘‘/ 0
$str
‘‘1 5
;
‘‘5 6
dgvTools
’’ 
.
’’ 
Columns
’’  
[
’’  !
$num
’’! "
]
’’" #
.
’’# $

HeaderText
’’$ .
=
’’/ 0
$str
’’1 @
;
’’@ A
dgvTools
÷÷ 
.
÷÷ 
Columns
÷÷  
[
÷÷  !
$num
÷÷! "
]
÷÷" #
.
÷÷# $

HeaderText
÷÷$ .
=
÷÷/ 0
$str
÷÷1 >
;
÷÷> ?
dgvTools
◊◊ 
.
◊◊ 
Columns
◊◊  
[
◊◊  !
$num
◊◊! "
]
◊◊" #
.
◊◊# $

HeaderText
◊◊$ .
=
◊◊/ 0
$str
◊◊1 ?
;
◊◊? @
dgvTools
ÿÿ 
.
ÿÿ 
Columns
ÿÿ  
[
ÿÿ  !
$num
ÿÿ! "
]
ÿÿ" #
.
ÿÿ# $

HeaderText
ÿÿ$ .
=
ÿÿ/ 0
$str
ÿÿ1 9
;
ÿÿ9 :
Miscellaneous
ŸŸ 
.
ŸŸ '
SetDataGridViewProperties
ŸŸ 7
(
ŸŸ7 8
dgvTools
ŸŸ8 @
)
ŸŸ@ A
;
ŸŸA B
}
⁄⁄ 
}
€€ 	
private
‹‹ 
void
‹‹ 4
&SetToolCategoryToolStripMenuItem_Click
‹‹ ;
(
‹‹; <
object
‹‹< B
sender
‹‹C I
,
‹‹I J
	EventArgs
‹‹K T
e
‹‹U V
)
‹‹V W
{
›› 	

Navigation
ﬁﬁ 
.
ﬁﬁ 
SetToolCategory
ﬁﬁ &
(
ﬁﬁ& '
this
ﬁﬁ' +
)
ﬁﬁ+ ,
;
ﬁﬁ, -
}
ﬂﬂ 	
private
‡‡ 
void
‡‡ 3
%UpdateToolRateToolStripMenuItem_Click
‡‡ :
(
‡‡: ;
object
‡‡; A
sender
‡‡B H
,
‡‡H I
	EventArgs
‡‡J S
e
‡‡T U
)
‡‡U V
{
·· 	

Navigation
‚‚ 
.
‚‚ 

UpdateRate
‚‚ !
(
‚‚! "
this
‚‚" &
)
‚‚& '
;
‚‚' (
}
„„ 	
private
‰‰ 
void
‰‰ (
AddToolStripMenuItem_Click
‰‰ /
(
‰‰/ 0
object
‰‰0 6
sender
‰‰7 =
,
‰‰= >
	EventArgs
‰‰? H
e
‰‰I J
)
‰‰J K
{
ÂÂ 	

Navigation
ÊÊ 
.
ÊÊ 
AddTool
ÊÊ 
(
ÊÊ 
this
ÊÊ #
)
ÊÊ# $
;
ÊÊ$ %
}
ÁÁ 	
private
ËË 
void
ËË 0
"UpdateToolsToolStripMenuItem_Click
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
ÈÈ 	

Navigation
ÍÍ 
.
ÍÍ 

UpdateTool
ÍÍ !
(
ÍÍ! "
this
ÍÍ" &
)
ÍÍ& '
;
ÍÍ' (
}
ÎÎ 	
private
ÏÏ 
void
ÏÏ 0
"RemoveToolsToolStripMenuItem_Click
ÏÏ 7
(
ÏÏ7 8
object
ÏÏ8 >
sender
ÏÏ? E
,
ÏÏE F
	EventArgs
ÏÏG P
e
ÏÏQ R
)
ÏÏR S
{
ÌÌ 	

Navigation
ÓÓ 
.
ÓÓ 

RemoveTool
ÓÓ !
(
ÓÓ! "
this
ÓÓ" &
)
ÓÓ& '
;
ÓÓ' (
}
ÔÔ 	
private
 
void
 .
 ViewToolsToolStripMenuItem_Click
 5
(
5 6
object
6 <
sender
= C
,
C D
	EventArgs
E N
e
O P
)
P Q
{
ÒÒ 	

Navigation
ÚÚ 
.
ÚÚ 
	ViewTools
ÚÚ  
(
ÚÚ  !
this
ÚÚ! %
)
ÚÚ% &
;
ÚÚ& '
}
ÛÛ 	
private
ÙÙ 
void
ÙÙ 0
"AddCustomerToolStripMenuItem_Click
ÙÙ 7
(
ÙÙ7 8
object
ÙÙ8 >
sender
ÙÙ? E
,
ÙÙE F
	EventArgs
ÙÙG P
e
ÙÙQ R
)
ÙÙR S
{
ıı 	

Navigation
ˆˆ 
.
ˆˆ 
AddCustomer
ˆˆ "
(
ˆˆ" #
this
ˆˆ# '
)
ˆˆ' (
;
ˆˆ( )
}
˜˜ 	
private
¯¯ 
void
¯¯ 3
%UpdateCustomerToolStripMenuItem_Click
¯¯ :
(
¯¯: ;
object
¯¯; A
sender
¯¯B H
,
¯¯H I
	EventArgs
¯¯J S
e
¯¯T U
)
¯¯U V
{
˘˘ 	

Navigation
˙˙ 
.
˙˙ 
UpdateCustomer
˙˙ %
(
˙˙% &
this
˙˙& *
)
˙˙* +
;
˙˙+ ,
}
˚˚ 	
private
¸¸ 
void
¸¸ 2
$viewCustomersToolStripMenuItem_Click
¸¸ 9
(
¸¸9 :
object
¸¸: @
sender
¸¸A G
,
¸¸G H
	EventArgs
¸¸I R
e
¸¸S T
)
¸¸T U
{
˝˝ 	

Navigation
˛˛ 
.
˛˛ 
ViewCustomers
˛˛ $
(
˛˛$ %
this
˛˛% )
)
˛˛) *
;
˛˛* +
}
ˇˇ 	
private
ÄÄ 
void
ÄÄ -
RentToolToolStripMenuItem_Click
ÄÄ 4
(
ÄÄ4 5
object
ÄÄ5 ;
sender
ÄÄ< B
,
ÄÄB C
	EventArgs
ÄÄD M
e
ÄÄN O
)
ÄÄO P
{
ÅÅ 	

Navigation
ÇÇ 
.
ÇÇ 
	RentTools
ÇÇ  
(
ÇÇ  !
this
ÇÇ! %
)
ÇÇ% &
;
ÇÇ& '
}
ÉÉ 	
private
ÑÑ 
void
ÑÑ 0
"ReturnToolsToolStripMenuItem_Click
ÑÑ 7
(
ÑÑ7 8
object
ÑÑ8 >
sender
ÑÑ? E
,
ÑÑE F
	EventArgs
ÑÑG P
e
ÑÑQ R
)
ÑÑR S
{
ÖÖ 	

Navigation
ÜÜ 
.
ÜÜ 
ReturnTools
ÜÜ "
(
ÜÜ" #
this
ÜÜ# '
)
ÜÜ' (
;
ÜÜ( )
}
áá 	
private
àà 
void
àà 0
"ViewRentalsToolStripMenuItem_Click
àà 7
(
àà7 8
object
àà8 >
sender
àà? E
,
ààE F
	EventArgs
ààG P
e
ààQ R
)
ààR S
{
ââ 	

Navigation
ää 
.
ää 
ViewRentals
ää "
(
ää" #
this
ää# '
)
ää' (
;
ää( )
}
ãã 	
private
åå 
void
åå :
,AnnualRevenueAnalysisToolStripMenuItem_Click
åå A
(
ååA B
object
ååB H
sender
ååI O
,
ååO P
	EventArgs
ååQ Z
e
åå[ \
)
åå\ ]
{
çç 	

Navigation
éé 
.
éé 
RevenueAnalysis
éé &
(
éé& '
this
éé' +
)
éé+ ,
;
éé, -
}
èè 	
private
êê 
void
êê ;
-AnnualToolTypeAnalysisToolStripMenuItem_Click
êê B
(
êêB C
object
êêC I
sender
êêJ P
,
êêP Q
	EventArgs
êêR [
e
êê\ ]
)
êê] ^
{
ëë 	

Navigation
íí 
.
íí 
ToolTypeAnalysis
íí '
(
íí' (
this
íí( ,
)
íí, -
;
íí- .
}
ìì 	
private
îî 
void
îî -
MainMenuToolStripMenuItem_Click
îî 4
(
îî4 5
object
îî5 ;
sender
îî< B
,
îîB C
	EventArgs
îîD M
e
îîN O
)
îîO P
{
ïï 	

Navigation
ññ 
.
ññ 
MainMenu
ññ 
(
ññ  
this
ññ  $
)
ññ$ %
;
ññ% &
}
óó 	
}
òò 
}ôô ác
NC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\frmRemoveTool.cs
	namespace 	
ToolSYS
 
. 
Presentation 
{ 
public 

partial 
class 
frmRemoveTool &
:' (
Form) -
{ 
private 
ToolService 
toolService '
;' (
public 
frmRemoveTool 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
toolService 
= 
new 
ToolService )
() *
)* +
;+ ,
} 	
private 
void 
frmRemoveTool_Load '
(' (
object( .
sender/ 5
,5 6
	EventArgs7 @
eA B
)B C
{ 	
RefreshGridView 
( 
) 
; 
this 
. 
AcceptButton 
= 

btnConfirm  *
;* +
} 	
private 
void 
btnConfirm_Click %
(% &
object& ,
sender- 3
,3 4
	EventArgs5 >
e? @
)@ A
{ 	
DialogResult   
confirmRemove   &
=  ' (

MessageBox  ) 3
.  3 4
Show  4 8
(  8 9
$str  9 e
,  e f
$str  g p
,  p q
MessageBoxButtons	  r É
.
  É Ñ
YesNo
  Ñ â
)
  â ä
;
  ä ã
if"" 
("" 
confirmRemove"" 
==""  
DialogResult""! -
.""- .
Yes"". 1
)""1 2
{## 
try$$ 
{%% 
toolService&& 
.&&  

RemoveTool&&  *
(&&* +
Convert&&+ 2
.&&2 3
ToInt32&&3 :
(&&: ;
	txtToolID&&; D
.&&D E
Text&&E I
)&&I J
)&&J K
;&&K L

MessageBox'' 
.'' 
Show'' #
(''# $
$str''$ ?
,''? @
$str''A N
,''N O
MessageBoxButtons''P a
.''a b
OK''b d
,''d e
MessageBoxIcon''f t
.''t u
Information	''u Ä
)
''Ä Å
;
''Å Ç
	txtToolID(( 
.(( 
Clear(( #
(((# $
)(($ %
;((% &
RefreshGridView)) #
())# $
)))$ %
;))% &
}** 
catch++ 
(++ 
	Exception++  
ex++! #
)++# $
{,, 

MessageBox-- 
.-- 
Show-- #
(--# $
$"--$ &
{--& '
ex--' )
.--) *
Message--* 1
}--1 2
"--2 3
,--3 4
$str--5 <
,--< =
MessageBoxButtons--> O
.--O P
OK--P R
,--R S
MessageBoxIcon--T b
.--b c
Error--c h
)--h i
;--i j
}.. 
}// 
}00 	
private22 
void22 
RefreshGridView22 $
(22$ %
)22% &
{33 	
dgvTools44 
.44 

DataSource44 
=44  !
toolService44" -
.44- .
GetAvailableTools44. ?
(44? @
)44@ A
.44A B
Tables44B H
[44H I
$str44I O
]44O P
;44P Q
dgvTools55 
.55 
AutoSizeColumnsMode55 (
=55) *+
DataGridViewAutoSizeColumnsMode55+ J
.55J K
Fill55K O
;55O P
dgvTools66 
.66 
Columns66 
[66 
$num66 
]66 
.66  
AutoSizeMode66  ,
=66- .*
DataGridViewAutoSizeColumnMode66/ M
.66M N
AllCells66N V
;66V W
}77 	
private99 
void99 
dgvTools_CellClick99 '
(99' (
object99( .
sender99/ 5
,995 6%
DataGridViewCellEventArgs997 P
e99Q R
)99R S
{:: 	
	txtToolID;; 
.;; 
Text;; 
=;; 
dgvTools;; %
.;;% &

CurrentRow;;& 0
.;;0 1
Cells;;1 6
[;;6 7
$num;;7 8
];;8 9
.;;9 :
Value;;: ?
.;;? @
ToString;;@ H
(;;H I
);;I J
;;;J K
}<< 	
private?? 
void?? $
dgvTools_CellDoubleClick?? -
(??- .
object??. 4
sender??5 ;
,??; <%
DataGridViewCellEventArgs??= V
e??W X
)??X Y
{@@ 	
ifAA 
(AA 
dgvToolsAA 
.AA 

CurrentRowAA #
!=AA$ &
nullAA' +
)AA+ ,
{BB 
DialogResultCC 
confirmRemoveCC *
=CC+ ,

MessageBoxCC- 7
.CC7 8
ShowCC8 <
(CC< =
$strCC= i
,CCi j
$strCCk t
,CCt u
MessageBoxButtons	CCv á
.
CCá à
YesNo
CCà ç
)
CCç é
;
CCé è
ifEE 
(EE 
confirmRemoveEE !
==EE" $
DialogResultEE% 1
.EE1 2
YesEE2 5
)EE5 6
{FF 
tryGG 
{HH 
intII 
toolIDII "
=II# $
intII% (
.II( )
ParseII) .
(II. /
dgvToolsII/ 7
.II7 8

CurrentRowII8 B
.IIB C
CellsIIC H
[IIH I
$numIII J
]IIJ K
.IIK L
ValueIIL Q
.IIQ R
ToStringIIR Z
(IIZ [
)II[ \
)II\ ]
;II] ^
toolServiceJJ #
.JJ# $

RemoveToolJJ$ .
(JJ. /
toolIDJJ/ 5
)JJ5 6
;JJ6 7

MessageBoxLL "
.LL" #
ShowLL# '
(LL' (
$strLL( C
,LLC D
$strLLE R
,LLR S
MessageBoxButtonsLLT e
.LLe f
OKLLf h
,LLh i
MessageBoxIconLLj x
.LLx y
Information	LLy Ñ
)
LLÑ Ö
;
LLÖ Ü
RefreshGridViewMM '
(MM' (
)MM( )
;MM) *
}NN 
catchOO 
(OO 
	ExceptionOO $
exOO% '
)OO' (
{PP 

MessageBoxQQ "
.QQ" #
ShowQQ# '
(QQ' (
$"QQ( *
$strQQ* 1
{QQ1 2
exQQ2 4
.QQ4 5
MessageQQ5 <
}QQ< =
"QQ= >
,QQ> ?
$strQQ@ N
,QQN O
MessageBoxButtonsQQP a
.QQa b
OKQQb d
,QQd e
MessageBoxIconQQf t
.QQt u
ErrorQQu z
)QQz {
;QQ{ |
}RR 
}SS 
}TT 
}UU 	
privateVV 
voidVV 2
&SetToolCategoryToolStripMenuItem_ClickVV ;
(VV; <
objectVV< B
senderVVC I
,VVI J
	EventArgsVVK T
eVVU V
)VVV W
{WW 	

NavigationXX 
.XX 
SetToolCategoryXX &
(XX& '
thisXX' +
)XX+ ,
;XX, -
}YY 	
privateZZ 
voidZZ 1
%UpdateToolRateToolStripMenuItem_ClickZZ :
(ZZ: ;
objectZZ; A
senderZZB H
,ZZH I
	EventArgsZZJ S
eZZT U
)ZZU V
{[[ 	

Navigation\\ 
.\\ 

UpdateRate\\ !
(\\! "
this\\" &
)\\& '
;\\' (
}]] 	
private^^ 
void^^ &
AddToolStripMenuItem_Click^^ /
(^^/ 0
object^^0 6
sender^^7 =
,^^= >
	EventArgs^^? H
e^^I J
)^^J K
{__ 	

Navigation`` 
.`` 
AddTool`` 
(`` 
this`` #
)``# $
;``$ %
}aa 	
privatebb 
voidbb .
"UpdateToolsToolStripMenuItem_Clickbb 7
(bb7 8
objectbb8 >
senderbb? E
,bbE F
	EventArgsbbG P
ebbQ R
)bbR S
{cc 	

Navigationdd 
.dd 

UpdateTooldd !
(dd! "
thisdd" &
)dd& '
;dd' (
}ee 	
privateff 
voidff .
"RemoveToolsToolStripMenuItem_Clickff 7
(ff7 8
objectff8 >
senderff? E
,ffE F
	EventArgsffG P
effQ R
)ffR S
{gg 	

Navigationhh 
.hh 

RemoveToolhh !
(hh! "
thishh" &
)hh& '
;hh' (
}ii 	
privatejj 
voidjj ,
 ViewToolsToolStripMenuItem_Clickjj 5
(jj5 6
objectjj6 <
senderjj= C
,jjC D
	EventArgsjjE N
ejjO P
)jjP Q
{kk 	

Navigationll 
.ll 
	ViewToolsll  
(ll  !
thisll! %
)ll% &
;ll& '
}mm 	
privatenn 
voidnn .
"AddCustomerToolStripMenuItem_Clicknn 7
(nn7 8
objectnn8 >
sendernn? E
,nnE F
	EventArgsnnG P
ennQ R
)nnR S
{oo 	

Navigationpp 
.pp 
AddCustomerpp "
(pp" #
thispp# '
)pp' (
;pp( )
}qq 	
privaterr 
voidrr 1
%UpdateCustomerToolStripMenuItem_Clickrr :
(rr: ;
objectrr; A
senderrrB H
,rrH I
	EventArgsrrJ S
errT U
)rrU V
{ss 	

Navigationtt 
.tt 
UpdateCustomertt %
(tt% &
thistt& *
)tt* +
;tt+ ,
}uu 	
privatevv 
voidvv 0
$viewCustomersToolStripMenuItem_Clickvv 9
(vv9 :
objectvv: @
sendervvA G
,vvG H
	EventArgsvvI R
evvS T
)vvT U
{ww 	

Navigationxx 
.xx 
ViewCustomersxx $
(xx$ %
thisxx% )
)xx) *
;xx* +
}yy 	
privatezz 
voidzz +
RentToolToolStripMenuItem_Clickzz 4
(zz4 5
objectzz5 ;
senderzz< B
,zzB C
	EventArgszzD M
ezzN O
)zzO P
{{{ 	

Navigation|| 
.|| 
	RentTools||  
(||  !
this||! %
)||% &
;||& '
}}} 	
private~~ 
void~~ .
"ReturnToolsToolStripMenuItem_Click~~ 7
(~~7 8
object~~8 >
sender~~? E
,~~E F
	EventArgs~~G P
e~~Q R
)~~R S
{ 	

Navigation
ÄÄ 
.
ÄÄ 
ReturnTools
ÄÄ "
(
ÄÄ" #
this
ÄÄ# '
)
ÄÄ' (
;
ÄÄ( )
}
ÅÅ 	
private
ÇÇ 
void
ÇÇ 0
"ViewRentalsToolStripMenuItem_Click
ÇÇ 7
(
ÇÇ7 8
object
ÇÇ8 >
sender
ÇÇ? E
,
ÇÇE F
	EventArgs
ÇÇG P
e
ÇÇQ R
)
ÇÇR S
{
ÉÉ 	

Navigation
ÑÑ 
.
ÑÑ 
ViewRentals
ÑÑ "
(
ÑÑ" #
this
ÑÑ# '
)
ÑÑ' (
;
ÑÑ( )
}
ÖÖ 	
private
ÜÜ 
void
ÜÜ :
,AnnualRevenueAnalysisToolStripMenuItem_Click
ÜÜ A
(
ÜÜA B
object
ÜÜB H
sender
ÜÜI O
,
ÜÜO P
	EventArgs
ÜÜQ Z
e
ÜÜ[ \
)
ÜÜ\ ]
{
áá 	

Navigation
àà 
.
àà 
RevenueAnalysis
àà &
(
àà& '
this
àà' +
)
àà+ ,
;
àà, -
}
ââ 	
private
ää 
void
ää ;
-AnnualToolTypeAnalysisToolStripMenuItem_Click
ää B
(
ääB C
object
ääC I
sender
ääJ P
,
ääP Q
	EventArgs
ääR [
e
ää\ ]
)
ää] ^
{
ãã 	

Navigation
åå 
.
åå 
ToolTypeAnalysis
åå '
(
åå' (
this
åå( ,
)
åå, -
;
åå- .
}
çç 	
private
éé 
void
éé -
MainMenuToolStripMenuItem_Click
éé 4
(
éé4 5
object
éé5 ;
sender
éé< B
,
ééB C
	EventArgs
ééD M
e
ééN O
)
ééO P
{
èè 	

Navigation
êê 
.
êê 
MainMenu
êê 
(
êê  
this
êê  $
)
êê$ %
;
êê% &
}
ëë 	
}
íí 
}ìì √5
LC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\frmMainMenu.cs
	namespace 	
ToolSYS
 
. 
Presentation 
{ 
public 

partial 
class 
frmMainMenu $
:% &
Form' +
{ 
public 
frmMainMenu 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 2
&SetToolCategoryToolStripMenuItem_Click ;
(; <
object< B
senderC I
,I J
	EventArgsK T
eU V
)V W
{ 	

Navigation 
. 
SetToolCategory &
(& '
this' +
)+ ,
;, -
} 	
private 
void 1
%UpdateToolRateToolStripMenuItem_Click :
(: ;
object; A
senderB H
,H I
	EventArgsJ S
eT U
)U V
{ 	

Navigation 
. 

UpdateRate !
(! "
this" &
)& '
;' (
} 	
private 
void &
AddToolStripMenuItem_Click /
(/ 0
object0 6
sender7 =
,= >
	EventArgs? H
eI J
)J K
{ 	

Navigation 
. 
AddTool 
( 
this #
)# $
;$ %
} 	
private 
void .
"UpdateToolsToolStripMenuItem_Click 7
(7 8
object8 >
sender? E
,E F
	EventArgsG P
eQ R
)R S
{   	

Navigation!! 
.!! 

UpdateTool!! !
(!!! "
this!!" &
)!!& '
;!!' (
}"" 	
private## 
void## .
"RemoveToolsToolStripMenuItem_Click## 7
(##7 8
object##8 >
sender##? E
,##E F
	EventArgs##G P
e##Q R
)##R S
{$$ 	

Navigation%% 
.%% 

RemoveTool%% !
(%%! "
this%%" &
)%%& '
;%%' (
}&& 	
private'' 
void'' ,
 ViewToolsToolStripMenuItem_Click'' 5
(''5 6
object''6 <
sender''= C
,''C D
	EventArgs''E N
e''O P
)''P Q
{(( 	

Navigation)) 
.)) 
	ViewTools))  
())  !
this))! %
)))% &
;))& '
}** 	
private++ 
void++ .
"AddCustomerToolStripMenuItem_Click++ 7
(++7 8
object++8 >
sender++? E
,++E F
	EventArgs++G P
e++Q R
)++R S
{,, 	

Navigation-- 
.-- 
AddCustomer-- "
(--" #
this--# '
)--' (
;--( )
}.. 	
private// 
void// 1
%UpdateCustomerToolStripMenuItem_Click// :
(//: ;
object//; A
sender//B H
,//H I
	EventArgs//J S
e//T U
)//U V
{00 	

Navigation11 
.11 
UpdateCustomer11 %
(11% &
this11& *
)11* +
;11+ ,
}22 	
private33 
void33 0
$viewCustomersToolStripMenuItem_Click33 9
(339 :
object33: @
sender33A G
,33G H
	EventArgs33I R
e33S T
)33T U
{44 	

Navigation55 
.55 
ViewCustomers55 $
(55$ %
this55% )
)55) *
;55* +
}66 	
private77 
void77 +
RentToolToolStripMenuItem_Click77 4
(774 5
object775 ;
sender77< B
,77B C
	EventArgs77D M
e77N O
)77O P
{88 	

Navigation99 
.99 
	RentTools99  
(99  !
this99! %
)99% &
;99& '
}:: 	
private;; 
void;; .
"ReturnToolsToolStripMenuItem_Click;; 7
(;;7 8
object;;8 >
sender;;? E
,;;E F
	EventArgs;;G P
e;;Q R
);;R S
{<< 	

Navigation== 
.== 
ReturnTools== "
(==" #
this==# '
)==' (
;==( )
}>> 	
private?? 
void?? .
"ViewRentalsToolStripMenuItem_Click?? 7
(??7 8
object??8 >
sender??? E
,??E F
	EventArgs??G P
e??Q R
)??R S
{@@ 	

NavigationAA 
.AA 
ViewRentalsAA "
(AA" #
thisAA# '
)AA' (
;AA( )
}BB 	
privateCC 
voidCC 8
,AnnualRevenueAnalysisToolStripMenuItem_ClickCC A
(CCA B
objectCCB H
senderCCI O
,CCO P
	EventArgsCCQ Z
eCC[ \
)CC\ ]
{DD 	

NavigationEE 
.EE 
RevenueAnalysisEE &
(EE& '
thisEE' +
)EE+ ,
;EE, -
}FF 	
privateGG 
voidGG 9
-AnnualToolTypeAnalysisToolStripMenuItem_ClickGG B
(GGB C
objectGGC I
senderGGJ P
,GGP Q
	EventArgsGGR [
eGG\ ]
)GG] ^
{HH 	

NavigationII 
.II 
ToolTypeAnalysisII '
(II' (
thisII( ,
)II, -
;II- .
}JJ 	
privateKK 
voidKK +
MainMenuToolStripMenuItem_ClickKK 4
(KK4 5
objectKK5 ;
senderKK< B
,KKB C
	EventArgsKKD M
eKKN O
)KKO P
{LL 	

NavigationMM 
.MM 
MainMenuMM 
(MM  
thisMM  $
)MM$ %
;MM% &
}NN 	
privateOO 
voidOO -
!ExitSystemToolStripMenuItem_ClickOO 6
(OO6 7
objectOO7 =
senderOO> D
,OOD E
	EventArgsOOF O
eOOP Q
)OOQ R
{PP 	
varQQ 
confirmExitQQ 
=QQ 

MessageBoxQQ (
.QQ( )
ShowQQ) -
(QQ- .
$strQQ. N
,QQN O
$strQQP ^
,QQ^ _
MessageBoxButtonsQQ` q
.QQq r
YesNoQQr w
)QQw x
;QQx y
ifSS 
(SS 
confirmExitSS 
==SS 
DialogResultSS +
.SS+ ,
YesSS, /
)SS/ 0
{TT 
ApplicationUU 
.UU 
ExitUU  
(UU  !
)UU! "
;UU" #
}VV 
}WW 	
}XX 
}YY ≈q
ZC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\frmAnnualToolTypeAnalysis.cs
	namespace 	
ToolSYS
 
. 
Presentation 
{ 
public		 

partial		 
class		 %
frmAnnualToolTypeAnalysis		 2
:		3 4
Form		5 9
{

 
private 
AnalysisService 
analysisService  /
;/ 0
private 
RateService 
rateService '
;' (
public %
frmAnnualToolTypeAnalysis (
(( )
)) *
{ 	
InitializeComponent 
(  
)  !
;! "
analysisService 
= 
new !
AnalysisService" 1
(1 2
)2 3
;3 4
rateService 
= 
new 
RateService )
() *
)* +
;+ ,
} 	
private 
void *
frmAnnualToolTypeAnalysis_Load 3
(3 4
object4 :
sender; A
,A B
	EventArgsC L
eM N
)N O
{ 	
LoadCategories 
( 
) 
; 
	LoadYears 
( 
) 
; 
} 	
private 
void 
LoadCategories #
(# $
)$ %
{ 	
cboCategories 
. 
Items 
.  
Clear  %
(% &
)& '
;' (
DataSet 

categories 
=  
rateService! ,
., -
GetAllCategories- =
(= >
)> ?
;? @
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
}$$ 
}%% 	
private'' 
void'' 
	LoadYears'' 
('' 
)''  
{(( 	
try)) 
{** 
	DataTable++ 

yearsTable++ $
=++% &
analysisService++' 6
.++6 7
GetDistinctYears++7 G
(++G H
)++H I
;++I J
cboYears,, 
.,, 
Items,, 
.,, 
Clear,, $
(,,$ %
),,% &
;,,& '
foreach.. 
(.. 
DataRow..  
row..! $
in..% '

yearsTable..( 2
...2 3
Rows..3 7
)..7 8
{// 
cboYears00 
.00 
Items00 "
.00" #
Add00# &
(00& '
row00' *
[00* +
$str00+ 1
]001 2
.002 3
ToString003 ;
(00; <
)00< =
)00= >
;00> ?
}11 
if33 
(33 
cboYears33 
.33 
Items33 "
.33" #
Count33# (
>33) *
$num33+ ,
)33, -
{44 
cboYears55 
.55 
SelectedIndex55 *
=55+ ,
$num55- .
;55. /
}66 
}77 
catch88 
(88 
	Exception88 
ex88 
)88  
{99 

MessageBox:: 
.:: 
Show:: 
(::  
$"::  "
$str::" 7
{::7 8
ex::8 :
.::: ;
Message::; B
}::B C
"::C D
,::D E
$str::F M
,::M N
MessageBoxButtons::O `
.::` a
OK::a c
,::c d
MessageBoxIcon::e s
.::s t
Error::t y
)::y z
;::z {
};; 
}<< 	
private>> 
void>> 
btnConfirm_Click>> %
(>>% &
object>>& ,
sender>>- 3
,>>3 4
	EventArgs>>5 >
e>>? @
)>>@ A
{?? 	
if@@ 
(@@ 
cboCategories@@ 
.@@ 
SelectedIndex@@ +
>=@@, .
$num@@/ 0
&&@@1 3
cboYears@@4 <
.@@< =
SelectedIndex@@= J
>=@@K M
$num@@N O
)@@O P
{AA 
intBB 
yearBB 
=BB 
intBB 
.BB 
ParseBB $
(BB$ %
cboYearsBB% -
.BB- .
SelectedItemBB. :
.BB: ;
ToStringBB; C
(BBC D
)BBD E
)BBE F
;BBF G
stringCC 
categoryCodeCC #
=CC$ %
cboCategoriesCC& 3
.CC3 4
SelectedItemCC4 @
.CC@ A
ToStringCCA I
(CCI J
)CCJ K
.CCK L
	SubstringCCL U
(CCU V
$numCCV W
,CCW X
$numCCY Z
)CCZ [
;CC[ \
	FillChartDD 
(DD 
yearDD 
,DD 
categoryCodeDD  ,
)DD, -
;DD- .
}EE 
elseFF 
{GG 

MessageBoxHH 
.HH 
ShowHH 
(HH  
$strHH  L
,HHL M
$strHHN a
,HHa b
MessageBoxButtonsHHc t
.HHt u
OKHHu w
,HHw x
MessageBoxIcon	HHy á
.
HHá à
Warning
HHà è
)
HHè ê
;
HHê ë
}II 
}JJ 	
privateLL 
voidLL 
	FillChartLL 
(LL 
intLL "
yearLL# '
,LL' (
stringLL) /
categoryCodeLL0 <
)LL< =
{MM 	
tryNN 
{OO 
varPP 
(PP 
monthsPP 
,PP 
rentalsPP $
)PP$ %
=PP& '
analysisServicePP( 7
.PP7 8!
GetMonthlyToolRentalsPP8 M
(PPM N
yearPPN R
,PPR S
categoryCodePPT `
)PP` a
;PPa b

formsPlot1SS 
.SS 
PlotSS 
.SS  
ClearSS  %
(SS% &
)SS& '
;SS' (

formsPlot1TT 
.TT 
PlotTT 
.TT  
AddBarTT  &
(TT& '
rentalsTT' .
)TT. /
;TT/ 0
doubleWW 
[WW 
]WW 

xPositionsWW #
=WW$ %

EnumerableWW& 0
.WW0 1
RangeWW1 6
(WW6 7
$numWW7 8
,WW8 9
$numWW: <
)WW< =
.WW= >
SelectWW> D
(WWD E
iWWE F
=>WWG I
(WWJ K
doubleWWK Q
)WWQ R
iWWR S
)WWS T
.WWT U
ToArrayWWU \
(WW\ ]
)WW] ^
;WW^ _

formsPlot1XX 
.XX 
PlotXX 
.XX  
XTicksXX  &
(XX& '

xPositionsXX' 1
,XX1 2
monthsXX3 9
)XX9 :
;XX: ;

formsPlot1ZZ 
.ZZ 
PlotZZ 
.ZZ  
TitleZZ  %
(ZZ% &
$"ZZ& (
$strZZ( 8
{ZZ8 9
yearZZ9 =
}ZZ= >
$strZZ> L
{ZZL M
categoryCodeZZM Y
}ZZY Z
"ZZZ [
)ZZ[ \
;ZZ\ ]

formsPlot1[[ 
.[[ 
Plot[[ 
.[[  
YLabel[[  &
([[& '
$str[[' :
)[[: ;
;[[; <

formsPlot1\\ 
.\\ 
Plot\\ 
.\\  
XLabel\\  &
(\\& '
$str\\' /
)\\/ 0
;\\0 1

formsPlot1^^ 
.^^ 
Refresh^^ "
(^^" #
)^^# $
;^^$ %
}__ 
catch`` 
(`` 
	Exception`` 
ex`` 
)``  
{aa 

MessageBoxbb 
.bb 
Showbb 
(bb  
$"bb  "
$strbb" :
{bb: ;
exbb; =
.bb= >
Messagebb> E
}bbE F
"bbF G
,bbG H
$strbbI P
,bbP Q
MessageBoxButtonsbbR c
.bbc d
OKbbd f
,bbf g
MessageBoxIconbbh v
.bbv w
Errorbbw |
)bb| }
;bb} ~
}cc 
}dd 	
privateee 
voidee 2
&SetToolCategoryToolStripMenuItem_Clickee ;
(ee; <
objectee< B
sendereeC I
,eeI J
	EventArgseeK T
eeeU V
)eeV W
{ff 	

Navigationgg 
.gg 
SetToolCategorygg &
(gg& '
thisgg' +
)gg+ ,
;gg, -
}hh 	
privateii 
voidii 1
%UpdateToolRateToolStripMenuItem_Clickii :
(ii: ;
objectii; A
senderiiB H
,iiH I
	EventArgsiiJ S
eiiT U
)iiU V
{jj 	

Navigationkk 
.kk 

UpdateRatekk !
(kk! "
thiskk" &
)kk& '
;kk' (
}ll 	
privatemm 
voidmm &
AddToolStripMenuItem_Clickmm /
(mm/ 0
objectmm0 6
sendermm7 =
,mm= >
	EventArgsmm? H
emmI J
)mmJ K
{nn 	

Navigationoo 
.oo 
AddTooloo 
(oo 
thisoo #
)oo# $
;oo$ %
}pp 	
privateqq 
voidqq .
"UpdateToolsToolStripMenuItem_Clickqq 7
(qq7 8
objectqq8 >
senderqq? E
,qqE F
	EventArgsqqG P
eqqQ R
)qqR S
{rr 	

Navigationss 
.ss 

UpdateToolss !
(ss! "
thisss" &
)ss& '
;ss' (
}tt 	
privateuu 
voiduu .
"RemoveToolsToolStripMenuItem_Clickuu 7
(uu7 8
objectuu8 >
senderuu? E
,uuE F
	EventArgsuuG P
euuQ R
)uuR S
{vv 	

Navigationww 
.ww 

RemoveToolww !
(ww! "
thisww" &
)ww& '
;ww' (
}xx 	
privateyy 
voidyy ,
 ViewToolsToolStripMenuItem_Clickyy 5
(yy5 6
objectyy6 <
senderyy= C
,yyC D
	EventArgsyyE N
eyyO P
)yyP Q
{zz 	

Navigation{{ 
.{{ 
	ViewTools{{  
({{  !
this{{! %
){{% &
;{{& '
}|| 	
private}} 
void}} .
"AddCustomerToolStripMenuItem_Click}} 7
(}}7 8
object}}8 >
sender}}? E
,}}E F
	EventArgs}}G P
e}}Q R
)}}R S
{~~ 	

Navigation 
. 
AddCustomer "
(" #
this# '
)' (
;( )
}
ÄÄ 	
private
ÅÅ 
void
ÅÅ 3
%UpdateCustomerToolStripMenuItem_Click
ÅÅ :
(
ÅÅ: ;
object
ÅÅ; A
sender
ÅÅB H
,
ÅÅH I
	EventArgs
ÅÅJ S
e
ÅÅT U
)
ÅÅU V
{
ÇÇ 	

Navigation
ÉÉ 
.
ÉÉ 
UpdateCustomer
ÉÉ %
(
ÉÉ% &
this
ÉÉ& *
)
ÉÉ* +
;
ÉÉ+ ,
}
ÑÑ 	
private
ÖÖ 
void
ÖÖ 2
$viewCustomersToolStripMenuItem_Click
ÖÖ 9
(
ÖÖ9 :
object
ÖÖ: @
sender
ÖÖA G
,
ÖÖG H
	EventArgs
ÖÖI R
e
ÖÖS T
)
ÖÖT U
{
ÜÜ 	

Navigation
áá 
.
áá 
ViewCustomers
áá $
(
áá$ %
this
áá% )
)
áá) *
;
áá* +
}
àà 	
private
ââ 
void
ââ -
RentToolToolStripMenuItem_Click
ââ 4
(
ââ4 5
object
ââ5 ;
sender
ââ< B
,
ââB C
	EventArgs
ââD M
e
ââN O
)
ââO P
{
ää 	

Navigation
ãã 
.
ãã 
	RentTools
ãã  
(
ãã  !
this
ãã! %
)
ãã% &
;
ãã& '
}
åå 	
private
çç 
void
çç 0
"ReturnToolsToolStripMenuItem_Click
çç 7
(
çç7 8
object
çç8 >
sender
çç? E
,
ççE F
	EventArgs
ççG P
e
ççQ R
)
ççR S
{
éé 	

Navigation
èè 
.
èè 
ReturnTools
èè "
(
èè" #
this
èè# '
)
èè' (
;
èè( )
}
êê 	
private
ëë 
void
ëë 0
"ViewRentalsToolStripMenuItem_Click
ëë 7
(
ëë7 8
object
ëë8 >
sender
ëë? E
,
ëëE F
	EventArgs
ëëG P
e
ëëQ R
)
ëëR S
{
íí 	

Navigation
ìì 
.
ìì 
ViewRentals
ìì "
(
ìì" #
this
ìì# '
)
ìì' (
;
ìì( )
}
îî 	
private
ïï 
void
ïï :
,AnnualRevenueAnalysisToolStripMenuItem_Click
ïï A
(
ïïA B
object
ïïB H
sender
ïïI O
,
ïïO P
	EventArgs
ïïQ Z
e
ïï[ \
)
ïï\ ]
{
ññ 	

Navigation
óó 
.
óó 
RevenueAnalysis
óó &
(
óó& '
this
óó' +
)
óó+ ,
;
óó, -
}
òò 	
private
ôô 
void
ôô ;
-AnnualToolTypeAnalysisToolStripMenuItem_Click
ôô B
(
ôôB C
object
ôôC I
sender
ôôJ P
,
ôôP Q
	EventArgs
ôôR [
e
ôô\ ]
)
ôô] ^
{
öö 	

Navigation
õõ 
.
õõ 
ToolTypeAnalysis
õõ '
(
õõ' (
this
õõ( ,
)
õõ, -
;
õõ- .
}
úú 	
private
ùù 
void
ùù -
MainMenuToolStripMenuItem_Click
ùù 4
(
ùù4 5
object
ùù5 ;
sender
ùù< B
,
ùùB C
	EventArgs
ùùD M
e
ùùN O
)
ùùO P
{
ûû 	

Navigation
üü 
.
üü 
MainMenu
üü 
(
üü  
this
üü  $
)
üü$ %
;
üü% &
}
†† 	
}
££ 
}§§ Õb
YC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\frmAnnualRevenueAnalysis.cs
	namespace 	
ToolSYS
 
. 
Presentation 
{ 
public		 

partial		 
class		 $
frmAnnualRevenueAnalysis		 1
:		2 3
Form		4 8
{

 
private 
readonly 
AnalysisService (
analysisService) 8
;8 9
public $
frmAnnualRevenueAnalysis '
(' (
)( )
{ 	
InitializeComponent 
(  
)  !
;! "
analysisService 
= 
new !
AnalysisService" 1
(1 2
)2 3
;3 4
} 	
private 
void )
frmAnnualRevenueAnalysis_Load 2
(2 3
object3 9
sender: @
,@ A
	EventArgsB K
eL M
)M N
{ 	
	LoadYears 
( 
) 
; 
} 	
private 
void 
	LoadYears 
( 
)  
{ 	
try 
{ 
	DataTable 

yearsTable $
=% &
analysisService' 6
.6 7
GetDistinctYears7 G
(G H
)H I
;I J
cboYears 
. 
Items 
. 
Clear $
($ %
)% &
;& '
foreach 
( 
DataRow  
row! $
in% '

yearsTable( 2
.2 3
Rows3 7
)7 8
{   
cboYears!! 
.!! 
Items!! "
.!!" #
Add!!# &
(!!& '
row!!' *
[!!* +
$str!!+ 1
]!!1 2
.!!2 3
ToString!!3 ;
(!!; <
)!!< =
)!!= >
;!!> ?
}"" 
if$$ 
($$ 
cboYears$$ 
.$$ 
Items$$ "
.$$" #
Count$$# (
>$$) *
$num$$+ ,
)$$, -
{%% 
cboYears&& 
.&& 
SelectedIndex&& *
=&&+ ,
$num&&- .
;&&. /
}'' 
}(( 
catch)) 
()) 
	Exception)) 
ex)) 
)))  
{** 

MessageBox++ 
.++ 
Show++ 
(++  
$"++  "
$str++" 7
{++7 8
ex++8 :
.++: ;
Message++; B
}++B C
"++C D
,++D E
$str++F M
,++M N
MessageBoxButtons++O `
.++` a
OK++a c
,++c d
MessageBoxIcon++e s
.++s t
Error++t y
)++y z
;++z {
},, 
}-- 	
private// 
void// )
cboYears_SelectedIndexChanged// 2
(//2 3
object//3 9
sender//: @
,//@ A
	EventArgs//B K
e//L M
)//M N
{00 	
if11 
(11 
cboYears11 
.11 
SelectedItem11 %
!=11& (
null11) -
)11- .
{22 
try33 
{44 
int55 
selectedYear55 $
=55% &
int55' *
.55* +
Parse55+ 0
(550 1
cboYears551 9
.559 :
SelectedItem55: F
.55F G
ToString55G O
(55O P
)55P Q
)55Q R
;55R S
PerformAnalysis66 #
(66# $
selectedYear66$ 0
)660 1
;661 2
}77 
catch88 
(88 
	Exception88  
ex88! #
)88# $
{99 

MessageBox:: 
.:: 
Show:: #
(::# $
$"::$ &
$str::& B
{::B C
ex::C E
.::E F
Message::F M
}::M N
"::N O
,::O P
$str::Q X
,::X Y
MessageBoxButtons::Z k
.::k l
OK::l n
,::n o
MessageBoxIcon::p ~
.::~ 
Error	:: Ñ
)
::Ñ Ö
;
::Ö Ü
};; 
}<< 
}== 	
private?? 
void?? 
PerformAnalysis?? $
(??$ %
int??% (
year??) -
)??- .
{@@ 	
tryAA 
{BB 
varCC 
(CC 
monthsCC 
,CC 
revenuesCC %
)CC% &
=CC' (
analysisServiceCC) 8
.CC8 9
GetMonthlyRevenuesCC9 K
(CCK L
yearCCL P
)CCP Q
;CCQ R

formsPlot1FF 
.FF 
PlotFF 
.FF  
ClearFF  %
(FF% &
)FF& '
;FF' (

formsPlot1GG 
.GG 
PlotGG 
.GG  
AddBarGG  &
(GG& '
revenuesGG' /
)GG/ 0
;GG0 1
doubleJJ 
[JJ 
]JJ 

xPositionsJJ #
=JJ$ %

EnumerableJJ& 0
.JJ0 1
RangeJJ1 6
(JJ6 7
$numJJ7 8
,JJ8 9
$numJJ: <
)JJ< =
.JJ= >
SelectJJ> D
(JJD E
iJJE F
=>JJG I
(JJJ K
doubleJJK Q
)JJQ R
iJJR S
)JJS T
.JJT U
ToArrayJJU \
(JJ\ ]
)JJ] ^
;JJ^ _

formsPlot1KK 
.KK 
PlotKK 
.KK  
XTicksKK  &
(KK& '

xPositionsKK' 1
,KK1 2
monthsKK3 9
)KK9 :
;KK: ;

formsPlot1MM 
.MM 
PlotMM 
.MM  
TitleMM  %
(MM% &
$"MM& (
$strMM( :
{MM: ;
yearMM; ?
}MM? @
"MM@ A
)MMA B
;MMB C

formsPlot1NN 
.NN 
PlotNN 
.NN  
YLabelNN  &
(NN& '
$strNN' 0
)NN0 1
;NN1 2

formsPlot1OO 
.OO 
PlotOO 
.OO  
XLabelOO  &
(OO& '
$strOO' /
)OO/ 0
;OO0 1

formsPlot1QQ 
.QQ 
RefreshQQ "
(QQ" #
)QQ# $
;QQ$ %
}RR 
catchSS 
(SS 
	ExceptionSS 
exSS 
)SS  
{TT 

MessageBoxUU 
.UU 
ShowUU 
(UU  
$"UU  "
$strUU" :
{UU: ;
exUU; =
.UU= >
MessageUU> E
}UUE F
"UUF G
,UUG H
$strUUI P
,UUP Q
MessageBoxButtonsUUR c
.UUc d
OKUUd f
,UUf g
MessageBoxIconUUh v
.UUv w
ErrorUUw |
)UU| }
;UU} ~
}VV 
}WW 	
privateYY 
voidYY 2
&SetToolCategoryToolStripMenuItem_ClickYY ;
(YY; <
objectYY< B
senderYYC I
,YYI J
	EventArgsYYK T
eYYU V
)YYV W
{ZZ 	

Navigation[[ 
.[[ 
SetToolCategory[[ &
([[& '
this[[' +
)[[+ ,
;[[, -
}\\ 	
private]] 
void]] 1
%UpdateToolRateToolStripMenuItem_Click]] :
(]]: ;
object]]; A
sender]]B H
,]]H I
	EventArgs]]J S
e]]T U
)]]U V
{^^ 	

Navigation__ 
.__ 

UpdateRate__ !
(__! "
this__" &
)__& '
;__' (
}`` 	
privateaa 
voidaa &
AddToolStripMenuItem_Clickaa /
(aa/ 0
objectaa0 6
senderaa7 =
,aa= >
	EventArgsaa? H
eaaI J
)aaJ K
{bb 	

Navigationcc 
.cc 
AddToolcc 
(cc 
thiscc #
)cc# $
;cc$ %
}dd 	
privateee 
voidee .
"UpdateToolsToolStripMenuItem_Clickee 7
(ee7 8
objectee8 >
senderee? E
,eeE F
	EventArgseeG P
eeeQ R
)eeR S
{ff 	

Navigationgg 
.gg 

UpdateToolgg !
(gg! "
thisgg" &
)gg& '
;gg' (
}hh 	
privateii 
voidii .
"RemoveToolsToolStripMenuItem_Clickii 7
(ii7 8
objectii8 >
senderii? E
,iiE F
	EventArgsiiG P
eiiQ R
)iiR S
{jj 	

Navigationkk 
.kk 

RemoveToolkk !
(kk! "
thiskk" &
)kk& '
;kk' (
}ll 	
privatemm 
voidmm ,
 ViewToolsToolStripMenuItem_Clickmm 5
(mm5 6
objectmm6 <
sendermm= C
,mmC D
	EventArgsmmE N
emmO P
)mmP Q
{nn 	

Navigationoo 
.oo 
	ViewToolsoo  
(oo  !
thisoo! %
)oo% &
;oo& '
}pp 	
privateqq 
voidqq .
"AddCustomerToolStripMenuItem_Clickqq 7
(qq7 8
objectqq8 >
senderqq? E
,qqE F
	EventArgsqqG P
eqqQ R
)qqR S
{rr 	

Navigationss 
.ss 
AddCustomerss "
(ss" #
thisss# '
)ss' (
;ss( )
}tt 	
privateuu 
voiduu 1
%UpdateCustomerToolStripMenuItem_Clickuu :
(uu: ;
objectuu; A
senderuuB H
,uuH I
	EventArgsuuJ S
euuT U
)uuU V
{vv 	

Navigationww 
.ww 
UpdateCustomerww %
(ww% &
thisww& *
)ww* +
;ww+ ,
}xx 	
privateyy 
voidyy 0
$viewCustomersToolStripMenuItem_Clickyy 9
(yy9 :
objectyy: @
senderyyA G
,yyG H
	EventArgsyyI R
eyyS T
)yyT U
{zz 	

Navigation{{ 
.{{ 
ViewCustomers{{ $
({{$ %
this{{% )
){{) *
;{{* +
}|| 	
private}} 
void}} +
RentToolToolStripMenuItem_Click}} 4
(}}4 5
object}}5 ;
sender}}< B
,}}B C
	EventArgs}}D M
e}}N O
)}}O P
{~~ 	

Navigation 
. 
	RentTools  
(  !
this! %
)% &
;& '
}
ÄÄ 	
private
ÅÅ 
void
ÅÅ 0
"ReturnToolsToolStripMenuItem_Click
ÅÅ 7
(
ÅÅ7 8
object
ÅÅ8 >
sender
ÅÅ? E
,
ÅÅE F
	EventArgs
ÅÅG P
e
ÅÅQ R
)
ÅÅR S
{
ÇÇ 	

Navigation
ÉÉ 
.
ÉÉ 
ReturnTools
ÉÉ "
(
ÉÉ" #
this
ÉÉ# '
)
ÉÉ' (
;
ÉÉ( )
}
ÑÑ 	
private
ÖÖ 
void
ÖÖ 0
"ViewRentalsToolStripMenuItem_Click
ÖÖ 7
(
ÖÖ7 8
object
ÖÖ8 >
sender
ÖÖ? E
,
ÖÖE F
	EventArgs
ÖÖG P
e
ÖÖQ R
)
ÖÖR S
{
ÜÜ 	

Navigation
áá 
.
áá 
ViewRentals
áá "
(
áá" #
this
áá# '
)
áá' (
;
áá( )
}
àà 	
private
ââ 
void
ââ :
,AnnualRevenueAnalysisToolStripMenuItem_Click
ââ A
(
ââA B
object
ââB H
sender
ââI O
,
ââO P
	EventArgs
ââQ Z
e
ââ[ \
)
ââ\ ]
{
ää 	

Navigation
ãã 
.
ãã 
RevenueAnalysis
ãã &
(
ãã& '
this
ãã' +
)
ãã+ ,
;
ãã, -
}
åå 	
private
çç 
void
çç ;
-AnnualToolTypeAnalysisToolStripMenuItem_Click
çç B
(
ççB C
object
ççC I
sender
ççJ P
,
ççP Q
	EventArgs
ççR [
e
çç\ ]
)
çç] ^
{
éé 	

Navigation
èè 
.
èè 
ToolTypeAnalysis
èè '
(
èè' (
this
èè( ,
)
èè, -
;
èè- .
}
êê 	
private
ëë 
void
ëë -
MainMenuToolStripMenuItem_Click
ëë 4
(
ëë4 5
object
ëë5 ;
sender
ëë< B
,
ëëB C
	EventArgs
ëëD M
e
ëëN O
)
ëëO P
{
íí 	

Navigation
ìì 
.
ìì 
MainMenu
ìì 
(
ìì  
this
ìì  $
)
ìì$ %
;
ìì% &
}
îî 	
}
ïï 
}ññ ∏\
KC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\frmAddTool.cs
	namespace 	
ToolSYS
 
. 
Presentation 
{ 
public 

partial 
class 

frmAddTool #
:$ %
Form& *
{ 
private 
ToolService 
toolService '
;' (
private 
RateService 
rateService '
;' (
public 

frmAddTool 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
toolService 
= 
new 
ToolService )
() *
)* +
;+ ,
rateService 
= 
new 
RateService )
() *
)* +
;+ ,
} 	
private 
void 
frmAddTool_Load $
($ %
object% +
sender, 2
,2 3
	EventArgs4 =
e> ?
)? @
{ 	
	txtToolID 
. 
Text 
= 
toolService (
.( )
GetNextToolID) 6
(6 7
)7 8
.8 9
ToString9 A
(A B
$strB G
)G H
;H I
cboCategories 
. 
Items 
.  
Add  #
(# $
$str$ &
)& '
;' (
DataSet   

categories   
=    
rateService  ! ,
.  , -
GetAllCategories  - =
(  = >
)  > ?
;  ? @
foreach"" 
("" 
DataRow"" 
row""  
in""! #

categories""$ .
."". /
Tables""/ 5
[""5 6
$num""6 7
]""7 8
.""8 9
Rows""9 =
)""= >
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
}&& 
}'' 	
private)) 
void)) 
btnConfirm_Click)) %
())% &
object))& ,
sender))- 3
,))3 4
	EventArgs))5 >
e))? @
)))@ A
{** 	
try++ 
{,, 
if-- 
(-- 
cboCategories-- !
.--! "
SelectedIndex--" /
<--0 1
$num--2 3
)--3 4
{.. 

MessageBox// 
.// 
Show// #
(//# $
$str//$ D
,//D E
$str//F O
,//O P
MessageBoxButtons//Q b
.//b c
OK//c e
,//e f
MessageBoxIcon//g u
.//u v
Error//v {
)//{ |
;//| }
cboCategories00 !
.00! "
Focus00" '
(00' (
)00( )
;00) *
return11 
;11 
}22 
int44 
toolID44 
=44 
Convert44 $
.44$ %
ToInt3244% ,
(44, -
	txtToolID44- 6
.446 7
Text447 ;
)44; <
;44< =
string55 
categoryCode55 #
=55$ %
cboCategories55& 3
.553 4
SelectedItem554 @
.55@ A
ToString55A I
(55I J
)55J K
.55K L
	Substring55L U
(55U V
$num55V W
,55W X
$num55Y Z
)55Z [
;55[ \
string66 
description66 "
=66# $
txtDescription66% 3
.663 4
Text664 8
;668 9
string77 
manufacturer77 #
=77$ %
txtManufacturer77& 5
.775 6
Text776 :
;77: ;
Tool99 
tool99 
=99 
new99 
Tool99  $
{:: 
toolID;; 
=;; 
toolID;; #
,;;# $
categoryCode<<  
=<<! "
categoryCode<<# /
,<</ 0
toolDescription== #
===$ %
description==& 1
,==1 2
toolManufacturer>> $
=>>% &
manufacturer>>' 3
}?? 
;?? 
toolServiceAA 
.AA 
AddToolAA #
(AA# $
toolAA$ (
)AA( )
;AA) *

MessageBoxCC 
.CC 
ShowCC 
(CC  
$strCC  G
,CCG H
$strCCI V
,CCV W
MessageBoxButtonsCCX i
.CCi j
OKCCj l
,CCl m
MessageBoxIconCCn |
.CC| }
Information	CC} à
)
CCà â
;
CCâ ä
txtDescriptionEE 
.EE 
ClearEE $
(EE$ %
)EE% &
;EE& '
txtManufacturerFF 
.FF  
ClearFF  %
(FF% &
)FF& '
;FF' (
cboCategoriesGG 
.GG 
SelectedIndexGG +
=GG, -
-GG. /
$numGG/ 0
;GG0 1
	txtToolIDHH 
.HH 
TextHH 
=HH  
toolServiceHH! ,
.HH, -
GetNextToolIDHH- :
(HH: ;
)HH; <
.HH< =
ToStringHH= E
(HHE F
$strHHF K
)HHK L
;HHL M
}II 
catchJJ 
(JJ 
	ExceptionJJ 
exJJ 
)JJ  
{KK 

MessageBoxLL 
.LL 
ShowLL 
(LL  
$"LL  "
$strLL" )
{LL) *
exLL* ,
.LL, -
MessageLL- 4
}LL4 5
"LL5 6
,LL6 7
$strLL8 ?
,LL? @
MessageBoxButtonsLLA R
.LLR S
OKLLS U
,LLU V
MessageBoxIconLLW e
.LLe f
ErrorLLf k
)LLk l
;LLl m
}MM 
}NN 	
privatePP 
voidPP 2
&SetToolCategoryToolStripMenuItem_ClickPP ;
(PP; <
objectPP< B
senderPPC I
,PPI J
	EventArgsPPK T
ePPU V
)PPV W
{QQ 	

NavigationRR 
.RR 
SetToolCategoryRR &
(RR& '
thisRR' +
)RR+ ,
;RR, -
}SS 	
privateTT 
voidTT 1
%UpdateToolRateToolStripMenuItem_ClickTT :
(TT: ;
objectTT; A
senderTTB H
,TTH I
	EventArgsTTJ S
eTTT U
)TTU V
{UU 	

NavigationVV 
.VV 

UpdateRateVV !
(VV! "
thisVV" &
)VV& '
;VV' (
}WW 	
privateXX 
voidXX &
AddToolStripMenuItem_ClickXX /
(XX/ 0
objectXX0 6
senderXX7 =
,XX= >
	EventArgsXX? H
eXXI J
)XXJ K
{YY 	

NavigationZZ 
.ZZ 
AddToolZZ 
(ZZ 
thisZZ #
)ZZ# $
;ZZ$ %
}[[ 	
private\\ 
void\\ .
"UpdateToolsToolStripMenuItem_Click\\ 7
(\\7 8
object\\8 >
sender\\? E
,\\E F
	EventArgs\\G P
e\\Q R
)\\R S
{]] 	

Navigation^^ 
.^^ 

UpdateTool^^ !
(^^! "
this^^" &
)^^& '
;^^' (
}__ 	
private`` 
void`` .
"RemoveToolsToolStripMenuItem_Click`` 7
(``7 8
object``8 >
sender``? E
,``E F
	EventArgs``G P
e``Q R
)``R S
{aa 	

Navigationbb 
.bb 

RemoveToolbb !
(bb! "
thisbb" &
)bb& '
;bb' (
}cc 	
privatedd 
voiddd ,
 ViewToolsToolStripMenuItem_Clickdd 5
(dd5 6
objectdd6 <
senderdd= C
,ddC D
	EventArgsddE N
eddO P
)ddP Q
{ee 	

Navigationff 
.ff 
	ViewToolsff  
(ff  !
thisff! %
)ff% &
;ff& '
}gg 	
privatehh 
voidhh .
"AddCustomerToolStripMenuItem_Clickhh 7
(hh7 8
objecthh8 >
senderhh? E
,hhE F
	EventArgshhG P
ehhQ R
)hhR S
{ii 	

Navigationjj 
.jj 
AddCustomerjj "
(jj" #
thisjj# '
)jj' (
;jj( )
}kk 	
privatell 
voidll 1
%UpdateCustomerToolStripMenuItem_Clickll :
(ll: ;
objectll; A
senderllB H
,llH I
	EventArgsllJ S
ellT U
)llU V
{mm 	

Navigationnn 
.nn 
UpdateCustomernn %
(nn% &
thisnn& *
)nn* +
;nn+ ,
}oo 	
privatepp 
voidpp 0
$viewCustomersToolStripMenuItem_Clickpp 9
(pp9 :
objectpp: @
senderppA G
,ppG H
	EventArgsppI R
eppS T
)ppT U
{qq 	

Navigationrr 
.rr 
ViewCustomersrr $
(rr$ %
thisrr% )
)rr) *
;rr* +
}ss 	
privatett 
voidtt +
RentToolToolStripMenuItem_Clicktt 4
(tt4 5
objecttt5 ;
sendertt< B
,ttB C
	EventArgsttD M
ettN O
)ttO P
{uu 	

Navigationvv 
.vv 
	RentToolsvv  
(vv  !
thisvv! %
)vv% &
;vv& '
}ww 	
privatexx 
voidxx .
"ReturnToolsToolStripMenuItem_Clickxx 7
(xx7 8
objectxx8 >
senderxx? E
,xxE F
	EventArgsxxG P
exxQ R
)xxR S
{yy 	

Navigationzz 
.zz 
ReturnToolszz "
(zz" #
thiszz# '
)zz' (
;zz( )
}{{ 	
private|| 
void|| .
"ViewRentalsToolStripMenuItem_Click|| 7
(||7 8
object||8 >
sender||? E
,||E F
	EventArgs||G P
e||Q R
)||R S
{}} 	

Navigation~~ 
.~~ 
ViewRentals~~ "
(~~" #
this~~# '
)~~' (
;~~( )
} 	
private
ÄÄ 
void
ÄÄ :
,AnnualRevenueAnalysisToolStripMenuItem_Click
ÄÄ A
(
ÄÄA B
object
ÄÄB H
sender
ÄÄI O
,
ÄÄO P
	EventArgs
ÄÄQ Z
e
ÄÄ[ \
)
ÄÄ\ ]
{
ÅÅ 	

Navigation
ÇÇ 
.
ÇÇ 
RevenueAnalysis
ÇÇ &
(
ÇÇ& '
this
ÇÇ' +
)
ÇÇ+ ,
;
ÇÇ, -
}
ÉÉ 	
private
ÑÑ 
void
ÑÑ ;
-AnnualToolTypeAnalysisToolStripMenuItem_Click
ÑÑ B
(
ÑÑB C
object
ÑÑC I
sender
ÑÑJ P
,
ÑÑP Q
	EventArgs
ÑÑR [
e
ÑÑ\ ]
)
ÑÑ] ^
{
ÖÖ 	

Navigation
ÜÜ 
.
ÜÜ 
ToolTypeAnalysis
ÜÜ '
(
ÜÜ' (
this
ÜÜ( ,
)
ÜÜ, -
;
ÜÜ- .
}
áá 	
private
àà 
void
àà -
MainMenuToolStripMenuItem_Click
àà 4
(
àà4 5
object
àà5 ;
sender
àà< B
,
ààB C
	EventArgs
ààD M
e
ààN O
)
ààO P
{
ââ 	

Navigation
ää 
.
ää 
MainMenu
ää 
(
ää  
this
ää  $
)
ää$ %
;
ää% &
}
ãã 	
}
åå 
}çç œL
OC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\frmAddCustomer.cs
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
frmAddCustomer '
:( )
Form* .
{ 
private 
CustomerService 
_customerService  0
;0 1
public 
frmAddCustomer 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
_customerService 
= 
new "
CustomerService# 2
(2 3
)3 4
;4 5
} 	
private 
void 
frmAddCustomer_Load (
(( )
object) /
sender0 6
,6 7
	EventArgs8 A
eB C
)C D
{ 	
txtCustomerID 
. 
Text 
=  
_customerService! 1
.1 2
GetNextCustomerID2 C
(C D
)D E
.E F
ToStringF N
(N O
$strO U
)U V
;V W
} 	
private 
void 2
&SetToolCategoryToolStripMenuItem_Click ;
(; <
object< B
senderC I
,I J
	EventArgsK T
eU V
)V W
{ 	

Navigation 
. 
SetToolCategory &
(& '
this' +
)+ ,
;, -
} 	
private   
void   1
%UpdateToolRateToolStripMenuItem_Click   :
(  : ;
object  ; A
sender  B H
,  H I
	EventArgs  J S
e  T U
)  U V
{!! 	

Navigation"" 
."" 

UpdateRate"" !
(""! "
this""" &
)""& '
;""' (
}## 	
private$$ 
void$$ &
AddToolStripMenuItem_Click$$ /
($$/ 0
object$$0 6
sender$$7 =
,$$= >
	EventArgs$$? H
e$$I J
)$$J K
{%% 	

Navigation&& 
.&& 
AddTool&& 
(&& 
this&& #
)&&# $
;&&$ %
}'' 	
private(( 
void(( .
"UpdateToolsToolStripMenuItem_Click(( 7
(((7 8
object((8 >
sender((? E
,((E F
	EventArgs((G P
e((Q R
)((R S
{)) 	

Navigation** 
.** 

UpdateTool** !
(**! "
this**" &
)**& '
;**' (
}++ 	
private,, 
void,, .
"RemoveToolsToolStripMenuItem_Click,, 7
(,,7 8
object,,8 >
sender,,? E
,,,E F
	EventArgs,,G P
e,,Q R
),,R S
{-- 	

Navigation.. 
... 

RemoveTool.. !
(..! "
this.." &
)..& '
;..' (
}// 	
private00 
void00 ,
 ViewToolsToolStripMenuItem_Click00 5
(005 6
object006 <
sender00= C
,00C D
	EventArgs00E N
e00O P
)00P Q
{11 	

Navigation22 
.22 
	ViewTools22  
(22  !
this22! %
)22% &
;22& '
}33 	
private44 
void44 .
"AddCustomerToolStripMenuItem_Click44 7
(447 8
object448 >
sender44? E
,44E F
	EventArgs44G P
e44Q R
)44R S
{55 	

Navigation66 
.66 
AddCustomer66 "
(66" #
this66# '
)66' (
;66( )
}77 	
private88 
void88 1
%UpdateCustomerToolStripMenuItem_Click88 :
(88: ;
object88; A
sender88B H
,88H I
	EventArgs88J S
e88T U
)88U V
{99 	

Navigation:: 
.:: 
UpdateCustomer:: %
(::% &
this::& *
)::* +
;::+ ,
};; 	
private<< 
void<< +
RentToolToolStripMenuItem_Click<< 4
(<<4 5
object<<5 ;
sender<<< B
,<<B C
	EventArgs<<D M
e<<N O
)<<O P
{== 	

Navigation>> 
.>> 
	RentTools>>  
(>>  !
this>>! %
)>>% &
;>>& '
}?? 	
private@@ 
void@@ .
"ReturnToolsToolStripMenuItem_Click@@ 7
(@@7 8
object@@8 >
sender@@? E
,@@E F
	EventArgs@@G P
e@@Q R
)@@R S
{AA 	

NavigationBB 
.BB 
ReturnToolsBB "
(BB" #
thisBB# '
)BB' (
;BB( )
}CC 	
privateDD 
voidDD .
"ViewRentalsToolStripMenuItem_ClickDD 7
(DD7 8
objectDD8 >
senderDD? E
,DDE F
	EventArgsDDG P
eDDQ R
)DDR S
{EE 	

NavigationFF 
.FF 
ViewRentalsFF "
(FF" #
thisFF# '
)FF' (
;FF( )
}GG 	
privateHH 
voidHH 8
,AnnualRevenueAnalysisToolStripMenuItem_ClickHH A
(HHA B
objectHHB H
senderHHI O
,HHO P
	EventArgsHHQ Z
eHH[ \
)HH\ ]
{II 	

NavigationJJ 
.JJ 
RevenueAnalysisJJ &
(JJ& '
thisJJ' +
)JJ+ ,
;JJ, -
}KK 	
privateLL 
voidLL 9
-AnnualToolTypeAnalysisToolStripMenuItem_ClickLL B
(LLB C
objectLLC I
senderLLJ P
,LLP Q
	EventArgsLLR [
eLL\ ]
)LL] ^
{MM 	

NavigationNN 
.NN 
ToolTypeAnalysisNN '
(NN' (
thisNN( ,
)NN, -
;NN- .
}OO 	
privatePP 
voidPP +
MainMenuToolStripMenuItem_ClickPP 4
(PP4 5
objectPP5 ;
senderPP< B
,PPB C
	EventArgsPPD M
ePPN O
)PPO P
{QQ 	

NavigationRR 
.RR 
MainMenuRR 
(RR  
thisRR  $
)RR$ %
;RR% &
}SS 	
privateUU 
voidUU 
BtnConfirm_ClickUU %
(UU% &
objectUU& ,
senderUU- 3
,UU3 4
	EventArgsUU5 >
eUU? @
)UU@ A
{VV 	
tryWW 
{XX 
CustomerYY 
customerYY !
=YY" #
newYY$ '
RegularCustomerYY( 7
{ZZ 

customerID[[ 
=[[  
Convert[[! (
.[[( )
ToInt32[[) 0
([[0 1
txtCustomerID[[1 >
.[[> ?
Text[[? C
)[[C D
,[[D E
forename\\ 
=\\ 
txtForename\\ *
.\\* +
Text\\+ /
,\\/ 0
surname]] 
=]] 

txtSurname]] (
.]]( )
Text]]) -
,]]- .
email^^ 
=^^ 
txtEmail^^ $
.^^$ %
Text^^% )
,^^) *
phone__ 
=__ 
txtPhone__ $
.__$ %
Text__% )
,__) *
eircode`` 
=`` 

txtEircode`` (
.``( )
Text``) -
}aa 
;aa 
_customerServicecc  
.cc  !
AddCustomercc! ,
(cc, -
customercc- 5
)cc5 6
;cc6 7

MessageBoxdd 
.dd 
Showdd 
(dd  
$strdd  K
,ddK L
$strddM Z
,ddZ [
MessageBoxButtonsdd\ m
.ddm n
OKddn p
,ddp q
MessageBoxIcon	ddr Ä
.
ddÄ Å
Information
ddÅ å
)
ddå ç
;
ddç é
txtCustomerIDee 
.ee 
Clearee #
(ee# $
)ee$ %
;ee% &
txtForenameff 
.ff 
Clearff !
(ff! "
)ff" #
;ff# $

txtSurnamegg 
.gg 
Cleargg  
(gg  !
)gg! "
;gg" #
txtEmailhh 
.hh 
Clearhh 
(hh 
)hh  
;hh  !
txtPhoneii 
.ii 
Clearii 
(ii 
)ii  
;ii  !

txtEircodejj 
.jj 
Clearjj  
(jj  !
)jj! "
;jj" #
txtCustomerIDkk 
.kk 
Textkk "
=kk# $
_customerServicekk% 5
.kk5 6
GetNextCustomerIDkk6 G
(kkG H
)kkH I
.kkI J
ToStringkkJ R
(kkR S
$strkkS Y
)kkY Z
;kkZ [
}mm 
catchnn 
(nn 
	Exceptionnn 
exnn 
)nn  
{oo 

MessageBoxpp 
.pp 
Showpp 
(pp  
$"pp  "
{pp" #
expp# %
.pp% &
Messagepp& -
}pp- .
"pp. /
,pp/ 0
$strpp1 8
,pp8 9
MessageBoxButtonspp: K
.ppK L
OKppL N
,ppN O
MessageBoxIconppP ^
.pp^ _
Errorpp_ d
)ppd e
;ppe f
}qq 
}tt 	
privatevv 
voidvv 0
$viewCustomersToolStripMenuItem_Clickvv 9
(vv9 :
objectvv: @
sendervvA G
,vvG H
	EventArgsvvI R
evvS T
)vvT U
{ww 	

Navigationxx 
.xx 
ViewCustomersxx $
(xx$ %
thisxx% )
)xx) *
;xx* +
}yy 	
}zz 
}{{ ù
FC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Form1.cs
	namespace 	
ToolSYS
 
. 
Presentation 
. 
Presentation +
{ 
public 

partial 
class 
Form1 
:  
Form! %
{ 
public 
Form1 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
}		 
}

 