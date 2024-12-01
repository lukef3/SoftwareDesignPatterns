�
HC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Program.cs
	namespace 	
ToolSYS
 
. 
Presentation 
{ 
static 

class 
Program 
{ 
[ 	
	STAThread	 
] 
static 
void 
Main 
( 
) 
{ 	
Application 
. 
EnableVisualStyles *
(* +
)+ ,
;, -
Application 
. -
!SetCompatibleTextRenderingDefault 9
(9 :
false: ?
)? @
;@ A
	IToolData 
toolData 
=  
new! $
ToolData% -
(- .
). /
;/ 0
IToolService 
toolService $
=% &
new' *
ToolService+ 6
(6 7
toolData7 ?
)? @
;@ A
	IRateData 
rateData 
=  
new! $
RateData% -
(- .
). /
;/ 0
IRateService 
rateService $
=% &
new' *
RateService+ 6
(6 7
rateData7 ?
)? @
;@ A
ICustomerData 
customerData &
=' (
new) ,
CustomerData- 9
(9 :
): ;
;; <
ICustomerService   
customerService   ,
=  - .
new  / 2
CustomerService  3 B
(  B C
customerData  C O
)  O P
;  P Q
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
IRentalData%% 

rentalData%% "
=%%# $
new%%% (

RentalData%%) 3
(%%3 4
)%%4 5
;%%5 6
IRentalItemData&& 
rentalItemData&& *
=&&+ ,
new&&- 0
RentalItemData&&1 ?
(&&? @
)&&@ A
;&&A B
IRentalService'' 
rentalService'' (
='') *
new''+ .
RentalService''/ <
(''< =

rentalData''= G
,''G H
rentalItemData''I W
,''W X
rateData''Y a
)''a b
;''b c
IRentalFacade)) 
rentalFacade)) &
=))' (
new))) ,
RentalFacade))- 9
())9 :
toolService)): E
,))E F
rateService))G R
,))R S
customerService))T c
,))c d
rentalService))e r
)))r s
;))s t
INavigation++ 

navigation++ "
=++# $
new++% (

Navigation++) 3
(++3 4
toolService++4 ?
,++? @
rateService++A L
,++L M
customerService++N ]
,++] ^
analysisService++_ n
,++n o
rentalService++p }
,++} ~
rentalFacade	++ �
)
++� �
;
++� �
Application.. 
... 
Run.. 
(.. 
new.. 
FrmMainMenu..  +
(..+ ,

navigation.., 6
)..6 7
)..7 8
;..8 9
}// 	
}00 
}11 �l
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
IAnalysisService	##p �
analysisService
##� �
,
##� �
IRentalService
##� �
rentalService
##� �
,
##� �
IRentalFacade
##� �
rentalFacade
##� �
)
##� �
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
�� 
void
�� %
NavigateToViewCustomers
�� +
(
��+ ,
Form
��, 0
form
��1 5
)
��5 6
{
�� 	
form
�� 
.
�� 
Hide
�� 
(
�� 
)
�� 
;
�� 
FrmViewCustomers
�� 
nextForm
�� %
=
��& '
new
��( +
FrmViewCustomers
��, <
(
��< =
this
��= A
,
��A B
_customerService
��C S
)
��S T
;
��T U
nextForm
�� 
.
�� 

ShowDialog
�� 
(
��  
)
��  !
;
��! "
form
�� 
.
�� 
Close
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
void
��  
NavigateToAnalysis
�� &
(
��& '
Form
��' +
form
��, 0
)
��0 1
{
�� 	
form
�� 
.
�� 
Hide
�� 
(
�� 
)
�� 
;
�� 
FrmAnalysis
�� 
nextForm
��  
=
��! "
new
��# &
FrmAnalysis
��' 2
(
��2 3
this
��3 7
,
��7 8
_rateService
��9 E
,
��E F
_analysisService
��G W
)
��W X
;
��X Y
nextForm
�� 
.
�� 

ShowDialog
�� 
(
��  
)
��  !
;
��! "
form
�� 
.
�� 
Close
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
void
��  
NavigateToMainMenu
�� &
(
��& '
Form
��' +
form
��, 0
)
��0 1
{
�� 	
form
�� 
.
�� 
Hide
�� 
(
�� 
)
�� 
;
�� 
FrmMainMenu
�� 
nextForm
��  
=
��! "
new
��# &
FrmMainMenu
��' 2
(
��2 3
this
��3 7
)
��7 8
;
��8 9
nextForm
�� 
.
�� 

ShowDialog
�� 
(
��  
)
��  !
;
��! "
form
�� 
.
�� 
Close
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� ��
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
RentalsToolStripMenuItem	DDo �
,
DD� �+
AdminReportsToolStripMenuItem
DD� �
,
DD� �'
MainMenuToolStripMenuItem
DD� �
,
DD� �)
ExitSystemToolStripMenuItem
DD� �
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
RemoveToolsToolStripMenuItem	ddk �
,
dd� �(
ViewToolsToolStripMenuItem
dd� �
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
�� "
.
��" #
Name
��# '
=
��( )
$str
��* F
;
��F G(
ViewToolsToolStripMenuItem
�� "
.
��" #
Size
��# '
=
��( )
new
��* -
Size
��. 2
(
��2 3
$num
��3 6
,
��6 7
$num
��8 :
)
��: ;
;
��; <(
ViewToolsToolStripMenuItem
�� "
.
��" #
Text
��# '
=
��( )
$str
��* 7
;
��7 8(
ViewToolsToolStripMenuItem
�� "
.
��" #
Click
��# (
+=
��) +.
 ViewToolsToolStripMenuItem_Click
��, L
;
��L M(
CustomersToolStripMenuItem
�� "
.
��" #
DropDownItems
��# 0
.
��0 1
AddRange
��1 9
(
��9 :
[
��: ;*
AddCustomerToolStripMenuItem
��; W
,
��W X-
UpdateCustomerToolStripMenuItem
��Y x
,
��x y-
ViewCustomersToolStripMenuItem��z �
]
�� 	
)
��	 

;
��
 (
CustomersToolStripMenuItem
�� "
.
��" #
Name
��# '
=
��( )
$str
��* F
;
��F G(
CustomersToolStripMenuItem
�� "
.
��" #
Size
��# '
=
��( )
new
��* -
Size
��. 2
(
��2 3
$num
��3 5
,
��5 6
$num
��7 9
)
��9 :
;
��: ;(
CustomersToolStripMenuItem
�� "
.
��" #
Text
��# '
=
��( )
$str
��* 6
;
��6 7*
AddCustomerToolStripMenuItem
�� $
.
��$ %
Name
��% )
=
��* +
$str
��, J
;
��J K*
AddCustomerToolStripMenuItem
�� $
.
��$ %
Size
��% )
=
��* +
new
��, /
Size
��0 4
(
��4 5
$num
��5 8
,
��8 9
$num
��: <
)
��< =
;
��= >*
AddCustomerToolStripMenuItem
�� $
.
��$ %
Text
��% )
=
��* +
$str
��, ;
;
��; <*
AddCustomerToolStripMenuItem
�� $
.
��$ %
Click
��% *
+=
��+ -0
"AddCustomerToolStripMenuItem_Click
��. P
;
��P Q-
UpdateCustomerToolStripMenuItem
�� '
.
��' (
Name
��( ,
=
��- .
$str
��/ P
;
��P Q-
UpdateCustomerToolStripMenuItem
�� '
.
��' (
Size
��( ,
=
��- .
new
��/ 2
Size
��3 7
(
��7 8
$num
��8 ;
,
��; <
$num
��= ?
)
��? @
;
��@ A-
UpdateCustomerToolStripMenuItem
�� '
.
��' (
Text
��( ,
=
��- .
$str
��/ A
;
��A B-
UpdateCustomerToolStripMenuItem
�� '
.
��' (
Click
��( -
+=
��. 03
%UpdateCustomerToolStripMenuItem_Click
��1 V
;
��V W,
ViewCustomersToolStripMenuItem
�� &
.
��& '
Name
��' +
=
��, -
$str
��. N
;
��N O,
ViewCustomersToolStripMenuItem
�� &
.
��& '
Size
��' +
=
��, -
new
��. 1
Size
��2 6
(
��6 7
$num
��7 :
,
��: ;
$num
��< >
)
��> ?
;
��? @,
ViewCustomersToolStripMenuItem
�� &
.
��& '
Text
��' +
=
��, -
$str
��. ?
;
��? @,
ViewCustomersToolStripMenuItem
�� &
.
��& '
Click
��' ,
+=
��- /2
$viewCustomersToolStripMenuItem_Click
��0 T
;
��T U&
RentalsToolStripMenuItem
��  
.
��  !
DropDownItems
��! .
.
��. /
AddRange
��/ 7
(
��7 8
[
��8 9'
RentToolToolStripMenuItem
��9 R
,
��R S*
ReturnToolsToolStripMenuItem
��T p
,
��p q+
ViewRentalsToolStripMenuItem��r �
]��� �
)��� �
;��� �&
RentalsToolStripMenuItem
��  
.
��  !
Name
��! %
=
��& '
$str
��( B
;
��B C&
RentalsToolStripMenuItem
��  
.
��  !
Size
��! %
=
��& '
new
��( +
Size
��, 0
(
��0 1
$num
��1 3
,
��3 4
$num
��5 7
)
��7 8
;
��8 9&
RentalsToolStripMenuItem
��  
.
��  !
Text
��! %
=
��& '
$str
��( 2
;
��2 3'
RentToolToolStripMenuItem
�� !
.
��! "
Name
��" &
=
��' (
$str
��) D
;
��D E'
RentToolToolStripMenuItem
�� !
.
��! "
Size
��" &
=
��' (
new
��) ,
Size
��- 1
(
��1 2
$num
��2 5
,
��5 6
$num
��7 9
)
��9 :
;
��: ;'
RentToolToolStripMenuItem
�� !
.
��! "
Text
��" &
=
��' (
$str
��) 6
;
��6 7'
RentToolToolStripMenuItem
�� !
.
��! "
Click
��" '
+=
��( *-
RentToolToolStripMenuItem_Click
��+ J
;
��J K*
ReturnToolsToolStripMenuItem
�� $
.
��$ %
Name
��% )
=
��* +
$str
��, J
;
��J K*
ReturnToolsToolStripMenuItem
�� $
.
��$ %
Size
��% )
=
��* +
new
��, /
Size
��0 4
(
��4 5
$num
��5 8
,
��8 9
$num
��: <
)
��< =
;
��= >*
ReturnToolsToolStripMenuItem
�� $
.
��$ %
Text
��% )
=
��* +
$str
��, ;
;
��; <*
ReturnToolsToolStripMenuItem
�� $
.
��$ %
Click
��% *
+=
��+ -0
"ReturnToolsToolStripMenuItem_Click
��. P
;
��P Q*
ViewRentalsToolStripMenuItem
�� $
.
��$ %
Name
��% )
=
��* +
$str
��, J
;
��J K*
ViewRentalsToolStripMenuItem
�� $
.
��$ %
Size
��% )
=
��* +
new
��, /
Size
��0 4
(
��4 5
$num
��5 8
,
��8 9
$num
��: <
)
��< =
;
��= >*
ViewRentalsToolStripMenuItem
�� $
.
��$ %
Text
��% )
=
��* +
$str
��, ;
;
��; <*
ViewRentalsToolStripMenuItem
�� $
.
��$ %
Click
��% *
+=
��+ -0
"ViewRentalsToolStripMenuItem_Click
��. P
;
��P Q+
AdminReportsToolStripMenuItem
�� %
.
��% &
DropDownItems
��& 3
.
��3 4
AddRange
��4 <
(
��< =
[
��= >'
AnalysisToolStripMenuItem
��> W
]
��W X
)
��X Y
;
��Y Z+
AdminReportsToolStripMenuItem
�� %
.
��% &
Name
��& *
=
��+ ,
$str
��- L
;
��L M+
AdminReportsToolStripMenuItem
�� %
.
��% &
Size
��& *
=
��+ ,
new
��- 0
Size
��1 5
(
��5 6
$num
��6 9
,
��9 :
$num
��; =
)
��= >
;
��> ?+
AdminReportsToolStripMenuItem
�� %
.
��% &
Text
��& *
=
��+ ,
$str
��- =
;
��= >'
AnalysisToolStripMenuItem
�� !
.
��! "
Name
��" &
=
��' (
$str
��) D
;
��D E'
AnalysisToolStripMenuItem
�� !
.
��! "
Size
��" &
=
��' (
new
��) ,
Size
��- 1
(
��1 2
$num
��2 5
,
��5 6
$num
��7 9
)
��9 :
;
��: ;'
AnalysisToolStripMenuItem
�� !
.
��! "
Text
��" &
=
��' (
$str
��) 4
;
��4 5'
AnalysisToolStripMenuItem
�� !
.
��! "
Click
��" '
+=
��( *-
AnalysisToolStripMenuItem_Click
��+ J
;
��J K'
MainMenuToolStripMenuItem
�� !
.
��! "
	Alignment
��" +
=
��, -$
ToolStripItemAlignment
��. D
.
��D E
Right
��E J
;
��J K'
MainMenuToolStripMenuItem
�� !
.
��! "
Name
��" &
=
��' (
$str
��) D
;
��D E'
MainMenuToolStripMenuItem
�� !
.
��! "
Size
��" &
=
��' (
new
��) ,
Size
��- 1
(
��1 2
$num
��2 4
,
��4 5
$num
��6 8
)
��8 9
;
��9 :'
MainMenuToolStripMenuItem
�� !
.
��! "
Text
��" &
=
��' (
$str
��) 5
;
��5 6'
MainMenuToolStripMenuItem
�� !
.
��! "
Click
��" '
+=
��( *-
MainMenuToolStripMenuItem_Click
��+ J
;
��J K)
ExitSystemToolStripMenuItem
�� #
.
��# $
	Alignment
��$ -
=
��. /$
ToolStripItemAlignment
��0 F
.
��F G
Right
��G L
;
��L M)
ExitSystemToolStripMenuItem
�� #
.
��# $
Name
��$ (
=
��) *
$str
��+ H
;
��H I)
ExitSystemToolStripMenuItem
�� #
.
��# $
Size
��$ (
=
��) *
new
��+ .
Size
��/ 3
(
��3 4
$num
��4 6
,
��6 7
$num
��8 :
)
��: ;
;
��; <)
ExitSystemToolStripMenuItem
�� #
.
��# $
Text
��$ (
=
��) *
$str
��+ 9
;
��9 :)
ExitSystemToolStripMenuItem
�� #
.
��# $
Click
��$ )
+=
��* ,/
!ExitSystemToolStripMenuItem_Click
��- N
;
��N O

ClientSize
�� 
=
�� 
new
�� 
Size
�� 
(
�� 
$num
�� "
,
��" #
$num
��$ '
)
��' (
;
��( )
Controls
�� 
.
�� 
Add
�� 
(
�� 

MenuStrip1
�� 
)
��  
;
��  !
MainMenuStrip
�� 
=
�� 

MenuStrip1
�� "
;
��" #
Name
�� 
=
�� 
$str
�� 
;
�� 

MenuStrip1
�� 
.
�� 
ResumeLayout
�� 
(
��  
false
��  %
)
��% &
;
��& '

MenuStrip1
�� 
.
�� 
PerformLayout
��  
(
��  !
)
��! "
;
��" #
ResumeLayout
�� 
(
�� 
false
�� 
)
�� 
;
�� 
PerformLayout
�� 
(
�� 
)
�� 
;
�� 
}
�� 
private
�� 
void
�� 4
&SetToolCategoryToolStripMenuItem_Click
�� 7
(
��7 8
object
��8 >
?
��> ?
sender
��@ F
,
��F G
	EventArgs
��H Q
e
��R S
)
��S T
{
�� 

Navigation
�� 
.
�� '
NavigateToSetToolCategory
�� ,
(
��, -
this
��- 1
)
��1 2
;
��2 3
}
�� 
private
�� 
void
�� 3
%UpdateToolRateToolStripMenuItem_Click
�� 6
(
��6 7
object
��7 =
?
��= >
sender
��? E
,
��E F
	EventArgs
��G P
e
��Q R
)
��R S
{
�� 

Navigation
�� 
.
�� "
NavigateToUpdateRate
�� '
(
��' (
this
��( ,
)
��, -
;
��- .
}
�� 
private
�� 
void
�� (
AddToolStripMenuItem_Click
�� +
(
��+ ,
object
��, 2
?
��2 3
sender
��4 :
,
��: ;
	EventArgs
��< E
e
��F G
)
��G H
{
�� 

Navigation
�� 
.
�� 
NavigateToAddTool
�� $
(
��$ %
this
��% )
)
��) *
;
��* +
}
�� 
private
�� 
void
�� 0
"UpdateToolsToolStripMenuItem_Click
�� 3
(
��3 4
object
��4 :
?
��: ;
sender
��< B
,
��B C
	EventArgs
��D M
e
��N O
)
��O P
{
�� 

Navigation
�� 
.
�� "
NavigateToUpdateTool
�� '
(
��' (
this
��( ,
)
��, -
;
��- .
}
�� 
private
�� 
void
�� 0
"RemoveToolsToolStripMenuItem_Click
�� 3
(
��3 4
object
��4 :
?
��: ;
sender
��< B
,
��B C
	EventArgs
��D M
e
��N O
)
��O P
{
�� 

Navigation
�� 
.
�� "
NavigateToRemoveTool
�� '
(
��' (
this
��( ,
)
��, -
;
��- .
}
�� 
private
�� 
void
�� .
 ViewToolsToolStripMenuItem_Click
�� 1
(
��1 2
object
��2 8
?
��8 9
sender
��: @
,
��@ A
	EventArgs
��B K
e
��L M
)
��M N
{
�� 

Navigation
�� 
.
�� !
NavigateToViewTools
�� &
(
��& '
this
��' +
)
��+ ,
;
��, -
}
�� 
private
�� 
void
�� 0
"AddCustomerToolStripMenuItem_Click
�� 3
(
��3 4
object
��4 :
?
��: ;
sender
��< B
,
��B C
	EventArgs
��D M
e
��N O
)
��O P
{
�� 

Navigation
�� 
.
�� #
NavigateToAddCustomer
�� (
(
��( )
this
��) -
)
��- .
;
��. /
}
�� 
private
�� 
void
�� 3
%UpdateCustomerToolStripMenuItem_Click
�� 6
(
��6 7
object
��7 =
?
��= >
sender
��? E
,
��E F
	EventArgs
��G P
e
��Q R
)
��R S
{
�� 

Navigation
�� 
.
�� &
NavigateToUpdateCustomer
�� +
(
��+ ,
this
��, 0
)
��0 1
;
��1 2
}
�� 
private
�� 
void
�� 2
$viewCustomersToolStripMenuItem_Click
�� 5
(
��5 6
object
��6 <
?
��< =
sender
��> D
,
��D E
	EventArgs
��F O
e
��P Q
)
��Q R
{
�� 

Navigation
�� 
.
�� %
NavigateToViewCustomers
�� *
(
��* +
this
��+ /
)
��/ 0
;
��0 1
}
�� 
private
�� 
void
�� -
RentToolToolStripMenuItem_Click
�� 0
(
��0 1
object
��1 7
?
��7 8
sender
��9 ?
,
��? @
	EventArgs
��A J
e
��K L
)
��L M
{
�� 

Navigation
�� 
.
�� !
NavigateToRentTools
�� &
(
��& '
this
��' +
)
��+ ,
;
��, -
}
�� 
private
�� 
void
�� 0
"ReturnToolsToolStripMenuItem_Click
�� 3
(
��3 4
object
��4 :
?
��: ;
sender
��< B
,
��B C
	EventArgs
��D M
e
��N O
)
��O P
{
�� 

Navigation
�� 
.
�� #
NavigateToReturnTools
�� (
(
��( )
this
��) -
)
��- .
;
��. /
}
�� 
private
�� 
void
�� 0
"ViewRentalsToolStripMenuItem_Click
�� 3
(
��3 4
object
��4 :
?
��: ;
sender
��< B
,
��B C
	EventArgs
��D M
e
��N O
)
��O P
{
�� 

Navigation
�� 
.
�� #
NavigateToViewRentals
�� (
(
��( )
this
��) -
)
��- .
;
��. /
}
�� 
private
�� 
void
�� -
AnalysisToolStripMenuItem_Click
�� 0
(
��0 1
object
��1 7
?
��7 8
sender
��9 ?
,
��? @
	EventArgs
��A J
e
��K L
)
��L M
{
�� 

Navigation
�� 
.
��  
NavigateToAnalysis
�� %
(
��% &
this
��& *
)
��* +
;
��+ ,
}
�� 
private
�� 
void
�� -
MainMenuToolStripMenuItem_Click
�� 0
(
��0 1
object
��1 7
?
��7 8
sender
��9 ?
,
��? @
	EventArgs
��A J
e
��K L
)
��L M
{
�� 

Navigation
�� 
.
��  
NavigateToMainMenu
�� %
(
��% &
this
��& *
)
��* +
;
��+ ,
}
�� 
private
�� 
void
�� /
!ExitSystemToolStripMenuItem_Click
�� 2
(
��2 3
object
��3 9
?
��9 :
sender
��; A
,
��A B
	EventArgs
��C L
e
��M N
)
��N O
{
�� 
var
�� 
confirmExit
�� 
=
�� 

MessageBox
�� $
.
��$ %
Show
��% )
(
��) *
$str
��* K
,
��K L
$str
��M \
,
��\ ]
MessageBoxButtons
��^ o
.
��o p
YesNo
��p u
)
��u v
;
��v w
if
�� 

(
�� 
confirmExit
�� 
==
�� 
DialogResult
�� '
.
��' (
Yes
��( +
)
��+ ,
{
�� 	
Application
�� 
.
�� 
Exit
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
private
�� 
class
�� 
NoOpNavigation
��  
:
��! "
INavigation
��# .
{
�� 
public
�� 
void
�� '
NavigateToSetToolCategory
�� -
(
��- .
Form
��. 2
form
��3 7
)
��7 8
{
��9 :
}
��; <
public
�� 
void
�� "
NavigateToUpdateRate
�� (
(
��( )
Form
��) -
form
��. 2
)
��2 3
{
��4 5
}
��6 7
public
�� 
void
�� 
NavigateToAddTool
�� %
(
��% &
Form
��& *
form
��+ /
)
��/ 0
{
��1 2
}
��3 4
public
�� 
void
�� "
NavigateToUpdateTool
�� (
(
��( )
Form
��) -
form
��. 2
)
��2 3
{
��4 5
}
��6 7
public
�� 
void
�� "
NavigateToRemoveTool
�� (
(
��( )
Form
��) -
form
��. 2
)
��2 3
{
��4 5
}
��6 7
public
�� 
void
�� !
NavigateToViewTools
�� '
(
��' (
Form
��( ,
form
��- 1
)
��1 2
{
��3 4
}
��5 6
public
�� 
void
�� #
NavigateToAddCustomer
�� )
(
��) *
Form
��* .
form
��/ 3
)
��3 4
{
��5 6
}
��7 8
public
�� 
void
�� &
NavigateToUpdateCustomer
�� ,
(
��, -
Form
��- 1
form
��2 6
)
��6 7
{
��8 9
}
��: ;
public
�� 
void
�� %
NavigateToViewCustomers
�� +
(
��+ ,
Form
��, 0
form
��1 5
)
��5 6
{
��7 8
}
��9 :
public
�� 
void
�� !
NavigateToRentTools
�� '
(
��' (
Form
��( ,
form
��- 1
)
��1 2
{
��3 4
}
��5 6
public
�� 
void
�� #
NavigateToReturnTools
�� )
(
��) *
Form
��* .
form
��/ 3
)
��3 4
{
��5 6
}
��7 8
public
�� 
void
�� #
NavigateToViewRentals
�� )
(
��) *
Form
��* .
form
��/ 3
)
��3 4
{
��5 6
}
��7 8
public
�� 
void
��  
NavigateToAnalysis
�� &
(
��& '
Form
��' +
form
��, 0
)
��0 1
{
��2 3
}
��4 5
public
�� 
void
��  
NavigateToMainMenu
�� &
(
��& '
Form
��' +
form
��, 0
)
��0 1
{
��2 3
}
��4 5
}
�� 
}�� �
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
} �9
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
;	++ �
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
)	11 �
;
11� �
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
}GG �
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
} �'
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
phrase	~ �
)
� �
;
� �
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
}99 �2
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
MessageBoxIcon	77v �
.
77� �
Information
77� �
)
77� �
;
77� �
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
}QQ �r
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
;	// �
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
)	55 �
;
55� �
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
Information	jjx �
)
jj� �
;
jj� �
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
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
�� 
cboCategories
�� 
.
�� 
SelectedIndex
�� '
=
��( )
-
��* +
$num
��+ ,
;
��, -
txtDescription
�� 
.
�� 
Clear
��  
(
��  !
)
��! "
;
��" #
txtManufacturer
�� 
.
�� 
Clear
�� !
(
��! "
)
��" #
;
��# $
	cboStatus
�� 
.
�� 
SelectedIndex
�� #
=
��$ %
-
��& '
$num
��' (
;
��( )
	txtPhrase
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �Q
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
public 
FrmUpdateCustomer  
(  !
INavigation! ,

navigation- 7
,7 8
ICustomerService9 I
customerServiceJ Y
)Y Z
:[ \
base] a
(a b

navigationb l
)l m
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
phrase	~ �
)
� �
;
� �
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
MessageBoxIcon	CCr �
.
CC� �
Information
CC� �
)
CC� �
;
CC� �
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
}\\ �
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
})) �@
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
Information	55u �
)
55� �
;
55� �
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
}ZZ ޻
SC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Presentation\Forms\frmRentTools.cs
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
 
FrmRentTools

 %
:

& '
NavForm

( /
{ 
private 
readonly 
IRentalFacade &
_rentalFacade' 4
;4 5
public 
FrmRentTools 
( 
INavigation '

navigation( 2
,2 3
IRentalFacade4 A
rentalFacadeB N
)N O
:P Q
baseR V
(V W

navigationW a
)a b
{ 	
InitializeComponent 
(  
)  !
;! "
_rentalFacade 
= 
rentalFacade (
;( )
} 	
private 
void 
frmRentTools_Load &
(& '
object' -
sender. 4
,4 5
	EventArgs6 ?
e@ A
)A B
{ 	
dtpFrom 
. 
MinDate 
= 
DateTime &
.& '
Today' ,
;, -
dtpTo   
.   
MinDate   
=   
DateTime   $
.  $ %
Today  % *
;  * +
txtRentalID!! 
.!! 
Text!! 
=!! 
$str!! !
;!!! "
cboCategories"" 
."" 
Items"" 
.""  
Add""  #
(""# $
$str""$ &
)""& '
;""' (
	DataTable## 

categories##  
=##! "
_rentalFacade### 0
.##0 1
GetCategories##1 >
(##> ?
)##? @
;##@ A
foreach%% 
(%% 
DataRow%% 
row%%  
in%%! #

categories%%$ .
.%%. /
Rows%%/ 3
)%%3 4
{&& 
string'' 
category'' 
=''  !
row''" %
[''% &
$str''& 4
]''4 5
+''6 7
$str''8 =
+''> ?
row''@ C
[''C D
$str''D R
]''R S
;''S T
cboCategories(( 
.(( 
Items(( #
.((# $
Add(($ '
(((' (
category((( 0
)((0 1
;((1 2
})) 
	dgvRental** 
.** 
Columns** 
.** 
Add** !
(**! "
$str**" *
,*** +
$str**, 0
)**0 1
;**1 2
	dgvRental++ 
.++ 
Columns++ 
.++ 
Add++ !
(++! "
$str++" 0
,++0 1
$str++2 A
)++A B
;++B C
	dgvRental,, 
.,, 
Columns,, 
.,, 
Add,, !
(,,! "
$str,," 3
,,,3 4
$str,,5 B
),,B C
;,,C D
	dgvRental-- 
.-- 
Columns-- 
.-- 
Add-- !
(--! "
$str--" 4
,--4 5
$str--6 D
)--D E
;--E F
	dgvRental.. 
... 
Columns.. 
... 
Add.. !
(..! "
$str.." ,
,.., -
$str... 9
)..9 :
;..: ;
	dgvRental// 
.// 
Columns// 
.// 
Add// !
(//! "
$str//" .
,//. /
$str//0 =
)//= >
;//> ?
	dgvRental00 
.00 
Columns00 
.00 
Add00 !
(00! "
$str00" -
,00- .
$str00/ ;
)00; <
;00< =
Miscellaneous11 
.11 %
SetDataGridViewProperties11 3
(113 4
	dgvRental114 =
)11= >
;11> ?
}22 	
private33 
void33 #
btnCustomerSearch_Click33 ,
(33, -
object33- 3
sender334 :
,33: ;
	EventArgs33< E
e33F G
)33G H
{44 	
dgvCustomers55 
.55 

DataSource55 #
=55$ %
_rentalFacade55& 3
.553 4
SearchCustomers554 C
(55C D
txtCustomerSearch55D U
.55U V
Text55V Z
)55Z [
;55[ \
dgvCustomers77 
.77 
Columns77  
[77  !
$num77! "
]77" #
.77# $

HeaderText77$ .
=77/ 0
$str771 6
;776 7
dgvCustomers88 
.88 
Columns88  
[88  !
$num88! "
]88" #
.88# $

HeaderText88$ .
=88/ 0
$str881 <
;88< =
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
;99; <
dgvCustomers:: 
.:: 
Columns::  
[::  !
$num::! "
]::" #
.::# $

HeaderText::$ .
=::/ 0
$str::1 9
;::9 :
dgvCustomers;; 
.;; 
Columns;;  
[;;  !
$num;;! "
];;" #
.;;# $

HeaderText;;$ .
=;;/ 0
$str;;1 9
;;;9 :
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
;<<; <
Miscellaneous== 
.== %
SetDataGridViewProperties== 3
(==3 4
dgvCustomers==4 @
)==@ A
;==A B
}>> 	
privateAA 
voidAA "
dgvCustomers_CellClickAA +
(AA+ ,
objectAA, 2
senderAA3 9
,AA9 :%
DataGridViewCellEventArgsAA; T
eAAU V
)AAV W
{BB 	
ifCC 
(CC 
dgvCustomersCC 
.CC 

CurrentRowCC '
!=CC( *
nullCC+ /
)CC/ 0
{DD 
intEE 

customerIdEE 
=EE  
ConvertEE! (
.EE( )
ToInt32EE) 0
(EE0 1
dgvCustomersEE1 =
.EE= >

CurrentRowEE> H
.EEH I
CellsEEI N
[EEN O
$numEEO P
]EEP Q
.EEQ R
ValueEER W
)EEW X
;EEX Y
_rentalFacadeFF 
.FF 
StartNewRentalFF ,
(FF, -

customerIdFF- 7
)FF7 8
;FF8 9
txtRentalIDHH 
.HH 
TextHH  
=HH! "
_rentalFacadeHH# 0
.HH0 1
GetCurrentRentalHH1 A
(HHA B
)HHB C
.HHC D
rentalIdHHD L
.HHL M
ToStringHHM U
(HHU V
$strHHV [
)HH[ \
;HH\ ]
txtCustomerIDII 
.II 
TextII "
=II# $
dgvCustomersII% 1
.II1 2

CurrentRowII2 <
.II< =
CellsII= B
[IIB C
$numIIC D
]IID E
.IIE F
ValueIIF K
.IIK L
ToStringIIL T
(IIT U
)IIU V
;IIV W
txtForenameJJ 
.JJ 
TextJJ  
=JJ! "
dgvCustomersJJ# /
.JJ/ 0

CurrentRowJJ0 :
.JJ: ;
CellsJJ; @
[JJ@ A
$numJJA B
]JJB C
.JJC D
ValueJJD I
.JJI J
ToStringJJJ R
(JJR S
)JJS T
;JJT U

txtSurnameKK 
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
;KKS T
txtEmailLL 
.LL 
TextLL 
=LL 
dgvCustomersLL  ,
.LL, -

CurrentRowLL- 7
.LL7 8
CellsLL8 =
[LL= >
$numLL> ?
]LL? @
.LL@ A
ValueLLA F
.LLF G
ToStringLLG O
(LLO P
)LLP Q
;LLQ R
txtPhoneMM 
.MM 
TextMM 
=MM 
dgvCustomersMM  ,
.MM, -

CurrentRowMM- 7
.MM7 8
CellsMM8 =
[MM= >
$numMM> ?
]MM? @
.MM@ A
ValueMMA F
.MMF G
ToStringMMG O
(MMO P
)MMP Q
;MMQ R

txtEircodeNN 
.NN 
TextNN 
=NN  !
dgvCustomersNN" .
.NN. /

CurrentRowNN/ 9
.NN9 :
CellsNN: ?
[NN? @
$numNN@ A
]NNA B
.NNB C
ValueNNC H
.NNH I
ToStringNNI Q
(NNQ R
)NNR S
;NNS T
}OO 
}PP 	
privateRR 
voidRR &
txtCustomerSearch_KeyPressRR /
(RR/ 0
objectRR0 6
senderRR7 =
,RR= >
KeyPressEventArgsRR? P
eRRQ R
)RRR S
{SS 	
ifTT 
(TT 
eTT 
.TT 
KeyCharTT 
==TT 
(TT 
charTT !
)TT! "
$numTT" $
)TT$ %
{UU 
btnCustomerSearchVV !
.VV! "
PerformClickVV" .
(VV. /
)VV/ 0
;VV0 1
}WW 
}XX 	
privateZZ 
voidZZ $
dgvTools_CellDoubleClickZZ -
(ZZ- .
objectZZ. 4
senderZZ5 ;
,ZZ; <%
DataGridViewCellEventArgsZZ= V
eZZW X
)ZZX Y
{[[ 	
btnAddToRental\\ 
.\\ 
PerformClick\\ '
(\\' (
)\\( )
;\\) *
}]] 	
private__ 
void__  
btnAddToRental_Click__ )
(__) *
object__* 0
sender__1 7
,__7 8
	EventArgs__9 B
e__C D
)__D E
{`` 	
tryaa 
{bb 
ifcc 
(cc 
stringcc 
.cc 
IsNullOrEmptycc (
(cc( )
txtCustomerIDcc) 6
.cc6 7
Textcc7 ;
)cc; <
)cc< =
throwdd 
newdd 
ArgumentExceptiondd /
(dd/ 0
$strdd0 K
)ddK L
;ddL M
intff 

customerIdff 
=ff  
Convertff! (
.ff( )
ToInt32ff) 0
(ff0 1
txtCustomerIDff1 >
.ff> ?
Textff? C
)ffC D
;ffD E
ifgg 
(gg 
dgvToolsgg 
.gg 

CurrentRowgg '
!=gg( *
nullgg+ /
)gg/ 0
{hh 
intii 
toolIdii 
=ii  
Convertii! (
.ii( )
ToInt32ii) 0
(ii0 1
dgvToolsii1 9
.ii9 :

CurrentRowii: D
.iiD E
CellsiiE J
[iiJ K
$numiiK L
]iiL M
.iiM N
ValueiiN S
)iiS T
;iiT U
stringjj 
categoryCodejj '
=jj( )
dgvToolsjj* 2
.jj2 3

CurrentRowjj3 =
.jj= >
Cellsjj> C
[jjC D
$numjjD E
]jjE F
.jjF G
ValuejjG L
.jjL M
ToStringjjM U
(jjU V
)jjV W
??jjX Z
throwjj[ `
newjja d
ArgumentExceptionjje v
(jjv w
$str	jjw �
)
jj� �
;
jj� �
stringkk 
descriptionkk &
=kk' (
dgvToolskk) 1
.kk1 2

CurrentRowkk2 <
.kk< =
Cellskk= B
[kkB C
$numkkC D
]kkD E
.kkE F
ValuekkF K
.kkK L
ToStringkkL T
(kkT U
)kkU V
??kkW Y
throwkkZ _
newkk` c
ArgumentExceptionkkd u
(kku v
$str	kkv �
)
kk� �
;
kk� �
stringll 
manufacturerll '
=ll( )
dgvToolsll* 2
.ll2 3

CurrentRowll3 =
.ll= >
Cellsll> C
[llC D
$numllD E
]llE F
.llF G
ValuellG L
.llL M
ToStringllM U
(llU V
)llV W
??llX Z
throwll[ `
newlla d
ArgumentExceptionlle v
(llv w
$str	llw �
)
ll� �
;
ll� �
DateTimemm 
rentDatemm %
=mm& '
dtpFrommm( /
.mm/ 0
Valuemm0 5
;mm5 6
DateTimenn 

returnDatenn '
=nn( )
dtpTonn* /
.nn/ 0
Valuenn0 5
;nn5 6
ifpp 
(pp 
	dgvRentalpp !
.pp! "
Rowspp" &
.pp& '
Countpp' ,
>=pp- /
$numpp0 1
)pp1 2
{qq 
foreachrr 
(rr  !
DataGridViewRowrr! 0
rowrr1 4
inrr5 7
	dgvRentalrr8 A
.rrA B
RowsrrB F
)rrF G
{ss 
iftt 
(tt  
Converttt  '
.tt' (
ToInt32tt( /
(tt/ 0
dgvToolstt0 8
.tt8 9

CurrentRowtt9 C
.ttC D
CellsttD I
[ttI J
$strttJ N
]ttN O
.ttO P
ValuettP U
)ttU V
==ttW Y
toolIdttZ `
)tt` a
{uu 

MessageBoxvv  *
.vv* +
Showvv+ /
(vv/ 0
$strvv0 X
,vvX Y
$strvvZ d
,vvd e
MessageBoxButtonsvvf w
.vvw x
OKvvx z
,vvz {
MessageBoxIcon	vv| �
.
vv� �
Error
vv� �
)
vv� �
;
vv� �
returnww  &
;ww& '
}xx 
}yy 
}zz 
_rentalFacade|| !
.||! "
AddToolToRental||" 1
(||1 2
toolId||2 8
,||8 9
categoryCode||: F
,||F G
description||H S
,||S T
manufacturer||U a
,||a b
rentDate||c k
,||k l

returnDate||m w
)||w x
;||x y
decimal~~ 
	rentalFee~~ %
=~~& '
_rentalFacade~~( 5
.~~5 6
GetCurrentRental~~6 F
(~~F G
)~~G H
.~~H I
rentalItems~~I T
. 
First 
( 
item #
=>$ &
item' +
.+ ,
toolId, 2
==3 5
toolId6 <
)< =
.= >
	rentalFee> G
;G H
	dgvRental
�� 
.
�� 
Rows
�� "
.
��" #
Add
��# &
(
��& '
toolId
�� 
,
�� 
categoryCode
�� $
,
��$ %
description
�� #
,
��# $
manufacturer
�� $
,
��$ %
rentDate
��  
.
��  !
ToString
��! )
(
��) *
$str
��* 5
)
��5 6
,
��6 7

returnDate
�� "
.
��" #
ToString
��# +
(
��+ ,
$str
��, 7
)
��7 8
,
��8 9
	rentalFee
�� !
.
��! "
ToString
��" *
(
��* +
$str
��+ 1
)
��1 2
)
�� 
;
�� 
}
�� 
else
�� 
{
�� 
throw
�� 
new
�� 
ArgumentException
�� /
(
��/ 0
$str
��0 G
)
��G H
;
��H I
}
�� 
UpdateTotalFee
�� 
(
�� 
)
��  
;
��  !
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$@"
��  #
{
��# $
ex
��$ &
.
��& '
Message
��' .
}
��. /
"
��/ 0
,
��0 1
$str
��2 :
,
��: ;
MessageBoxButtons
��< M
.
��M N
OK
��N P
,
��P Q
MessageBoxIcon
��R `
.
��` a
Error
��a f
)
��f g
;
��g h
}
�� 
}
�� 	
private
�� 
void
�� 
UpdateTotalFee
�� #
(
��# $
)
��$ %
{
�� 	
txtTotalFee
�� 
.
�� 
Text
�� 
=
�� 
	dgvRental
�� (
.
��( )
Rows
��) -
.
��- .
Cast
��. 2
<
��2 3
DataGridViewRow
��3 B
>
��B C
(
��C D
)
��D E
.
��  !
Sum
��! $
(
��$ %
row
��% (
=>
��) +
Convert
��, 3
.
��3 4
	ToDecimal
��4 =
(
��= >
row
��> A
.
��A B
Cells
��B G
[
��G H
$str
��H S
]
��S T
.
��T U
Value
��U Z
)
��Z [
)
��[ \
.
��  !
ToString
��! )
(
��) *
$str
��* 0
)
��0 1
;
��1 2
}
�� 	
private
�� 
void
�� $
btnConfirmRental_Click
�� +
(
��+ ,
object
��, 2
sender
��3 9
,
��9 :
	EventArgs
��; D
e
��E F
)
��F G
{
�� 	
try
�� 
{
�� 
_rentalFacade
�� 
.
�� 
ConfirmRental
�� +
(
��+ ,
)
��, -
;
��- .

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$str
��  4
,
��4 5
$str
��6 D
,
��D E
MessageBoxButtons
��F W
.
��W X
OK
��X Z
,
��Z [
MessageBoxIcon
��\ j
.
��j k
Information
��k v
)
��v w
;
��w x
RefreshForm
�� 
(
�� 
)
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$@"
��  #
{
��# $
ex
��$ &
.
��& '
Message
��' .
}
��. /
"
��/ 0
,
��0 1
$str
��2 :
,
��: ;
MessageBoxButtons
��< M
.
��M N
OK
��N P
,
��P Q
MessageBoxIcon
��R `
.
��` a
Error
��a f
)
��f g
;
��g h
}
�� 
}
�� 	
private
�� 
void
�� 
RefreshForm
��  
(
��  !
)
��! "
{
�� 	
txtRentalID
�� 
.
�� 
Text
�� 
=
�� 
$str
�� !
;
��! "
txtCustomerSearch
�� 
.
�� 
Clear
�� #
(
��# $
)
��$ %
;
��% &
txtCustomerID
�� 
.
�� 
Clear
�� 
(
��  
)
��  !
;
��! "
txtForename
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
��  
txtPhone
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
�� 
txtEmail
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
�� 

txtEircode
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
�� 

txtSurname
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
�� 
txtTotalFee
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
��  
dgvCustomers
�� 
.
�� 

DataSource
�� #
=
��$ %
null
��& *
;
��* +
dgvCustomers
�� 
.
�� 
Rows
�� 
.
�� 
Clear
�� #
(
��# $
)
��$ %
;
��% &
dgvTools
�� 
.
�� 

DataSource
�� 
=
��  !
null
��" &
;
��& '
dgvTools
�� 
.
�� 
Rows
�� 
.
�� 
Clear
�� 
(
��  
)
��  !
;
��! "
	dgvRental
�� 
.
�� 
Rows
�� 
.
�� 
Clear
��  
(
��  !
)
��! "
;
��" #
cboCategories
�� 
.
�� 
SelectedIndex
�� '
=
��( )
-
��* +
$num
��+ ,
;
��, -
dtpFrom
�� 
.
�� 
Value
�� 
=
�� 
DateTime
�� $
.
��$ %
Today
��% *
;
��* +
dtpTo
�� 
.
�� 
Value
�� 
=
�� 
DateTime
�� "
.
��" #
Today
��# (
;
��( )
}
�� 	
private
�� 
void
�� 0
"cboCategories_SelectedIndexChanged
�� 7
(
��7 8
object
��8 >
sender
��? E
,
��E F
	EventArgs
��G P
e
��Q R
)
��R S
{
�� 	
if
�� 
(
�� 
cboCategories
�� 
.
�� 
SelectedIndex
�� +
>=
��, .
$num
��/ 0
&&
��1 3
cboCategories
��4 A
.
��A B
SelectedItem
��B N
!=
��O Q
null
��R V
)
��V W
{
�� 
string
�� 
categoryCode
�� #
=
��$ %
cboCategories
��& 3
.
��3 4
SelectedItem
��4 @
.
��@ A
ToString
��A I
(
��I J
)
��J K
!
��K L
[
��L M
..
��M O
$num
��O P
]
��P Q
;
��Q R
dgvTools
�� 
.
�� 

DataSource
�� #
=
��$ %
_rentalFacade
��& 3
.
�� 
GetRentableTools
�� %
(
��% &
categoryCode
��& 2
:
��2 3
categoryCode
��4 @
,
��@ A
dtpFrom
��B I
.
��I J
Value
��J O
,
��O P
dtpTo
��Q V
.
��V W
Value
��W \
)
��\ ]
;
��] ^
dgvTools
�� 
.
�� 
Columns
��  
[
��  !
$num
��! "
]
��" #
.
��# $

HeaderText
��$ .
=
��/ 0
$str
��1 6
;
��6 7
dgvTools
�� 
.
�� 
Columns
��  
[
��  !
$num
��! "
]
��" #
.
��# $

HeaderText
��$ .
=
��/ 0
$str
��1 A
;
��A B
dgvTools
�� 
.
�� 
Columns
��  
[
��  !
$num
��! "
]
��" #
.
��# $

HeaderText
��$ .
=
��/ 0
$str
��1 ?
;
��? @
dgvTools
�� 
.
�� 
Columns
��  
[
��  !
$num
��! "
]
��" #
.
��# $

HeaderText
��$ .
=
��/ 0
$str
��1 @
;
��@ A
dgvTools
�� 
.
�� 
Columns
��  
[
��  !
$num
��! "
]
��" #
.
��# $

HeaderText
��$ .
=
��/ 0
$str
��1 :
;
��: ;
Miscellaneous
�� 
.
�� '
SetDataGridViewProperties
�� 7
(
��7 8
dgvTools
��8 @
)
��@ A
;
��A B
}
�� 
else
�� 
{
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$str
��  B
,
��B C
$str
��D X
,
��X Y
MessageBoxButtons
��Z k
.
��k l
OK
��l n
,
��n o
MessageBoxIcon
��p ~
.
��~ 
Warning�� �
)��� �
;��� �
}
�� 
}
�� 	
}
�� 
}�� �?
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
MessageBoxButtons	t �
.
� �
YesNo
� �
)
� �
;
� �
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
Information	w �
)
� �
;
� �
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
MessageBoxButtons	::x �
.
::� �
YesNo
::� �
)
::� �
;
::� �
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
Error	DD~ �
)
DD� �
;
DD� �
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
Information	KK{ �
)
KK� �
;
KK� �
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
}VV �
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
} �d
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
 
IAnalysisService

 )
_analysisService

* :
;

: ;
private 
readonly 
IRateService %
_rateService& 2
;2 3
private 
IReportStrategy 
_report  '
;' (
public 
FrmAnalysis 
( 
INavigation &

navigation' 1
,1 2
IRateService3 ?
rateService@ K
,K L
IAnalysisServiceM ]
analysisService^ m
)m n
:o p
baseq u
(u v

navigation	v �
)
� �
{ 	
InitializeComponent 
(  
)  !
;! "
_analysisService 
= 
analysisService .
;. /
_rateService 
= 
rateService &
;& '
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
SelectedItemKK *
!=KK+ -
nullKK. 2
&&KK3 5
cboReportTypeKK6 C
.KKC D
SelectedItemKKD P
.KKP Q
ToStringKKQ Y
(KKY Z
)KKZ [
==KK\ ^
$strKK_ q
)KKq r
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
{vv 	
UpdateChartww 
(ww 
cboCategoriesww %
)ww% &
;ww& '
}xx 	
privatezz 
voidzz 
UpdateChartzz  
(zz  !
ComboBoxzz! )
cboCategorieszz* 7
)zz7 8
{{{ 	
try|| 
{}} 
int~~ 
selectedYear~~  
=~~! "
int~~# &
.~~& '
Parse~~' ,
(~~, -
cboYears~~- 5
.~~5 6
SelectedItem~~6 B
.~~B C
ToString~~C K
(~~K L
)~~L M
)~~M N
;~~N O
string 
categoryCode #
=$ %
null& *
;* +
if
�� 
(
�� 
_report
�� 
.
�� 
needsCategory
�� )
&&
��* ,
cboCategories
��- :
.
��: ;
SelectedItem
��; G
!=
��H J
null
��K O
)
��O P
{
�� 
categoryCode
��  
=
��! "
cboCategories
��# 0
.
��0 1
SelectedItem
��1 =
.
��= >
ToString
��> F
(
��F G
)
��G H
.
��H I
	Substring
��I R
(
��R S
$num
��S T
,
��T U
$num
��V W
)
��W X
;
��X Y
}
�� 
var
�� 
(
�� 
labels
�� 
,
�� 
values
�� #
)
��# $
=
��% &
_report
��' .
.
��. /
GetData
��/ 6
(
��6 7
selectedYear
��7 C
,
��C D
categoryCode
��E Q
)
��Q R
;
��R S

formsPlot1
�� 
.
�� 
Plot
�� 
.
��  
Clear
��  %
(
��% &
)
��& '
;
��' (

formsPlot1
�� 
.
�� 
Plot
�� 
.
��  
AddBar
��  &
(
��& '
values
��' -
)
��- .
;
��. /
double
�� 
[
�� 
]
�� 

xPositions
�� #
=
��$ %

Enumerable
��& 0
.
��0 1
Range
��1 6
(
��6 7
$num
��7 8
,
��8 9
labels
��: @
.
��@ A
Length
��A G
)
��G H
.
�� 
Select
�� 
(
�� 
i
�� 
=>
��  
(
��! "
double
��" (
)
��( )
i
��) *
)
��* +
.
��+ ,
ToArray
��, 3
(
��3 4
)
��4 5
;
��5 6

formsPlot1
�� 
.
�� 
Plot
�� 
.
��  
XTicks
��  &
(
��& '

xPositions
��' 1
,
��1 2
labels
��3 9
)
��9 :
;
��: ;

formsPlot1
�� 
.
�� 
Plot
�� 
.
��  
Title
��  %
(
��% &
_report
��& -
.
��- .
GetTitle
��. 6
(
��6 7
selectedYear
��7 C
,
��C D
categoryCode
��E Q
)
��Q R
)
��R S
;
��S T

formsPlot1
�� 
.
�� 
Plot
�� 
.
��  
XLabel
��  &
(
��& '
$str
��' /
)
��/ 0
;
��0 1

formsPlot1
�� 
.
�� 
Refresh
�� "
(
��" #
)
��# $
;
��$ %
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
��  
$@"
��  #
$str
��# <
{
��< =
ex
��= ?
.
��? @
Message
��@ G
}
��G H
"
��H I
,
��I J
$str
��K S
,
��S T
MessageBoxButtons
��U f
.
��f g
OK
��g i
,
��i j
MessageBoxIcon
��k y
.
��y z
Error
��z 
)�� �
;��� �
}
�� 
}
�� 	
}
�� 
}�� �C
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
;	77 �
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
Information	RR �
)
RR� �
;
RR� �
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
}__ �#
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
readonly		 
ICustomerService		 )
_customerService		* :
;		: ;
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
,

4 5
ICustomerService

6 F
customerService

G V
)

V W
:

X Y
base

Z ^
(

_ `

navigation

` j
)

j k
{ 	
InitializeComponent 
(  
)  !
;! "
_customerService 
= 
customerService .
;. /
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
MessageBoxIcon	$$t �
.
$$� �
Information
$$� �
)
$$� �
;
$$� �
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