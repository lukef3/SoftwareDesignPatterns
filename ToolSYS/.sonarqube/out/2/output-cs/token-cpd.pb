ç"
VC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Business\Strategies\ReportStrategy.cs
	namespace 	
ToolSYS
 
. 
Business 
. 

Strategies %
{ 
public 

	interface 
IReportStrategy $
{ 
string 
GetTitle 
( 
int 
year  
,  !
string" (
?( )
category* 2
=3 4
null5 9
)9 :
;: ;
( 	
string	 
[ 
] 
Labels 
, 
double  
[  !
]! "
Values# )
)) *
GetData+ 2
(2 3
int3 6
year7 ;
,; <
string= C
?C D
categoryE M
=N O
nullP T
)T U
;U V
bool		 
needsCategory		 
{		 
get		  
;		  !
}		" #
}

 
public 

class 
RevenueReport 
:  
IReportStrategy! 0
{ 
private 
readonly 
IAnalysisService )
_analysisService* :
;: ;
public 
RevenueReport 
( 
IAnalysisService -
analysisService. =
)= >
{ 	
_analysisService 
= 
analysisService .
;. /
} 	
public 
bool 
needsCategory !
=>" $
false% *
;* +
public 
string 
GetTitle 
( 
int "
year# '
,' (
string) /
?/ 0
category1 9
=: ;
null< @
)@ A
{ 	
return 
$" 
$str '
{' (
year( ,
}, -
"- .
;. /
} 	
public 
( 
string 
[ 
] 
Labels 
,  
double! '
[' (
]( )
Values* 0
)0 1
GetData2 9
(9 :
int: =
year> B
,B C
stringD J
?J K
categoryL T
=U V
nullW [
)[ \
{ 	
return 
_analysisService #
.# $
GetMonthlyRevenues$ 6
(6 7
year7 ;
); <
;< =
} 	
}   
public"" 

class"" 
ToolRentalReport"" !
:""" #
IReportStrategy""$ 3
{## 
private$$ 
readonly$$ 
IAnalysisService$$ )
_analysisService$$* :
;$$: ;
public&& 
ToolRentalReport&& 
(&&  
IAnalysisService&&  0
analysisService&&1 @
)&&@ A
{'' 	
_analysisService(( 
=(( 
analysisService(( .
;((. /
})) 	
public++ 
bool++ 
needsCategory++ !
=>++" $
true++% )
;++) *
public-- 
string-- 
GetTitle-- 
(-- 
int-- "
year--# '
,--' (
string--) /
?--/ 0
category--1 9
)--9 :
{.. 	
return// 
$"// 
$str// %
{//% &
year//& *
}//* +
$str//+ 9
{//9 :
category//: B
}//B C
"//C D
;//D E
}00 	
public22 
(22 
string22 
[22 
]22 
Labels22 
,22  
double22! '
[22' (
]22( )
Values22* 0
)220 1
GetData222 9
(229 :
int22: =
year22> B
,22B C
string22D J
?22J K
category22L T
)22T U
{33 	
return44 
_analysisService44 #
.44# $!
GetMonthlyToolRentals44$ 9
(449 :
year44: >
,44> ?
categoryCode44@ L
:44L M
category44N V
)44V W
;44W X
}55 	
}66 
}77 æ;
QC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Business\Services\ToolService.cs
	namespace 	
ToolSYS
 
. 
Business 
. 
Services #
{ 
public 

	interface 
IToolService !
{ 
void		 
AddTool		 
(		 
Tool		 
tool		 
)		 
;		  
void

 

UpdateTool

 
(

 
Tool

 
tool

 !
)

! "
;

" #
void 

RemoveTool 
( 
int 
toolId "
)" #
;# $
DataSet 
GetFilteredTools  
(  !
string! '
toolIdAsString( 6
,6 7
string8 >
categoryCode? K
,K L
stringM S
descriptionT _
,_ `
stringa g
manufacturerh t
,t u
stringv |
status	} É
,
É Ñ
string
Ö ã
phrase
å í
)
í ì
;
ì î
DataSet 
GetAvailableTools !
(! "
)" #
;# $
DataSet 
GetRentableTools  
(  !
string! '
categoryCode( 4
,4 5
DateTime6 >
from? C
,C D
DateTimeE M
toN P
)P Q
;Q R
int 
GetNextToolId 
( 
) 
; 
} 
public 

class 
ToolService 
: 
IToolService +
{ 
private 
readonly 
	IToolData "
	_toolData# ,
;, -
public 
ToolService 
( 
	IToolData $
toolData% -
)- .
{ 	
	_toolData 
= 
toolData  
;  !
} 	
public 
void 
AddTool 
( 
Tool  
tool! %
)% &
{ 	
ValidateTool 
( 
tool 
, 
isUpdate '
:' (
false) .
). /
;/ 0
	_toolData 
. 
AddTool 
( 
tool "
)" #
;# $
}   	
public"" 
void"" 

UpdateTool"" 
("" 
Tool"" #
tool""$ (
)""( )
{## 	
ValidateTool$$ 
($$ 
tool$$ 
,$$ 
isUpdate$$ '
:$$' (
true$$) -
)$$- .
;$$. /
	_toolData%% 
.%% 

UpdateTool%%  
(%%  !
tool%%! %
)%%% &
;%%& '
}&& 	
public(( 
void(( 

RemoveTool(( 
((( 
int(( "
toolId((# )
)(() *
{)) 	
if** 
(** 
!** 
	_toolData** 
.** 

ToolExists** %
(**% &
toolId**& ,
)**, -
)**- .
throw++ 
new++ 
ArgumentException++ +
(+++ ,
$str++, >
)++> ?
;++? @
	_toolData-- 
.-- 

RemoveTool--  
(--  !
toolId--! '
)--' (
;--( )
}.. 	
public00 
DataSet00 
GetFilteredTools00 '
(00' (
string00( .
toolIdAsString00/ =
,00= >
string00? E
categoryCode00F R
,00R S
string00T Z
description00[ f
,00f g
string00h n
manufacturer00o {
,00{ |
string	00} É
status
00Ñ ä
,
00ä ã
string
00å í
phrase
00ì ô
)
00ô ö
{11 	
return22 
	_toolData22 
.22 
GetFilteredTools22 -
(22- .
toolIdAsString22. <
,22< =
categoryCode22> J
,22J K
description22L W
,22W X
manufacturer22Y e
,22e f
status22g m
,22m n
phrase22o u
)22u v
;22v w
}33 	
public55 
DataSet55 
GetAvailableTools55 (
(55( )
)55) *
{66 	
return77 
	_toolData77 
.77 
GetAvailableTools77 .
(77. /
)77/ 0
;770 1
}88 	
public:: 
DataSet:: 
GetRentableTools:: '
(::' (
string::( .
categoryCode::/ ;
,::; <
DateTime::= E
from::F J
,::J K
DateTime::L T
to::U W
)::W X
{;; 	
return<< 
	_toolData<< 
.<< 
GetRentableTools<< -
(<<- .
categoryCode<<. :
,<<: ;
from<<< @
,<<@ A
to<<B D
)<<D E
;<<E F
}== 	
public?? 
int?? 
GetNextToolId??  
(??  !
)??! "
{@@ 	
returnAA 
	_toolDataAA 
.AA 
GetNextToolIdAA *
(AA* +
)AA+ ,
;AA, -
}BB 	
privateDD 
voidDD 
ValidateToolDD !
(DD! "
ToolDD" &
toolDD' +
,DD+ ,
boolDD- 1
isUpdateDD2 :
)DD: ;
{EE 	
ifFF 
(FF 
stringFF 
.FF 
IsNullOrEmptyFF $
(FF$ %
toolFF% )
.FF) *
toolDescriptionFF* 9
)FF9 :
||FF; =
toolFF> B
.FFB C
toolDescriptionFFC R
.FFR S
LengthFFS Y
>FFZ [
$numFF\ ^
)FF^ _
throwGG 
newGG 
ArgumentExceptionGG +
(GG+ ,
$strGG, c
)GGc d
;GGd e
ifII 
(II 
stringII 
.II 
IsNullOrEmptyII $
(II$ %
toolII% )
.II) *
categoryCodeII* 6
)II6 7
)II7 8
throwJJ 
newJJ 
ArgumentExceptionJJ +
(JJ+ ,
$strJJ, H
)JJH I
;JJI J
ifLL 
(LL 
!LL 
toolLL 
.LL 
categoryCodeLL "
.LL" #
AllLL# &
(LL& '
charLL' +
.LL+ ,
IsLetterOrDigitLL, ;
)LL; <
)LL< =
throwMM 
newMM 
ArgumentExceptionMM +
(MM+ ,
$strMM, d
)MMd e
;MMe f
ifOO 
(OO 
stringOO 
.OO 
IsNullOrEmptyOO $
(OO$ %
toolOO% )
.OO) *
toolManufacturerOO* :
)OO: ;
||OO< >
toolOO? C
.OOC D
toolManufacturerOOD T
.OOT U
LengthOOU [
>OO\ ]
$numOO^ `
)OO` a
throwPP 
newPP 
ArgumentExceptionPP +
(PP+ ,
$strPP, d
)PPd e
;PPe f
ifRR 
(RR 
!RR 
isUpdateRR 
&&RR 
	_toolDataRR &
.RR& '

ToolExistsRR' 1
(RR1 2
toolRR2 6
.RR6 7
toolIdRR7 =
)RR= >
)RR> ?
throwSS 
newSS 
ArgumentExceptionSS +
(SS+ ,
$strSS, Q
)SSQ R
;SSR S
}TT 	
}UU 
}VV á,
SC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Business\Services\RentalService.cs
	namespace 	
ToolSYS
 
. 
Business 
. 
Services #
{ 
public 

	interface 
IRentalService #
{ 
int		 
GetNextRentalId		 
(		 
)		 
;		 
decimal

 
CalculateRentalFee

 "
(

" #
int

# &

customerId

' 1
,

1 2
string

3 9
categoryCode

: F
,

F G
DateTime

H P
rentDate

Q Y
,

Y Z
DateTime

[ c

returnDate

d n
)

n o
;

o p
void 
ConfirmRental 
( 
Rental !
rental" (
)( )
;) *
	DataTable 
GetRentalItems  
(  !
int! $
rentalId% -
)- .
;. /
void 

ReturnTool 
( 
int 
rentalId $
,$ %
int& )
toolId* 0
)0 1
;1 2
} 
public 

class 
RentalService 
:  
IRentalService! /
{ 
private 
readonly 
IRentalData $
_rentalData% 0
;0 1
private 
readonly 
IRentalItemData (
_rentalItemData) 8
;8 9
private 
readonly 
	IRateData "
	_rateData# ,
;, -
public 
RentalService 
( 
IRentalData (

rentalData) 3
,3 4
IRentalItemData5 D
rentalItemDataE S
,S T
	IRateDataU ^
rateData_ g
)g h
{ 	
_rentalData 
= 

rentalData $
;$ %
_rentalItemData 
= 
rentalItemData ,
;, -
	_rateData 
= 
rateData  
;  !
} 	
public 
int 
GetNextRentalId "
(" #
)# $
{ 	
return 
_rentalData 
. 
GetNextRentalId .
(. /
)/ 0
;0 1
} 	
public!! 
decimal!! 
CalculateRentalFee!! )
(!!) *
int!!* -

customerId!!. 8
,!!8 9
string!!: @
categoryCode!!A M
,!!M N
DateTime!!O W
rentDate!!X `
,!!` a
DateTime!!b j

returnDate!!k u
)!!u v
{"" 	
if## 
(## 
rentDate## 
>## 

returnDate## %
)##% &
throw$$ 
new$$ 
ArgumentException$$ +
($$+ ,
$str$$, Y
)$$Y Z
;$$Z [
int&& 

daysRented&& 
=&& 
(&& 

returnDate&& (
-&&) *
rentDate&&+ 3
)&&3 4
.&&4 5
Days&&5 9
+&&: ;
$num&&< =
;&&= >
Rate'' 
rate'' 
='' 
	_rateData'' !
.''! "!
GetRateByCategoryCode''" 7
(''7 8
categoryCode''8 D
)''D E
;''E F
decimal(( 
	dailyRate(( 
=(( 
rate((  $
.(($ %
rate((% )
;(() *
decimal)) 
fee)) 
=)) 
	dailyRate)) #
*))$ %

daysRented))& 0
;))0 1
return++ 
fee++ 
;++ 
},, 	
public.. 
void.. 
ConfirmRental.. !
(..! "
Rental.." (
rental..) /
)../ 0
{// 	
_rentalData00 
.00 
	AddRental00 !
(00! "
rental00" (
)00( )
;00) *
foreach22 
(22 
var22 

rentalItem22 #
in22$ &
rental22' -
.22- .
rentalItems22. 9
)229 :
{33 
_rentalItemData44 
.44  
AddRentalItem44  -
(44- .

rentalItem44. 8
)448 9
;449 :
}55 
}66 	
public88 
	DataTable88 
GetRentalItems88 '
(88' (
int88( +
rentalId88, 4
)884 5
{99 	
if:: 
(:: 
rentalId:: 
<=:: 
$num:: 
):: 
throw;; 
new;; 
ArgumentException;; +
(;;+ ,
$str;;, @
);;@ A
;;;A B
return== 
_rentalData== 
.== $
GetRentalItemsByRentalId== 7
(==7 8
rentalId==8 @
)==@ A
;==A B
}>> 	
public@@ 
void@@ 

ReturnTool@@ 
(@@ 
int@@ "
rentalId@@# +
,@@+ ,
int@@- 0
toolId@@1 7
)@@7 8
{AA 	
ifBB 
(BB 
rentalIdBB 
<=BB 
$numBB 
||BB  
toolIdBB! '
<=BB( *
$numBB+ ,
)BB, -
throwCC 
newCC 
ArgumentExceptionCC +
(CC+ ,
$strCC, Z
)CCZ [
;CC[ \
_rentalDataEE 
.EE 

ReturnToolEE "
(EE" #
rentalIdEE# +
,EE+ ,
toolIdEE- 3
)EE3 4
;EE4 5
}FF 	
}II 
}JJ Î(
QC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Business\Services\RateService.cs
	namespace 	
ToolSYS
 
. 
Business 
. 
Services #
{ 
public 

	interface 
IRateService !
{ 
void		 
AddRate		 
(		 
Rate		 
rate		 
)		 
;		  
void

 

UpdateRate

 
(

 
Rate

 
rate

 !
)

! "
;

" #
Rate !
GetRateByCategoryCode "
(" #
string# )
categoryCode* 6
)6 7
;7 8
DataSet 
GetAllCategories  
(  !
)! "
;" #
} 
public 

class 
RateService 
: 
IRateService +
{ 
private 
readonly 
	IRateData "
	_rateData# ,
;, -
public 
RateService 
( 
	IRateData $
rateData% -
)- .
{ 	
	_rateData 
= 
rateData  
;  !
} 	
public 
void 
AddRate 
( 
Rate  
rate! %
)% &
{ 	
ValidateRate 
( 
rate 
, 
isUpdate '
:' (
false) .
). /
;/ 0
	_rateData 
. 
AddRate 
( 
rate "
)" #
;# $
} 	
public 
void 

UpdateRate 
( 
Rate #
rate$ (
)( )
{ 	
ValidateRate   
(   
rate   
,   
isUpdate   '
:  ' (
true  ) -
)  - .
;  . /
	_rateData!! 
.!! 

UpdateRate!!  
(!!  !
rate!!! %
)!!% &
;!!& '
}"" 	
public$$ 
Rate$$ !
GetRateByCategoryCode$$ )
($$) *
string$$* 0
categoryCode$$1 =
)$$= >
{%% 	
if&& 
(&& 
string&& 
.&& 
IsNullOrEmpty&& $
(&&$ %
categoryCode&&% 1
)&&1 2
)&&2 3
throw'' 
new'' 
ArgumentException'' +
(''+ ,
$str'', H
)''H I
;''I J
return)) 
	_rateData)) 
.)) !
GetRateByCategoryCode)) 2
())2 3
categoryCode))3 ?
)))? @
;))@ A
}** 	
public,, 
DataSet,, 
GetAllCategories,, '
(,,' (
),,( )
{-- 	
return.. 
	_rateData.. 
... 
GetAllCategories.. -
(..- .
)... /
;../ 0
}// 	
private11 
void11 
ValidateRate11 !
(11! "
Rate11" &
rate11' +
,11+ ,
bool11- 1
isUpdate112 :
)11: ;
{22 	
if33 
(33 
string33 
.33 
IsNullOrEmpty33 $
(33$ %
rate33% )
.33) *
categoryCode33* 6
)336 7
||338 :
rate33; ?
.33? @
categoryCode33@ L
.33L M
Length33M S
!=33T V
$num33W X
)33X Y
throw44 
new44 
ArgumentException44 +
(44+ ,
$str44, ^
)44^ _
;44_ `
if66 
(66 
string66 
.66 
IsNullOrEmpty66 $
(66$ %
rate66% )
.66) *
categoryDesc66* 6
)666 7
||668 :
rate66; ?
.66? @
categoryDesc66@ L
.66L M
Length66M S
>66T U
$num66V X
)66X Y
throw77 
new77 
ArgumentException77 +
(77+ ,
$str77, g
)77g h
;77h i
if99 
(99 
rate99 
.99 
rate99 
<=99 
$num99 
)99 
throw:: 
new:: 
ArgumentException:: +
(::+ ,
$str::, J
)::J K
;::K L
if<< 
(<< 
!<< 
rate<< 
.<< 
categoryCode<< "
.<<" #
All<<# &
(<<& '
char<<' +
.<<+ ,
IsLetter<<, 4
)<<4 5
)<<5 6
throw== 
new== 
ArgumentException== +
(==+ ,
$str==, Y
)==Y Z
;==Z [
if?? 
(?? 
!?? 
isUpdate?? 
&&?? 
	_rateData?? &
.??& '!
DoesCategoryCodeExist??' <
(??< =
rate??= A
.??A B
categoryCode??B N
)??N O
)??O P
throw@@ 
new@@ 
ArgumentException@@ +
(@@+ ,
$str@@, W
)@@W X
;@@X Y
}AA 	
}BB 
}CC ©<
UC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Business\Services\CustomerService.cs
	namespace 	
ToolSYS
 
. 
Business 
. 
Services #
{ 
public 

	interface 
ICustomerService %
{		 
int

 
GetNextCustomerId

 
(

 
)

 
;

  
void 
AddCustomer 
( 
Customer !
customer" *
)* +
;+ ,
void 
UpdateCustomer 
( 
Customer $
customer% -
)- .
;. /
DataSet 
SearchCustomers 
(  
string  &
searchPhrase' 3
)3 4
;4 5
DataSet  
GetFilteredCustomers $
($ %
string% +

customerId, 6
,6 7
string8 >
forename? G
,G H
stringI O
surnameP W
,W X
stringY _
email` e
,e f
stringg m
phonen s
,s t
stringu {
eircode	| É
,
É Ñ
string
Ö ã
phrase
å í
)
í ì
;
ì î
} 
public 

class 
CustomerService  
:! "
ICustomerService# 3
{ 
private 
readonly 
ICustomerData &
_customerData' 4
;4 5
public 
CustomerService 
( 
ICustomerData ,
customerData- 9
)9 :
{ 	
_customerData 
= 
customerData (
;( )
} 	
public 
int 
GetNextCustomerId $
($ %
)% &
{ 	
return 
_customerData  
.  !
GetNextCustomerId! 2
(2 3
)3 4
;4 5
} 	
public 
void 
AddCustomer 
(  
Customer  (
customer) 1
)1 2
{   	
ValidateCustomer!! 
(!! 
customer!! %
)!!% &
;!!& '
_customerData"" 
."" 
AddCustomer"" %
(""% &
customer""& .
)"". /
;""/ 0
}## 	
public%% 
void%% 
UpdateCustomer%% "
(%%" #
Customer%%# +
customer%%, 4
)%%4 5
{&& 	
ValidateCustomer'' 
('' 
customer'' %
)''% &
;''& '
_customerData(( 
.(( 
UpdateCustomer(( (
(((( )
customer(() 1
)((1 2
;((2 3
})) 	
public++ 
DataSet++ 
SearchCustomers++ &
(++& '
string++' -
searchPhrase++. :
)++: ;
{,, 	
return-- 
_customerData--  
.--  !
SearchCustomers--! 0
(--0 1
searchPhrase--1 =
)--= >
;--> ?
}.. 	
public00 
DataSet00  
GetFilteredCustomers00 +
(00+ ,
string00, 2

customerId003 =
,00= >
string00? E
forename00F N
,00N O
string00P V
surname00W ^
,00^ _
string00` f
email00g l
,00l m
string00n t
phone00u z
,00z {
string	00| Ç
eircode
00É ä
,
00ä ã
string
00å í
phrase
00ì ô
)
00ô ö
{11 	
return22 
_customerData22  
.22  ! 
GetFilteredCustomers22! 5
(225 6

customerId226 @
,22@ A
forename22B J
,22J K
surname22L S
,22S T
email22U Z
,22Z [
phone22\ a
,22a b
eircode22c j
,22j k
phrase22l r
)22r s
;22s t
}33 	
private55 
static55 
void55 
ValidateCustomer55 ,
(55, -
Customer55- 5
customer556 >
)55> ?
{66 	
if77 
(77 
string77 
.77 
IsNullOrWhiteSpace77 )
(77) *
customer77* 2
.772 3
forename773 ;
)77; <
||77= ?
customer77@ H
.77H I
forename77I Q
.77Q R
Length77R X
>77Y Z
$num77[ ]
)77] ^
throw88 
new88 
ArgumentException88 +
(88+ ,
$str88, w
)88w x
;88x y
if99 
(99 
!99 
customer99 
.99 
forename99 "
.99" #
All99# &
(99& '
char99' +
.99+ ,
IsLetter99, 4
)994 5
)995 6
throw:: 
new:: 
ArgumentException:: +
(::+ ,
$str::, T
)::T U
;::U V
if<< 
(<< 
string<< 
.<< 
IsNullOrWhiteSpace<< )
(<<) *
customer<<* 2
.<<2 3
surname<<3 :
)<<: ;
||<<< >
customer<<? G
.<<G H
surname<<H O
.<<O P
Length<<P V
><<W X
$num<<Y [
)<<[ \
throw== 
new== 
ArgumentException== +
(==+ ,
$str==, v
)==v w
;==w x
if>> 
(>> 
!>> 
customer>> 
.>> 
surname>> !
.>>! "
All>>" %
(>>% &
char>>& *
.>>* +
IsLetter>>+ 3
)>>3 4
)>>4 5
throw?? 
new?? 
ArgumentException?? +
(??+ ,
$str??, S
)??S T
;??T U
RegexAA 

emailRegexAA 
=AA 
newAA "
RegexAA# (
(AA( )
$strAA) S
)AAS T
;AAT U
ifBB 
(BB 
!BB 

emailRegexBB 
.BB 
IsMatchBB #
(BB# $
customerBB$ ,
.BB, -
emailBB- 2
)BB2 3
)BB3 4
throwCC 
newCC 
ArgumentExceptionCC +
(CC+ ,
$strCC, D
)CCD E
;CCE F
ifEE 
(EE 
!EE 
customerEE 
.EE 
phoneEE 
.EE  
AllEE  #
(EE# $
charEE$ (
.EE( )
IsDigitEE) 0
)EE0 1
||EE2 4
customerEE5 =
.EE= >
phoneEE> C
.EEC D
LengthEED J
<EEK L
$numEEM N
||EEO Q
customerEER Z
.EEZ [
phoneEE[ `
.EE` a
LengthEEa g
>EEh i
$numEEj l
)EEl m
throwFF 
newFF 
ArgumentExceptionFF +
(FF+ ,
$strFF, [
)FF[ \
;FF\ ]
RegexHH 
eircodeRegexHH 
=HH  
newHH! $
RegexHH% *
(HH* +
$strHH+ i
,HHi j
RegexOptionsHHk w
.HHw x

IgnoreCase	HHx Ç
)
HHÇ É
;
HHÉ Ñ
ifII 
(II 
!II 
eircodeRegexII 
.II 
IsMatchII %
(II% &
customerII& .
.II. /
eircodeII/ 6
)II6 7
)II7 8
throwJJ 
newJJ 
ArgumentExceptionJJ +
(JJ+ ,
$strJJ, >
)JJ> ?
;JJ? @
}KK 	
}LL 
}MM èM
QC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Business\Facades\RentalFacade.cs
	namespace 	
ToolSYS
 
. 
Business 
. 
Facades "
;" #
public 
	interface 
IRentalFacade 
{		 
	DataTable

 
SearchCustomers

 
(

 
string

 $

searchTerm

% /
)

/ 0
;

0 1
	DataTable 
GetCategories 
( 
) 
; 
	DataTable 
GetRentableTools 
( 
string %
categoryCode& 2
,2 3
DateTime4 <
fromDate= E
,E F
DateTimeG O
toDateP V
)V W
;W X
void 
StartNewRental	 
( 
int 

customerId &
)& '
;' (
void 
AddToolToRental	 
( 
int 
toolId #
,# $
string% +
categoryCode, 8
,8 9
string: @
descriptionA L
,L M
stringN T
manufacturerU a
,a b
DateTimec k
rentDatel t
,t u
DateTimev ~

returnDate	 â
)
â ä
;
ä ã
decimal 
CalculateTotalFee 
( 
) 
;  
void 
ConfirmRental	 
( 
) 
; 
void 
ResetRental	 
( 
) 
; 
Rental 

GetCurrentRental 
( 
) 
; 
} 
public 
class 
RentalFacade 
: 
IRentalFacade )
{ 
private 
readonly 
IToolService !
_toolService" .
;. /
private 
readonly 
IRateService !
_rateService" .
;. /
private 
readonly 
ICustomerService %
_customerService& 6
;6 7
private 
readonly 
IRentalService #
_rentalService$ 2
;2 3
private 
IRentalBuilder 
? 
_rentalBuilder *
;* +
public 

RentalFacade 
( 
IToolService 
toolService  
,  !
IRateService 
rateService  
,  !
ICustomerService   
customerService   (
,  ( )
IRentalService!! 
rentalService!! $
)!!$ %
{"" 
_toolService## 
=## 
toolService## "
;##" #
_rateService$$ 
=$$ 
rateService$$ "
;$$" #
_customerService%% 
=%% 
customerService%% *
;%%* +
_rentalService&& 
=&& 
rentalService&& &
;&&& '
}'' 
public)) 

	DataTable)) 
SearchCustomers)) $
())$ %
string))% +

searchTerm)), 6
)))6 7
{** 
DataSet++ 
	customers++ 
=++ 
_customerService++ ,
.++, -
SearchCustomers++- <
(++< =

searchTerm++= G
)++G H
;++H I
return,, 
	customers,, 
.,, 
Tables,, 
[,,  
$str,,  *
],,* +
;,,+ ,
}-- 
public// 

	DataTable// 
GetCategories// "
(//" #
)//# $
{00 
DataSet11 

categories11 
=11 
_rateService11 )
.11) *
GetAllCategories11* :
(11: ;
)11; <
;11< =
return22 

categories22 
.22 
Tables22  
[22  !
$num22! "
]22" #
;22# $
}33 
public55 

	DataTable55 
GetRentableTools55 %
(55% &
string55& ,
categoryCode55- 9
,559 :
DateTime55; C
fromDate55D L
,55L M
DateTime55N V
toDate55W ]
)55] ^
{66 
DataSet77 
tools77 
=77 
_toolService77 $
.77$ %
GetRentableTools77% 5
(775 6
categoryCode776 B
,77B C
fromDate77D L
,77L M
toDate77N T
)77T U
;77U V
return88 
tools88 
.88 
Tables88 
[88 
$str88 "
]88" #
;88# $
}99 
public;; 

void;; 
StartNewRental;; 
(;; 
int;; "

customerId;;# -
);;- .
{<< 
int== 
rentalId== 
=== 
_rentalService== %
.==% &
GetNextRentalId==& 5
(==5 6
)==6 7
;==7 8
_rentalBuilder>> 
=>> 
new>> 
RentalBuilder>> *
(>>* +
)>>+ ,
.?? 
SetRentalId?? 
(?? 
rentalId?? !
)??! "
.@@ 
SetCustomerId@@ 
(@@ 

customerId@@ %
)@@% &
.AA 
SetTransactionDateAA 
(AA  
DateTimeAA  (
.AA( )
TodayAA) .
)AA. /
;AA/ 0
}BB 
publicDD 

voidDD 
AddToolToRentalDD 
(DD  
intDD  #
toolIdDD$ *
,DD* +
stringDD, 2
categoryCodeDD3 ?
,DD? @
stringDDA G
descriptionDDH S
,DDS T
stringDDU [
manufacturerDD\ h
,DDh i
DateTimeDDj r
rentDateDDs {
,DD{ |
DateTime	DD} Ö

returnDate
DDÜ ê
)
DDê ë
{EE 
ifFF 

(FF 
_rentalBuilderFF 
==FF 
nullFF "
)FF" #
throwGG 
newGG %
InvalidOperationExceptionGG /
(GG/ 0
$strGG0 N
)GGN O
;GGO P
decimalII 
	rentalFeeII 
=II 
_rentalServiceII *
.II* +
CalculateRentalFeeII+ =
(II= >
_rentalBuilderJJ 
.JJ 
	GetRentalJJ $
(JJ$ %
)JJ% &
.JJ& '

customerIdJJ' 1
,JJ1 2
categoryCodeKK 
,KK 
rentDateLL 
,LL 

returnDateMM 
)MM 
;MM 
varOO 

rentalItemOO 
=OO 
newOO 

RentalItemOO '
{PP 	
rentalIdQQ 
=QQ 
_rentalBuilderQQ %
.QQ% &
	GetRentalQQ& /
(QQ/ 0
)QQ0 1
.QQ1 2
rentalIdQQ2 :
,QQ: ;
toolIdRR 
=RR 
toolIdRR 
,RR 
rentDateSS 
=SS 
rentDateSS 
,SS  

returnDateTT 
=TT 

returnDateTT #
,TT# $
	rentalFeeUU 
=UU 
	rentalFeeUU !
}VV 	
;VV	 

_rentalBuilderXX 
.XX 
AddRentalItemXX $
(XX$ %

rentalItemXX% /
)XX/ 0
;XX0 1
}YY 
public[[ 

decimal[[ 
CalculateTotalFee[[ $
([[$ %
)[[% &
{\\ 
if]] 

(]] 
_rentalBuilder]] 
==]] 
null]] "
)]]" #
return^^ 
$num^^ 
;^^ 
var`` 
rental`` 
=`` 
_rentalBuilder`` #
.``# $
	GetRental``$ -
(``- .
)``. /
;``/ 0
ifbb 

(bb 
rentalbb 
.bb 
rentalItemsbb 
==bb !
nullbb" &
||bb' )
!bb* +
rentalbb+ 1
.bb1 2
rentalItemsbb2 =
.bb= >
Anybb> A
(bbA B
)bbB C
)bbC D
returncc 
$numcc 
;cc 
returnee 
rentalee 
.ee 
rentalItemsee !
.ee! "
Sumee" %
(ee% &
itemee& *
=>ee+ -
itemee. 2
.ee2 3
	rentalFeeee3 <
)ee< =
;ee= >
}ff 
publichh 

voidhh 
ConfirmRentalhh 
(hh 
)hh 
{ii 
ifjj 

(jj 
_rentalBuilderjj 
==jj 
nulljj "
)jj" #
throwkk 
newkk %
InvalidOperationExceptionkk /
(kk/ 0
$strkk0 N
)kkN O
;kkO P
varmm 
rentalmm 
=mm 
_rentalBuildermm #
.nn 
SetTotalFeenn 
(nn 
CalculateTotalFeenn *
(nn* +
)nn+ ,
)nn, -
.oo 
Buildoo 
(oo 
)oo 
;oo 
_rentalServiceqq 
.qq 
ConfirmRentalqq $
(qq$ %
rentalqq% +
)qq+ ,
;qq, -
_rentalBuilderss 
=ss 
nullss 
;ss 
}tt 
publicvv 

voidvv 
ResetRentalvv 
(vv 
)vv 
{ww 
_rentalBuilderxx 
=xx 
nullxx 
;xx 
}yy 
public{{ 

Rental{{ 
GetCurrentRental{{ "
({{" #
){{# $
{|| 
return}} 
_rentalBuilder}} 
.}} 
	GetRental}} '
(}}' (
)}}( )
;}}) *
}~~ 
} ã=
UC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Business\Services\AnalysisService.cs
	namespace 	
ToolSYS
 
. 
Business 
. 
Services #
{ 
public 

	interface 
IAnalysisService %
{ 
	DataTable 
GetDistinctYears "
(" #
)# $
;$ %
(		 	
string			 
[		 
]		 
Months		 
,		 
double		  
[		  !
]		! "
Revenues		# +
)		+ ,
GetMonthlyRevenues		- ?
(		? @
int		@ C
year		D H
)		H I
;		I J
(

 	
string

	 
[

 
]

 
Months

 
,

 
double

  
[

  !
]

! "
Rentals

# *
)

* +!
GetMonthlyToolRentals

, A
(

A B
int

B E
year

F J
,

J K
string

L R
categoryCode

S _
)

_ `
;

` a
} 
public 

class 
AnalysisService  
:! "
IAnalysisService# 3
{ 
private 
readonly 
IAnalysisData &
_analysisData' 4
;4 5
public 
AnalysisService 
( 
IAnalysisData ,
analysisData- 9
)9 :
{ 	
_analysisData 
= 
analysisData (
;( )
} 	
public 
	DataTable 
GetDistinctYears )
() *
)* +
{ 	
return 
_analysisData  
.  !
GetDistinctYears! 1
(1 2
)2 3
;3 4
} 	
public 
( 
string 
[ 
] 
Months 
,  
double! '
[' (
]( )
Revenues* 2
)2 3
GetMonthlyRevenues4 F
(F G
intG J
yearK O
)O P
{ 	
	DataTable 
revenueTable "
=# $
_analysisData% 2
.2 3
GetMonthlyRevenues3 E
(E F
yearF J
)J K
;K L
string 
[ 
] 
months 
= 
new !
string" (
[( )
$num) +
]+ ,
;, -
double   
[   
]   
revenues   
=   
new    #
double  $ *
[  * +
$num  + -
]  - .
;  . /
for"" 
("" 
int"" 
i"" 
="" 
$num"" 
;"" 
i"" 
<"" 
$num""  "
;""" #
i""$ %
++""% '
)""' (
{## 
months$$ 
[$$ 
i$$ 
]$$ 
=$$ 
GetMonthName$$ (
($$( )
i$$) *
+$$+ ,
$num$$- .
)$$. /
;$$/ 0
revenues%% 
[%% 
i%% 
]%% 
=%% 
$num%% 
;%%  
}&& 
foreach(( 
((( 
DataRow(( 
row((  
in((! #
revenueTable(($ 0
.((0 1
Rows((1 5
)((5 6
{)) 
int** 

monthIndex** 
=**  
int**! $
.**$ %
Parse**% *
(*** +
row**+ .
[**. /
$str**/ 6
]**6 7
.**7 8
ToString**8 @
(**@ A
)**A B
)**B C
-**D E
$num**F G
;**G H
revenues++ 
[++ 

monthIndex++ #
]++# $
=++% &
Convert++' .
.++. /
ToDouble++/ 7
(++7 8
row++8 ;
[++; <
$str++< E
]++E F
)++F G
;++G H
},, 
return.. 
(.. 
months.. 
,.. 
revenues.. $
)..$ %
;..% &
}// 	
public11 
(11 
string11 
[11 
]11 
Months11 
,11  
double11! '
[11' (
]11( )
Rentals11* 1
)111 2!
GetMonthlyToolRentals113 H
(11H I
int11I L
year11M Q
,11Q R
string11S Y
categoryCode11Z f
)11f g
{22 	
	DataTable33 
dt33 
=33 
_analysisData33 (
.33( )'
GetMonthlyRentalsByCategory33) D
(33D E
year33E I
,33I J
categoryCode33K W
)33W X
;33X Y
string55 
[55 
]55 
months55 
=55 
new55 !
string55" (
[55( )
$num55) +
]55+ ,
;55, -
double66 
[66 
]66 
rentals66 
=66 
new66 "
double66# )
[66) *
$num66* ,
]66, -
;66- .
for88 
(88 
int88 
i88 
=88 
$num88 
;88 
i88 
<88 
$num88  "
;88" #
i88$ %
++88% '
)88' (
{99 
months:: 
[:: 
i:: 
]:: 
=:: 
GetMonthName:: (
(::( )
i::) *
+::+ ,
$num::- .
)::. /
;::/ 0
rentals;; 
[;; 
i;; 
];; 
=;; 
$num;; 
;;; 
}<< 
foreach>> 
(>> 
DataRow>> 
row>>  
in>>! #
dt>>$ &
.>>& '
Rows>>' +
)>>+ ,
{?? 
int@@ 

monthIndex@@ 
=@@  
int@@! $
.@@$ %
Parse@@% *
(@@* +
row@@+ .
[@@. /
$str@@/ 6
]@@6 7
.@@7 8
ToString@@8 @
(@@@ A
)@@A B
.@@B C
	Substring@@C L
(@@L M
$num@@M N
,@@N O
$num@@P Q
)@@Q R
)@@R S
-@@T U
$num@@V W
;@@W X
rentalsAA 
[AA 

monthIndexAA "
]AA" #
=AA$ %
ConvertAA& -
.AA- .
ToDoubleAA. 6
(AA6 7
rowAA7 :
[AA: ;
$strAA; G
]AAG H
)AAH I
;AAI J
}BB 
returnDD 
(DD 
monthsDD 
,DD 
rentalsDD #
)DD# $
;DD$ %
}EE 	
privateGG 
staticGG 
stringGG 
GetMonthNameGG *
(GG* +
intGG+ .
monthGG/ 4
)GG4 5
{HH 	
stringII 
[II 
]II 

monthNamesII 
=II  !
{II" #
$strII$ -
,II- .
$strII/ 9
,II9 :
$strII; B
,IIB C
$strIID K
,IIK L
$strIIM R
,IIR S
$strIIT Z
,IIZ [
$strII\ b
,IIb c
$strIId l
,IIl m
$strIIn y
,IIy z
$str	II{ Ñ
,
IIÑ Ö
$str
IIÜ ê
,
IIê ë
$str
IIí ú
}
IIù û
;
IIû ü
returnJJ 
monthJJ 
>=JJ 
$numJJ 
&&JJ  
monthJJ! &
<=JJ' )
$numJJ* ,
?JJ- .

monthNamesJJ/ 9
[JJ9 :
monthJJ: ?
-JJ@ A
$numJJB C
]JJC D
:JJE F
$strJJG P
;JJP Q
}KK 	
}LL 
}MM Ï,
SC:\GitHub\SoftwareDesignPatterns\ToolSYS\ToolSYS.Business\Builders\RentalBuilder.cs
	namespace 	
ToolSYS
 
. 
Business 
. 
Builders #
{ 
public 

	interface 
IRentalBuilder #
{ 
IRentalBuilder 
SetRentalId "
(" #
int# &
rentalId' /
)/ 0
;0 1
IRentalBuilder 
SetCustomerId $
($ %
int% (

customerId) 3
)3 4
;4 5
IRentalBuilder		 
SetTransactionDate		 )
(		) *
DateTime		* 2
date		3 7
)		7 8
;		8 9
IRentalBuilder

 
SetTotalFee

 "
(

" #
decimal

# *
totalFee

+ 3
)

3 4
;

4 5
IRentalBuilder 
AddRentalItem $
($ %

RentalItem% /

rentalItem0 :
): ;
;; <
Rental 
Build 
( 
) 
; 
Rental 
	GetRental 
( 
) 
; 
} 
public 

class 
RentalBuilder 
:  
IRentalBuilder! /
{ 
private 
readonly 
Rental 
_rental  '
;' (
public 
RentalBuilder 
( 
) 
{ 	
_rental 
= 
new 
Rental  
(  !
)! "
;" #
} 	
public 
IRentalBuilder 
SetRentalId )
() *
int* -
rentalId. 6
)6 7
{ 	
_rental 
. 
rentalId 
= 
rentalId '
;' (
return 
this 
; 
} 	
public   
IRentalBuilder   
SetCustomerId   +
(  + ,
int  , /

customerId  0 :
)  : ;
{!! 	
_rental"" 
."" 

customerId"" 
=""  

customerId""! +
;""+ ,
return## 
this## 
;## 
}$$ 	
public&& 
IRentalBuilder&& 
SetTransactionDate&& 0
(&&0 1
DateTime&&1 9
date&&: >
)&&> ?
{'' 	
_rental(( 
.(( 
transactionDate(( #
=(($ %
date((& *
;((* +
return)) 
this)) 
;)) 
}** 	
public,, 
IRentalBuilder,, 
SetTotalFee,, )
(,,) *
decimal,,* 1
totalFee,,2 :
),,: ;
{-- 	
_rental.. 
... 
totalFee.. 
=.. 
totalFee.. '
;..' (
return// 
this// 
;// 
}00 	
public22 
IRentalBuilder22 
AddRentalItem22 +
(22+ ,

RentalItem22, 6

rentalItem227 A
)22A B
{33 	
_rental44 
.44 
rentalItems44 
??=44  #
new44$ '
List44( ,
<44, -

RentalItem44- 7
>447 8
(448 9
)449 :
;44: ;
_rental55 
.55 
rentalItems55 
.55  
Add55  #
(55# $

rentalItem55$ .
)55. /
;55/ 0
return66 
this66 
;66 
}77 	
public99 
Rental99 
Build99 
(99 
)99 
{:: 	
ValidateRental;; 
(;; 
);; 
;;; 
return<< 
_rental<< 
;<< 
}== 	
public?? 
Rental?? 
	GetRental?? 
(??  
)??  !
{@@ 	
returnAA 
_rentalAA 
;AA 
}BB 	
privateDD 
voidDD 
ValidateRentalDD #
(DD# $
)DD$ %
{EE 	
ifFF 
(FF 
_rentalFF 
.FF 
rentalIdFF  
<=FF! #
$numFF$ %
)FF% &
throwGG 
newGG 
ArgumentExceptionGG +
(GG+ ,
$strGG, R
)GGR S
;GGS T
ifII 
(II 
_rentalII 
.II 

customerIdII "
<=II# %
$numII& '
)II' (
throwJJ 
newJJ 
ArgumentExceptionJJ +
(JJ+ ,
$strJJ, T
)JJT U
;JJU V
ifLL 
(LL 
_rentalLL 
.LL 
transactionDateLL '
==LL( *
DateTimeLL+ 3
.LL3 4
MinValueLL4 <
)LL< =
throwMM 
newMM 
ArgumentExceptionMM +
(MM+ ,
$strMM, J
)MMJ K
;MMK L
ifOO 
(OO 
_rentalOO 
.OO 
totalFeeOO  
<=OO! #
$numOO$ %
)OO% &
throwPP 
newPP 
ArgumentExceptionPP +
(PP+ ,
$strPP, R
)PPR S
;PPS T
ifRR 
(RR 
_rentalRR 
.RR 
rentalItemsRR #
==RR$ &
nullRR' +
||RR, .
_rentalRR/ 6
.RR6 7
rentalItemsRR7 B
.RRB C
CountRRC H
==RRI K
$numRRL M
)RRM N
throwSS 
newSS 
ArgumentExceptionSS +
(SS+ ,
$strSS, U
)SSU V
;SSV W
}TT 	
}UU 
}VV 