°
sC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\AssemblyInfo.cs
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str	 û
)
û ü
]
ü †
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str	 Ñ
)
Ñ Ö
]
Ö Ü¸
~C:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\ClusterEnvironmentCheck.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
;2 3
internal 
class	 #
ClusterEnvironmentCheck &
:' ($
IClusterEnvironmentCheck) A
{ 
public 

bool 
IsInCluster 
=> )
KubernetesClientConfiguration <
.< =
IsInCluster= H
(H I
)I J
;J K
} ˝:
ÉC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\Containers\ContainerIdHolder.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
.2 3

Containers3 =
;= >
internal 
class	 
ContainerIdHolder  
:! "
IContainerIdHolder# 5
{ 
private 
readonly 9
-ApplicationInsightsKubernetesDiagnosticSource B
_loggerC J
=K L9
-ApplicationInsightsKubernetesDiagnosticSourceM z
.z {
Instance	{ É
;
É Ñ
private 
readonly  
IServiceScopeFactory ) 
_serviceScopeFactory* >
;> ?
private 
string 
? 
_containerId  
;  !
public 

ContainerIdHolder 
(  
IServiceScopeFactory 1
serviceScopeFactory2 E
)E F
{  
_serviceScopeFactory 
= 
serviceScopeFactory 2
??3 5
throw6 ;
new< ?!
ArgumentNullException@ U
(U V
nameofV \
(\ ]
serviceScopeFactory] p
)p q
)q r
;r s
} 
public 

string 
? 
ContainerId 
{ 
get 
{ 	
if 
( 
string 
. 
IsNullOrEmpty $
($ %
_containerId% 1
)1 2
)2 3
{ 
using 
( 
IServiceScope $
scope% *
=+ , 
_serviceScopeFactory- A
.A B
CreateScopeB M
(M N
)N O
)O P
{ "
IContainerIdNormalizer *

normalizer+ 5
=6 7
scope8 =
.= >
ServiceProvider> M
.M N
GetRequiredServiceN `
<` a"
IContainerIdNormalizera w
>w x
(x y
)y z
;z {
_   
=   
TryGetContainerId   )
(  ) *
out  * -
_containerId  . :
)  : ;
&&  < >

normalizer  ? I
.  I J
TryNormalize  J V
(  V W
_containerId  W c
!  c d
,  d e
out  f i
_containerId  j v
)  v w
;  w x
}!! 
}"" 
return## 
_containerId## 
;##  
}$$ 	
}%% 
public'' 

bool'' "
TryBackFillContainerId'' &
(''& '
V1Pod''' ,
pod''- 0
,''0 1
out''2 5
V1ContainerStatus''6 G
?''G H
containerStatus''I X
)''X Y
{(( 
if)) 

()) 
pod)) 
is)) 
null)) 
))) 
{** 	
throw++ 
new++ !
ArgumentNullException++ +
(+++ ,
nameof++, 2
(++2 3
pod++3 6
)++6 7
)++7 8
;++8 9
},, 	
containerStatus-- 
=-- 
null-- 
;-- 
IList00 
<00 
V1ContainerStatus00 
>00  
?00  !
containerStatuses00" 3
=004 5
pod006 9
.009 :
Status00: @
?00@ A
.00A B
ContainerStatuses00B S
;00S T
if11 

(11 
containerStatuses11 
is11  
not11! $
null11% )
&&11* ,
containerStatuses11- >
.11> ?
Count11? D
==11E G
$num11H I
)11I J
{22 	
containerStatus33 
=33 
containerStatuses33 /
[33/ 0
$num330 1
]331 2
;332 3
_logger44 
.44 
LogInformation44 "
(44" #
FormattableString44# 4
.444 5
	Invariant445 >
(44> ?
$"44? A
$str44A y
{44y z
containerStatus	44z â
.
44â ä
ContainerID
44ä ï
}
44ï ñ
"
44ñ ó
)
44ó ò
)
44ò ô
;
44ô ö
using66 
(66 
IServiceScope66  
scope66! &
=66' ( 
_serviceScopeFactory66) =
.66= >
CreateScope66> I
(66I J
)66J K
)66K L
{77 "
IContainerIdNormalizer88 &

normalizer88' 1
=882 3
scope884 9
.889 :
ServiceProvider88: I
.88I J
GetRequiredService88J \
<88\ ]"
IContainerIdNormalizer88] s
>88s t
(88t u
)88u v
;88v w
if99 
(99 

normalizer99 
.99 
TryNormalize99 +
(99+ ,
containerStatus99, ;
.99; <
ContainerID99< G
,99G H
out99I L
string99M S
?99S T!
normalizedContainerId99U j
)99j k
)99k l
{:: 
_containerId;;  
=;;! "!
normalizedContainerId;;# 8
;;;8 9
return<< 
true<< 
;<<  
}== 
}>> 
_logger@@ 
.@@ 
LogError@@ 
(@@ 
FormattableString@@ .
.@@. /
	Invariant@@/ 8
(@@8 9
$"@@9 ;
$str@@; b
{@@b c
containerStatus@@c r
.@@r s
ContainerID@@s ~
}@@~ 
"	@@ Ä
)
@@Ä Å
)
@@Å Ç
;
@@Ç É
}AA 	
returnBB 
falseBB 
;BB 
}CC 
privateEE 
boolEE 
TryGetContainerIdEE "
(EE" #
outEE# &
stringEE' -
?EE- .
containerIdEE/ :
)EE: ;
{FF 
containerIdGG 
=GG 
stringGG 
.GG 
EmptyGG "
;GG" #
usingHH 
(HH 
IServiceScopeHH 
scopeHH "
=HH# $ 
_serviceScopeFactoryHH% 9
.HH9 :
CreateScopeHH: E
(HHE F
)HHF G
)HHG H
{II 	
foreachJJ 
(JJ  
IContainerIdProviderJJ )
providerJJ* 2
inJJ3 5
scopeJJ6 ;
.JJ; <
ServiceProviderJJ< K
.JJK L
GetServicesJJL W
<JJW X 
IContainerIdProviderJJX l
>JJl m
(JJm n
)JJn o
)JJo p
{KK 
ifLL 
(LL 
providerLL 
.LL 
TryGetMyContainerIdLL 0
(LL0 1
outLL1 4
containerIdLL5 @
)LL@ A
)LLA B
{MM 
_loggerNN 
.NN 
LogInformationNN *
(NN* +
FormattableStringNN+ <
.NN< =
	InvariantNN= F
(NNF G
$"NNG I
$strNNI g
{NNg h
containerIdNNh s
}NNs t
"NNt u
)NNu v
)NNv w
;NNw x
returnOO 
trueOO 
;OO  
}PP 
}QQ 
}RR 	
_loggerTT 
.TT 
LogInformationTT 
(TT 
$strTT Q
)TTQ R
;TTR S
returnVV 
falseVV 
;VV 
}WW 
}XX ¡
áC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\Containers\ContainerIdNormalizer.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
.2 3

Containers3 =
;= >
internal 
class	 !
ContainerIdNormalizer $
:% &"
IContainerIdNormalizer' =
{ 
private 
const 
string (
ContainerIdIdentifierPattern 5
=6 7
$str8 H
;H I
private 
readonly 
Regex 
_matcher #
=$ %
new& )
Regex* /
(/ 0(
ContainerIdIdentifierPattern0 L
,L M
RegexOptionsN Z
.Z [

IgnoreCase[ e
|f g
RegexOptionsh t
.t u
CultureInvariant	u Ö
,
Ö Ü
matchTimeout
á ì
:
ì î
TimeSpan
ï ù
.
ù û
FromSeconds
û ©
(
© ™
$num
™ ´
)
´ ¨
)
¨ ≠
;
≠ Æ
private 
readonly 9
-ApplicationInsightsKubernetesDiagnosticSource B
_loggerC J
=K L9
-ApplicationInsightsKubernetesDiagnosticSourceM z
.z {
Instance	{ É
;
É Ñ
public 

bool 
TryNormalize 
( 
string #
input$ )
,) *
out+ .
string/ 5
?5 6

normalized7 A
)A B
{ 
if 

( 
input 
is 
null 
) 
{ 	
throw 
new !
ArgumentNullException +
(+ ,
nameof, 2
(2 3
input3 8
)8 9
)9 :
;: ;
}   	
if## 

(## 
input## 
==## 
string## 
.## 
Empty## !
)##! "
{$$ 	

normalized%% 
=%% 
string%% 
.%%  
Empty%%  %
;%%% &
return&& 
true&& 
;&& 
}'' 	
_logger)) 
.)) 
LogDebug)) 
()) 
$")) 
$str)) 3
{))3 4
input))4 9
}))9 :
")): ;
))); <
;))< =
Match++ 
match++ 
=++ 
_matcher++ 
.++ 
Match++ $
(++$ %
input++% *
)++* +
;+++ ,
if,, 

(,, 
!,, 
match,, 
.,, 
Success,, 
),, 
{-- 	
_logger.. 
... 
LogDebug.. 
(.. 
$".. 
$str.. I
{..I J(
ContainerIdIdentifierPattern..J f
...f g#
EscapeForLoggingMessage..g ~
(..~ 
)	.. Ä
}
..Ä Å
$str
..Å Ç
"
..Ç É
)
..É Ñ
;
..Ñ Ö

normalized// 
=// 
null// 
;// 
return00 
false00 
;00 
}11 	

normalized22 
=22 
match22 
.22 
Groups22 !
[22! "
$num22" #
]22# $
.22$ %
Value22% *
;22* +
_logger33 
.33 
LogTrace33 
(33 
$"33 
$str33 7
{337 8

normalized338 B
}33B C
"33C D
)33D E
;33E F
return44 
true44 
;44 
}55 
}66 á

†C:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\Containers\ContainerIdProviders\CGroupContainerIdProvider.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
.2 3

Containers3 =
{ 
internal 
class %
CGroupContainerIdProvider ,
:- .(
FileBasedContainerIdProvider/ K
{		 
private

 
const

 
string

 

CGroupPath

 '
=

( )
$str

* =
;

= >
private 
readonly 9
-ApplicationInsightsKubernetesDiagnosticSource F
_loggerG N
=O P9
-ApplicationInsightsKubernetesDiagnosticSourceQ ~
.~ 
Instance	 á
;
á à
public %
CGroupContainerIdProvider (
(( )
CGroupV1Matcher 
lineMatcher '
)' (
:) *
base 
( 
lineMatcher 
, 

CGroupPath (
,( )
providerName* 6
:6 7
default8 ?
)? @
{ 	
} 	
} 
} ®
≠C:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\Containers\ContainerIdProviders\ContainerDMountInfoContainerIdProvider.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
.2 3

Containers3 =
;= >
internal 
class	 2
&ContainerDMountInfoContainerIdProvider 5
:6 7(
FileBasedContainerIdProvider8 T
{ 
private 
const 
string 
InfoFilePath %
=& '
$str( >
;> ?
public 
2
&ContainerDMountInfoContainerIdProvider 1
(1 2&
ContainerDMountInfoMatcher "
matcher# *
)* +
:		 
base		 
(		 
matcher		 
,		 
InfoFilePath		 (
,		( )
providerName		* 6
:		6 7
default		8 ?
)		? @
{

 
} 
} ∞
ØC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\Containers\ContainerIdProviders\DockerEngineMountInfoContainerIdProvider.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
.2 3

Containers3 =
;= >
internal 
class	 4
(DockerEngineMountInfoContainerIdProvider 7
:8 9(
FileBasedContainerIdProvider: V
{ 
private 
const 
string 
InfoFilePath %
=& '
$str( >
;> ?
public 
4
(DockerEngineMountInfoContainerIdProvider 3
(3 4(
DockerEngineMountInfoMatcher $
matcher% ,
), -
:		 
base		 
(		 
matcher		 
,		 
InfoFilePath		 (
,		( )
providerName		* 6
:		6 7
default		8 ?
)		? @
{

 
} 
} ˆ
üC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\Containers\ContainerIdProviders\EmptyContainerIdProvider.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
.2 3

Containers3 =
{ 
internal 
class $
EmptyContainerIdProvider +
:, - 
IContainerIdProvider. B
{ 
public		 
bool		 
TryGetMyContainerId		 '
(		' (
out		( +
string		, 2
?		2 3
containerId		4 ?
)		? @
{

 	
containerId 
= 
string  
.  !
Empty! &
;& '
return 
true 
; 
} 	
} 
} ≤
≠C:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\Containers\ContainerIdProviders\EnvironmentVariableContainerIdProvider.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
.2 3

Containers3 =
;= >
internal 
class	 2
&EnvironmentVariableContainerIdProvider 5
:6 7 
IContainerIdProvider8 L
{ 
private 
readonly 9
-ApplicationInsightsKubernetesDiagnosticSource B
_loggerC J
=K L9
-ApplicationInsightsKubernetesDiagnosticSourceM z
.z {
Instance	{ É
;
É Ñ
private		 
const		 
string		 #
EnvironmentVariableName		 0
=		1 2
$str		3 @
;		@ A
public 

bool 
TryGetMyContainerId #
(# $
out$ '
string( .
?. /
containerId0 ;
); <
{ 
containerId 
= 
Environment !
.! ""
GetEnvironmentVariable" 8
(8 9#
EnvironmentVariableName9 P
)P Q
;Q R
_logger 
. 
LogDebug 
( 
$" 
$str H
{H I#
EnvironmentVariableNameI `
}` a
$stra k
{k l
containerIdl w
}w x
$strx y
"y z
)z {
;{ |
bool 
result 
= 
! 
string 
. 
IsNullOrEmpty +
(+ ,
containerId, 7
)7 8
;8 9
if 

( 
result 
) 
{ 	
_logger 
. 
LogInformation "
(" #
$"# %
$str% &
{& '
nameof' -
(- .2
&EnvironmentVariableContainerIdProvider. T
)T U
}U V
$strV l
{l m
containerIdm x
}x y
"y z
)z {
;{ |
} 	
return 
result 
; 
} 
} í-
£C:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\Containers\ContainerIdProviders\FileBasedContainerIdProvider.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
.2 3

Containers3 =
;= >
internal

 
abstract

	 
class

 (
FileBasedContainerIdProvider

 4
:

5 6 
IContainerIdProvider

7 K
{ 
private 
readonly 9
-ApplicationInsightsKubernetesDiagnosticSource B
_loggerC J
=K L9
-ApplicationInsightsKubernetesDiagnosticSourceM z
.z {
Instance	{ É
;
É Ñ
private 
readonly 
IContainerIdMatcher (
_lineMatcher) 5
;5 6
private 
readonly 
string 
_providerName )
;) *
private 
readonly 
string 
_targetFile '
;' (
public 
(
FileBasedContainerIdProvider '
(' (
IContainerIdMatcher 
lineMatcher '
,' (
string 
filePath 
, 
string 
? 
providerName 
) 
{ 
_providerName 
= 
GetType 
(  
)  !
.! "
Name" &
;& '
if 

( 
string 
. 
IsNullOrEmpty  
(  !
filePath! )
)) *
)* +
{ 	
throw 
new 
ArgumentException '
(' (
$"( *
$str* ,
{, -
_providerName- :
}: ;
$str; =
{= >
nameof> D
(D E
filePathE M
)M N
}N O
$strO i
"i j
,j k
nameofl r
(r s
filePaths {
){ |
)| }
;} ~
} 	
_targetFile 
= 
filePath 
; 
_lineMatcher 
= 
lineMatcher "
??# %
throw& +
new, /
System0 6
.6 7!
ArgumentNullException7 L
(L M
nameofM S
(S T
lineMatcherT _
)_ `
)` a
;a b
} 
public   

bool   
TryGetMyContainerId   #
(  # $
out  $ '
string  ( .
?  . /
containerId  0 ;
)  ; <
{!! 
containerId"" 
="" 
FetchContainerId"" &
(""& '
_targetFile""' 2
)""2 3
;""3 4
return## 
containerId## 
!=## 
null## "
;##" #
}$$ 
private&& 
string&& 
?&& 
FetchContainerId&& $
(&&$ %
string&&% +
filePath&&, 4
)&&4 5
{'' 
if(( 

((( 
!(( 
File(( 
.(( 
Exists(( 
((( 
filePath(( !
)((! "
)((" #
{)) 	
_logger** 
.** 

LogWarning** 
(** 
$"** !
$str**! "
{**" #
_providerName**# 0
}**0 1
$str**1 3
{**3 4
nameof**4 :
(**: ;
_targetFile**; F
)**F G
}**G H
$str**H [
{**[ \
filePath**\ d
}**d e
"**e f
)**f g
;**g h
return++ 
null++ 
;++ 
},, 	
using.. 
StreamReader.. 
reader.. !
=.." #
File..$ (
...( )
OpenText..) 1
(..1 2
_targetFile..2 =
)..= >
;..> ?
while// 
(// 
!// 
reader// 
.// 
EndOfStream// "
)//" #
{00 	
string11 
line11 
=11 
reader11  
.11  !
ReadLine11! )
(11) *
)11* +
;11+ ,
if22 
(22 
string22 
.22 
IsNullOrEmpty22 #
(22# $
line22$ (
)22( )
)22) *
{33 
continue44 
;44 
}55 
if77 
(77 
_lineMatcher77 
.77 
TryParseContainerId77 0
(770 1
line771 5
,775 6
out777 :
string77; A
containerId77B M
)77M N
)77N O
{88 
_logger99 
.99 
LogDebug99  
(99  !
$"99! #
$str99# $
{99$ %
_providerName99% 2
}992 3
$str993 J
{99J K
line99K O
}99O P
"99P Q
)99Q R
;99R S
_logger:: 
.:: 
LogInformation:: &
(::& '
$"::' )
$str::) *
{::* +
_providerName::+ 8
}::8 9
$str::9 M
{::M N
containerId::N Y
}::Y Z
"::Z [
)::[ \
;::\ ]
return;; 
containerId;; "
;;;" #
}<< 
}== 	
_logger>> 
.>> 

LogWarning>> 
(>> 
$">> 
$str>> 
{>> 
_providerName>> ,
}>>, -
$str>>- M
">>M N
)>>N O
;>>O P
return?? 
null?? 
;?? 
}@@ 
}AA Î
õC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\Containers\ContainerIdProviders\IContainerIdProvider.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
.2 3

Containers3 =
;= >
internal 
	interface	  
IContainerIdProvider '
{ 
bool 
TryGetMyContainerId	 
( 
out  
string! '
?' (
containerId) 4
)4 5
;5 6
} Ã
üC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\Containers\ContainerIdProviders\Matchers\CGroupV1Matcher.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
.2 3

Containers3 =
;= >
internal 
class	 
CGroupV1Matcher 
:  
IContainerIdMatcher! 4
{ 
private		 
const		 
string		 
LogCategory		 $
=		% &
nameof		' -
(		- .
CGroupV1Matcher		. =
)		= >
;		> ?
private

 
readonly

 9
-ApplicationInsightsKubernetesDiagnosticSource

 B
_logger

C J
=

K L9
-ApplicationInsightsKubernetesDiagnosticSource

M z
.

z {
Instance	

{ É
;


É Ñ
private 
const 
string 
MatchPattern %
=& '
$str( 9
;9 :
private 
static 
readonly 
Regex !

MatchRegex" ,
=- .
new/ 2
Regex3 8
(8 9
MatchPattern9 E
,E F
RegexOptionsG S
.S T
CultureInvariantT d
|e f
RegexOptionsg s
.s t

IgnoreCaset ~
,~ 
TimeSpan
Ä à
.
à â
FromSeconds
â î
(
î ï
$num
ï ñ
)
ñ ó
)
ó ò
;
ò ô
public 

bool 
TryParseContainerId #
(# $
string$ *
?* +
line, 0
,0 1
out2 5
string6 <
containerId= H
)H I
{ 
containerId 
= 
string 
. 
Empty "
;" #
if 

( 
string 
. 
IsNullOrEmpty  
(  !
line! %
)% &
)& '
{ 	
return 
false 
; 
} 	
Match 
match 
= 

MatchRegex  
.  !
Match! &
(& '
line' +
)+ ,
;, -
if 

( 
! 
match 
. 
Success 
) 
{ 	
_logger 
. 
LogTrace 
( 
$" 
$str  
{  !
LogCategory! ,
}, -
$str- P
{P Q
lineQ U
}U V
$strV a
{a b
MatchPatternb n
}n o
"o p
)p q
;q r
return 
false 
; 
} 	
_logger 
. 
LogTrace 
( 
$" 
$str 
{ 
LogCategory (
}( )
$str) @
"@ A
)A B
;B C
containerId 
= 
match 
. 
Groups "
[" #
$num# $
]$ %
.% &
Value& +
;+ ,
return 
true 
; 
}   
}!! Ì
™C:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\Containers\ContainerIdProviders\Matchers\ContainerDMountInfoMatcher.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
.2 3

Containers3 =
;= >
internal 
class	 &
ContainerDMountInfoMatcher )
:* +
IContainerIdMatcher, ?
{ 
private 
readonly 9
-ApplicationInsightsKubernetesDiagnosticSource B
_loggerC J
=K L9
-ApplicationInsightsKubernetesDiagnosticSourceM z
.z {
Instance	{ É
;
É Ñ
private 
const 
string 
MatchPattern %
=& '
$str( H
;H I
private 
static 
readonly 
Regex !

MatchRegex" ,
=- .
new/ 2
Regex3 8
(8 9
MatchPattern9 E
,E F
RegexOptionsG S
.S T
CultureInvariantT d
|e f
RegexOptionsg s
.s t

IgnoreCaset ~
,~ 
TimeSpan
Ä à
.
à â
FromSeconds
â î
(
î ï
$num
ï ñ
)
ñ ó
)
ó ò
;
ò ô
private 
const 
string 
LogCategory $
=% &
nameof' -
(- .&
ContainerDMountInfoMatcher. H
)H I
;I J
public 

bool 
TryParseContainerId #
(# $
string$ *
?* +
line, 0
,0 1
out2 5
string6 <
containerId= H
)H I
{ 
containerId 
= 
string 
. 
Empty "
;" #
if 

( 
string 
. 
IsNullOrEmpty  
(  !
line! %
)% &
)& '
{ 	
return 
false 
; 
} 	
Match   
match   
=   

MatchRegex    
.    !
Match  ! &
(  & '
line  ' +
)  + ,
;  , -
if!! 

(!! 
!!! 
match!! 
.!! 
Success!! 
)!! 
{"" 	
_logger## 
.## 
LogTrace## 
(## 
$"## 
$str##  
{##  !
LogCategory##! ,
}##, -
$str##- P
{##P Q
line##Q U
}##U V
$str##V a
{##a b
MatchPattern##b n
}##n o
"##o p
)##p q
;##q r
return$$ 
false$$ 
;$$ 
}%% 	
_logger&& 
.&& 
LogTrace&& 
(&& 
$"&& 
$str&& 
{&& 
LogCategory&& (
}&&( )
$str&&) @
"&&@ A
)&&A B
;&&B C
containerId'' 
='' 
match'' 
.'' 
Groups'' "
[''" #
$num''# $
]''$ %
.''% &
Value''& +
;''+ ,
return(( 
true(( 
;(( 
})) 
}** Û
¨C:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\Containers\ContainerIdProviders\Matchers\DockerEngineMountInfoMatcher.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
.2 3

Containers3 =
;= >
internal 
class	 (
DockerEngineMountInfoMatcher +
:, -
IContainerIdMatcher. A
{ 
private		 
const		 
string		 
LogCategory		 $
=		% &
nameof		' -
(		- .(
DockerEngineMountInfoMatcher		. J
)		J K
;		K L
private

 
readonly

 9
-ApplicationInsightsKubernetesDiagnosticSource

 B
_logger

C J
=

K L9
-ApplicationInsightsKubernetesDiagnosticSource

M z
.

z {
Instance	

{ É
;


É Ñ
private 
const 
string 
MatchPattern %
=& '
$str( D
;D E
private 
static 
readonly 
Regex !

MatchRegex" ,
=- .
new/ 2
Regex3 8
(8 9
MatchPattern9 E
,E F
RegexOptionsG S
.S T
CultureInvariantT d
|e f
RegexOptionsg s
.s t

IgnoreCaset ~
,~ 
TimeSpan
Ä à
.
à â
FromSeconds
â î
(
î ï
$num
ï ñ
)
ñ ó
)
ó ò
;
ò ô
public 

bool 
TryParseContainerId #
(# $
string$ *
?* +
line, 0
,0 1
out2 5
string6 <
containerId= H
)H I
{ 
containerId 
= 
string 
. 
Empty "
;" #
if 

( 
string 
. 
IsNullOrEmpty  
(  !
line! %
)% &
)& '
{ 	
return 
false 
; 
} 	
Match 
match 
= 

MatchRegex  
.  !
Match! &
(& '
line' +
)+ ,
;, -
if 

( 
! 
match 
. 
Success 
) 
{ 	
_logger 
. 
LogTrace 
( 
$" 
$str  
{  !
LogCategory! ,
}, -
$str- P
{P Q
lineQ U
}U V
$strV a
{a b
MatchPatternb n
}n o
"o p
)p q
;q r
return 
false 
; 
} 	
_logger 
. 
LogTrace 
( 
$" 
$str 
{ 
LogCategory (
}( )
$str) @
"@ A
)A B
;B C
containerId 
= 
match 
. 
Groups "
[" #
$num# $
]$ %
.% &
Value& +
;+ ,
return 
true 
; 
}   
}!! ®
£C:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\Containers\ContainerIdProviders\Matchers\IContainerIdMatcher.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
.2 3

Containers3 =
;= >
internal 
	interface	 
IContainerIdMatcher &
{ 
bool 
TryParseContainerId	 
( 
string #
?# $
value% *
,* +
out, /
string0 6
containerId7 B
)B C
;C D
} ’B
àC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\Containers\ContainerStatusManager.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
.2 3

Containers3 =
;= >
internal 
class	 "
ContainerStatusManager %
:& '#
IContainerStatusManager( ?
{ 
private 
readonly 9
-ApplicationInsightsKubernetesDiagnosticSource B
_loggerC J
=K L9
-ApplicationInsightsKubernetesDiagnosticSourceM z
.z {
Instance	{ É
;
É Ñ
private 
readonly 
IPodInfoManager $
_podInfoManager% 4
;4 5
private 
readonly 
IContainerIdHolder '
_containerIdHolder( :
;: ;
public 
"
ContainerStatusManager !
(! "
IPodInfoManager 
podInfoManager &
,& '
IContainerIdHolder 
containerIdHolder ,
), -
{ 
_podInfoManager 
= 
podInfoManager (
??) +
throw, 1
new2 5
System6 <
.< =!
ArgumentNullException= R
(R S
nameofS Y
(Y Z
podInfoManagerZ h
)h i
)i j
;j k
_containerIdHolder 
= 
containerIdHolder .
??/ 1
throw2 7
new8 ;
System< B
.B C!
ArgumentNullExceptionC X
(X Y
nameofY _
(_ `
containerIdHolder` q
)q r
)r s
;s t
} 
public 

async 
Task 
< 
bool 
> !
IsContainerReadyAsync 1
(1 2
CancellationToken2 C
cancellationTokenD U
)U V
{ 
V1ContainerStatus 
? 
myContainerStatus ,
=- .
await/ 4%
GetMyContainerStatusAsync5 N
(N O
cancellationTokenO `
)` a
.a b
ConfigureAwaitb p
(p q
falseq v
)v w
;w x
if 

( 
myContainerStatus 
is  
not! $
null% )
)) *
{ 	
return   "
IsContainerStatusReady   )
(  ) *
myContainerStatus  * ;
)  ; <
;  < =
}!! 	
return## 
false## 
;## 
}$$ 
public&& 

async&& 
Task&& 
<&& 
V1ContainerStatus&& '
?&&' (
>&&( )%
GetMyContainerStatusAsync&&* C
(&&C D
CancellationToken&&D U
cancellationToken&&V g
)&&g h
{'' 
V1Pod)) 
?)) 
myPod)) 
=)) 
await)) 
_podInfoManager)) ,
.)), -
GetMyPodAsync))- :
()): ;
cancellationToken)); L
)))L M
.))M N
ConfigureAwait))N \
())\ ]
false))] b
)))b c
;))c d
if** 

(** 
myPod** 
is** 
null** 
)** 
{++ 	
return,, 
null,, 
;,, 
}-- 	
string// 
?// 
containerId// 
=// 
_containerIdHolder// 0
.//0 1
ContainerId//1 <
;//< =
if22 

(22 
!22 
string22 
.22 
IsNullOrEmpty22 !
(22! "
containerId22" -
)22- .
)22. /
{33 	
if55 
(55 
_podInfoManager55 
.55  !
TryGetContainerStatus55  5
(555 6
myPod556 ;
,55; <
containerId55= H
,55H I
out55J M
V1ContainerStatus55N _
?55_ ` 
foundContainerStatus55a u
)55u v
)55v w
{66 
return88  
foundContainerStatus88 +
;88+ ,
}99 
return;; 
null;; 
;;; 
}<< 	
if@@ 

(@@ 
RuntimeInformation@@ 
.@@ 
IsOSPlatform@@ +
(@@+ ,

OSPlatform@@, 6
.@@6 7
Linux@@7 <
)@@< =
)@@= >
{AA 	
_loggerBB 
.BB 

LogWarningBB 
(BB 
$str	BB π
)
BBπ ∫
;
BB∫ ª
}CC 	
ifEE 

(EE 
_containerIdHolderEE 
.EE "
TryBackFillContainerIdEE 5
(EE5 6
myPodEE6 ;
,EE; <
outEE= @
V1ContainerStatusEEA R
?EER S#
inferredContainerStatusEET k
)EEk l
)EEl m
{FF 	
returnHH #
inferredContainerStatusHH *
;HH* +
}II 	
returnLL 
nullLL 
;LL 
}MM 
privateOO 
boolOO "
IsContainerStatusReadyOO '
(OO' (
V1ContainerStatusOO( 9
containerStatusOO: I
)OOI J
{PP 
_loggerQQ 
.QQ 
LogTraceQQ 
(QQ 
$"QQ 
$strQQ 4
{QQ4 5
containerStatusQQ5 D
}QQD E
$strQQE P
{QQP Q
containerStatusQQQ `
?QQ` a
.QQa b
ReadyQQb g
}QQg h
"QQh i
)QQi j
;QQj k
returnRR 
containerStatusRR 
isRR !
notRR" %
nullRR& *
&&RR+ -
containerStatusRR. =
.RR= >
ReadyRR> C
;RRC D
}SS 
publicUU 

asyncUU 
TaskUU 
<UU 
V1ContainerStatusUU '
?UU' (
>UU( )#
WaitContainerReadyAsyncUU* A
(UUA B
CancellationTokenUUB S
cancellationTokenUUT e
)UUe f
{VV 
whileWW 
(WW 
trueWW 
)WW 
{XX 	
cancellationTokenYY 
.YY (
ThrowIfCancellationRequestedYY :
(YY: ;
)YY; <
;YY< =
try[[ 
{\\ 
if]] 
(]] 
await]] !
IsContainerReadyAsync]] /
(]]/ 0
cancellationToken]]0 A
)]]A B
.]]B C
ConfigureAwait]]C Q
(]]Q R
false]]R W
)]]W X
)]]X Y
{^^ 
return__ 
await__  %
GetMyContainerStatusAsync__! :
(__: ;
cancellationToken__; L
)__L M
.__M N
ConfigureAwait__N \
(__\ ]
false__] b
)__b c
;__c d
}`` 
}aa 
catchbb 
(bb 
	Exceptionbb 
exbb 
)bb  
whenbb! %
(bb& '
exbb' )
isbb* ,
notbb- 0"
HttpOperationExceptionbb1 G
||bbH J
(bbK L
exbbL N
isbbO Q"
HttpOperationExceptionbbR h
operationExceptionbbi {
&&bb| ~
operationException	bb ë
.
bbë í
Response
bbí ö
.
bbö õ

StatusCode
bbõ •
!=
bb¶ ®
HttpStatusCode
bb© ∑
.
bb∑ ∏
	Forbidden
bb∏ ¡
)
bb¡ ¬
)
bb¬ √
{cc 
_loggerdd 
.dd 

LogWarningdd "
(dd" #
$"dd# %
$strdd% Y
{ddY Z
exddZ \
.dd\ ]
Messagedd] d
}ddd e
"dde f
)ddf g
;ddg h
_loggeree 
.ee 
LogDebugee  
(ee  !
exee! #
.ee# $
ToStringee$ ,
(ee, -
)ee- .
)ee. /
;ee/ 0
}ff 
awaitmm 
Taskmm 
.mm 
Delaymm 
(mm 
TimeSpanmm %
.mm% &
FromMillisecondsmm& 6
(mm6 7
$nummm7 :
)mm: ;
,mm; <
cancellationTokenmm= N
:mmN O
cancellationTokenmmP a
)mma b
.mmb c
ConfigureAwaitmmc q
(mmq r
falsemmr w
)mmw x
;mmx y
}nn 	
}oo 
}pp Í
ÑC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\Containers\IContainerIdHolder.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
;2 3
internal 
	interface	 
IContainerIdHolder %
{ 
string 

?
 
ContainerId 
{ 
get 
; 
}  
bool		 "
TryBackFillContainerId			 
(		  
V1Pod		  %
pod		& )
,		) *
out		+ .
V1ContainerStatus		/ @
?		@ A
containerStatus		B Q
)		Q R
;		R S
}

 à
àC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\Containers\IContainerIdNormalizer.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
.2 3

Containers3 =
;= >
internal 
	interface	 "
IContainerIdNormalizer )
{ 
bool 
TryNormalize	 
( 
string 
input "
," #
out$ '
string( .
?. /

normalized0 :
): ;
;; <
} ›
âC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\Containers\IContainerStatusManager.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
.2 3

Containers3 =
;= >
internal 
	interface	 #
IContainerStatusManager *
{ 
Task		 
<		 	
V1ContainerStatus			 
?		 
>		 %
GetMyContainerStatusAsync		 6
(		6 7
CancellationToken		7 H
cancellationToken		I Z
)		Z [
;		[ \
Task

 
<

 	
bool

	 
>

 !
IsContainerReadyAsync

 $
(

$ %
CancellationToken

% 6
cancellationToken

7 H
)

H I
;

I J
Task 
< 	
V1ContainerStatus	 
? 
> #
WaitContainerReadyAsync 4
(4 5
CancellationToken5 F
cancellationTokenG X
)X Y
;Y Z
} ù&
°C:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\Debuggings\ApplicationInsightsKubernetesDiagnosticObserver.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
.2 3
	Debugging3 <
{ 
public		 

sealed		 
class		 ;
/ApplicationInsightsKubernetesDiagnosticObserver		 G
{

 
private 
readonly 
DiagnosticLogLevel +
_minimumLevel, 9
;9 :
public ;
/ApplicationInsightsKubernetesDiagnosticObserver >
(> ?
DiagnosticLogLevel? Q
?Q R
minimumLevelS _
)_ `
{ 	
_minimumLevel 
= 
minimumLevel (
??) +
DiagnosticLogLevel, >
.> ?
Warning? F
;F G
} 	
[ 	
DiagnosticName	 
( 
nameof 
( 
DiagnosticLogLevel 1
.1 2
Critical2 :
): ;
); <
]< =
public 
void 
OnLogCritical !
(! "
string" (
content) 0
)0 1
{ 	
	WriteLine 
( 
DiagnosticLogLevel (
.( )
Critical) 1
,1 2
content3 :
): ;
;; <
} 	
[%% 	
DiagnosticName%%	 
(%% 
nameof%% 
(%% 
DiagnosticLogLevel%% 1
.%%1 2
Error%%2 7
)%%7 8
)%%8 9
]%%9 :
public&& 
void&& 

OnLogError&& 
(&& 
string&& %
content&&& -
)&&- .
{'' 	
	WriteLine(( 
((( 
DiagnosticLogLevel(( (
.((( )
Error(() .
,((. /
content((0 7
)((7 8
;((8 9
})) 	
[// 	
DiagnosticName//	 
(// 
nameof// 
(// 
DiagnosticLogLevel// 1
.//1 2
Warning//2 9
)//9 :
)//: ;
]//; <
public00 
void00 
OnLogWarning00  
(00  !
string00! '
content00( /
)00/ 0
{11 	
	WriteLine22 
(22 
DiagnosticLogLevel22 (
.22( )
Warning22) 0
,220 1
content222 9
)229 :
;22: ;
}33 	
[88 	
DiagnosticName88	 
(88 
nameof88 
(88 
DiagnosticLogLevel88 1
.881 2
Information882 =
)88= >
)88> ?
]88? @
public99 
void99 
	OnLogInfo99 
(99 
string99 $
content99% ,
)99, -
{:: 	
	WriteLine;; 
(;; 
DiagnosticLogLevel;; (
.;;( )
Information;;) 4
,;;4 5
content;;6 =
);;= >
;;;> ?
}<< 	
[AA 	
DiagnosticNameAA	 
(AA 
nameofAA 
(AA 
DiagnosticLogLevelAA 1
.AA1 2
DebugAA2 7
)AA7 8
)AA8 9
]AA9 :
publicBB 
voidBB 

OnLogDebugBB 
(BB 
stringBB %
contentBB& -
)BB- .
{CC 	
	WriteLineDD 
(DD 
DiagnosticLogLevelDD (
.DD( )
DebugDD) .
,DD. /
contentDD0 7
)DD7 8
;DD8 9
}EE 	
[JJ 	
DiagnosticNameJJ	 
(JJ 
nameofJJ 
(JJ 
DiagnosticLogLevelJJ 1
.JJ1 2
TraceJJ2 7
)JJ7 8
)JJ8 9
]JJ9 :
publicKK 
voidKK 

OnLogTraceKK 
(KK 
stringKK %
contentKK& -
)KK- .
{LL 	
	WriteLineMM 
(MM 
DiagnosticLogLevelMM (
.MM( )
TraceMM) .
,MM. /
contentMM0 7
)MM7 8
;MM8 9
}NN 	
privateQQ 
voidQQ 
	WriteLineQQ 
(QQ 
DiagnosticLogLevelQQ 1
levelQQ2 7
,QQ7 8
stringQQ9 ?
contentQQ@ G
)QQG H
{RR 	
ifSS 
(SS 
levelSS 
>=SS 
_minimumLevelSS &
)SS& '
{TT 
ConsoleUU 
.UU 
	WriteLineUU !
(UU! "
$"UU" $
$strUU$ %
{UU% &
levelUU& +
}UU+ ,
$strUU, .
{UU. /
contentUU/ 6
}UU6 7
"UU7 8
)UU8 9
;UU9 :
}VV 
}WW 	
}XX 
}YY ¬/
üC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\Debuggings\ApplicationInsightsKubernetesDiagnosticSource.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
.2 3
	Debugging3 <
{ 
public

 

sealed

 
class

 9
-ApplicationInsightsKubernetesDiagnosticSource

 E
{ 
private 
readonly 
DiagnosticSource )
_innerSource* 6
;6 7
public 
DiagnosticListener !

Observable" ,
=>- /
(0 1
DiagnosticListener1 C
)C D
thisD H
.H I
_innerSourceI U
;U V
public 
const 
string  
DiagnosticSourceName 0
=1 2
$str3 b
;b c
private 9
-ApplicationInsightsKubernetesDiagnosticSource =
(= >
)> ?
{ 	
_innerSource 
= 
new 
DiagnosticListener 1
(1 2 
DiagnosticSourceName2 F
)F G
;G H
} 	
static 9
-ApplicationInsightsKubernetesDiagnosticSource <
(< =
)= >
{ 	
}   	
public&& 
static&& 9
-ApplicationInsightsKubernetesDiagnosticSource&& C
Instance&&D L
{&&M N
get&&O R
;&&R S
}&&T U
=&&V W
new&&X [:
-ApplicationInsightsKubernetesDiagnosticSource	&&\ â
(
&&â ä
)
&&ä ã
;
&&ã å
public++ 
void++ 
LogCritical++ 
(++  
string++  &
message++' .
,++. /
params++0 6
object++7 =
[++= >
]++> ?
args++@ D
)++D E
{,, 	
Write-- 
(-- 
DiagnosticLogLevel-- $
.--$ %
Critical--% -
,--- .
message--/ 6
,--6 7
args--8 <
)--< =
;--= >
}.. 	
public33 
void33 
LogError33 
(33 
string33 #
message33$ +
,33+ ,
params33- 3
object334 :
[33: ;
]33; <
args33= A
)33A B
{44 	
Write55 
(55 
DiagnosticLogLevel55 $
.55$ %
Error55% *
,55* +
message55, 3
,553 4
args555 9
)559 :
;55: ;
}66 	
public;; 
void;; 

LogWarning;; 
(;; 
string;; %
message;;& -
,;;- .
params;;/ 5
object;;6 <
[;;< =
];;= >
args;;? C
);;C D
{<< 	
Write== 
(== 
DiagnosticLogLevel== $
.==$ %
Warning==% ,
,==, -
message==. 5
,==5 6
args==7 ;
)==; <
;==< =
}>> 	
publicEE 
voidEE 
LogInformationEE "
(EE" #
stringEE# )
messageEE* 1
,EE1 2
paramsEE3 9
objectEE: @
[EE@ A
]EEA B
argsEEC G
)EEG H
{FF 	
WriteGG 
(GG 
DiagnosticLogLevelGG $
.GG$ %
InformationGG% 0
,GG0 1
messageGG2 9
,GG9 :
argsGG; ?
)GG? @
;GG@ A
}HH 	
publicOO 
voidOO 
LogDebugOO 
(OO 
stringOO #
messageOO$ +
,OO+ ,
paramsOO- 3
objectOO4 :
[OO: ;
]OO; <
argsOO= A
)OOA B
{PP 	
WriteQQ 
(QQ 
DiagnosticLogLevelQQ $
.QQ$ %
DebugQQ% *
,QQ* +
messageQQ, 3
,QQ3 4
argsQQ5 9
)QQ9 :
;QQ: ;
}RR 	
publicYY 
voidYY 
LogTraceYY 
(YY 
stringYY #
messageYY$ +
,YY+ ,
paramsYY- 3
objectYY4 :
[YY: ;
]YY; <
argsYY= A
)YYA B
{ZZ 	
Write[[ 
([[ 
DiagnosticLogLevel[[ $
.[[$ %
Trace[[% *
,[[* +
message[[, 3
,[[3 4
args[[5 9
)[[9 :
;[[: ;
}\\ 	
private^^ 
void^^ 
Write^^ 
(^^ 
DiagnosticLogLevel^^ -
level^^. 3
,^^3 4
string^^5 ;
message^^< C
,^^C D
params^^E K
object^^L R
[^^R S
]^^S T
args^^U Y
)^^Y Z
{__ 	
if`` 
(`` 
_innerSource`` 
.`` 
	IsEnabled`` &
(``& '
level``' ,
.``, -
ToString``- 5
(``5 6
)``6 7
)``7 8
)``8 9
{aa 
stringbb 
timedFormatbb "
=bb# $
$strbb% (
+bb) *
DateTimebb+ 3
.bb3 4
UtcNowbb4 :
.bb: ;
ToStringbb; C
(bbC D
$strbbD G
,bbG H
CultureInfobbI T
.bbT U
InvariantCulturebbU e
)bbe f
+bbg h
$strbbi m
+bbn o
messagebbp w
;bbw x
_innerSourcecc 
.cc 
Writecc "
(cc" #
levelcc# (
.cc( )
ToStringcc) 1
(cc1 2
)cc2 3
,cc3 4
newcc5 8
{dd 
contentee 
=ee 
stringee $
.ee$ %
Formatee% +
(ee+ ,
CultureInfoee, 7
.ee7 8
InvariantCultureee8 H
,eeH I
timedFormateeJ U
,eeU V
argseeW [
)ee[ \
,ee\ ]
}ff 
)ff 
;ff 
}gg 
}hh 	
}ii 
}jj À
ÑC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\Debuggings\DiagnosticLogLevel.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
.2 3
	Debugging3 <
{ 
public 

enum 
DiagnosticLogLevel "
{ 
Critical 
= 
$num 
, 
Error 
= 
$num 
, 
Warning 
= 
$num 
, 
Information 
= 
$num 
, 
Debug   
=   
$num   
,   
Trace%% 
=%% 
$num%% 
,%% 
}&& 
}'' Ô
ÖC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\EntityExtensions\PodExtensions.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
;2 3
internal		 
static			 
class		 
PodExtensions		 #
{

 
public 

static 
V1ReplicaSet 
? 
GetMyReplicaSet  /
(/ 0
this0 4
V1Pod5 :
self; ?
,? @
IEnumerableA L
<L M
V1ReplicaSetM Y
>Y Z
scope[ `
)` a
{ 
V1OwnerReference 
? 

replicaRef $
=% &
self' +
.+ ,
Metadata, 4
.4 5
OwnerReferences5 D
.D E
FirstOrDefaultE S
(S T
ownerT Y
=>Z \
string] c
.c d
Equalsd j
(j k
ownerk p
.p q
Kindq u
,u v
V1ReplicaSet	w É
.
É Ñ
KubeKind
Ñ å
,
å ç
StringComparison
é û
.
û ü
Ordinal
ü ¶
)
¶ ß
)
ß ®
;
® ©
if 

( 

replicaRef 
!= 
null 
) 
{ 	
V1ReplicaSet 
? 
replica !
=" #
scope$ )
?) *
.* +
FirstOrDefault+ 9
(9 :
r 
=> 
string 
. 
Equals "
(" #
r# $
.$ %
Metadata% -
.- .
Uid. 1
,1 2

replicaRef3 =
.= >
Uid> A
,A B
StringComparisonC S
.S T
OrdinalIgnoreCaseT e
)e f
)f g
;g h
return 
replica 
; 
} 	
return 
null 
; 
} 
} ƒ
åC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\EntityExtensions\ReplicaSetExtensions.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
;2 3
internal 
static	 
class  
ReplicaSetExtensions *
{		 
public

 

static

 
V1Deployment

 
?

 
GetMyDeployment

  /
(

/ 0
this

0 4
V1ReplicaSet

5 A
self

B F
,

F G
IEnumerable

H S
<

S T
V1Deployment

T `
>

` a
scope

b g
)

g h
{ 
if 

( 
self 
is 
null 
) 
{ 	
return 
null 
; 
} 	
V1OwnerReference 
? 
ownerReference (
=) *
self+ /
./ 0
Metadata0 8
.8 9
OwnerReferences9 H
.H I
FirstOrDefaultI W
(W X
oX Y
=>Z \
string] c
.c d
Equalsd j
(j k
ok l
.l m
Kindm q
,q r
V1Deployments 
.	 Ä
KubeKind
Ä à
,
à â
StringComparison
ä ö
.
ö õ
Ordinal
õ ¢
)
¢ £
)
£ §
;
§ •
if 

( 
ownerReference 
is 
not !
null" &
)& '
{ 	
V1Deployment 
? 

deployment $
=% &
scope' ,
., -
FirstOrDefault- ;
(; <
d< =
=>> @
stringA G
.G H
EqualsH N
(N O
dO P
.P Q
MetadataQ Y
.Y Z
UidZ ]
,] ^
ownerReference_ m
.m n
Uidn q
,q r
StringComparison	s É
.
É Ñ
Ordinal
Ñ ã
)
ã å
)
å ç
;
ç é
return 

deployment 
; 
} 	
return 
null 
; 
} 
} ú
ëC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\Extensions\AppInsightsForKubernetesOptions.cs
	namespace 	
	Microsoft
 
. 

Extensions 
. 
DependencyInjection 2
{ 
public		 

class		 +
AppInsightsForKubernetesOptions		 0
{

 
public 
const 
string 
SectionName '
=( )
$str* D
;D E
public 
TimeSpan !
InitializationTimeout -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
=< =
TimeSpan> F
.F G
FromMinutesG R
(R S
$numS T
)T U
;U V
public 
Func 
< 
string 
, 
string "
>" #
?# $!
TelemetryKeyProcessor% :
{; <
get= @
;@ A
setB E
;E F
}G H
public   
TimeSpan   &
ClusterInfoRefreshInterval   2
{  3 4
get  5 8
;  8 9
set  : =
;  = >
}  ? @
=  A B
TimeSpan  C K
.  K L
FromMinutes  L W
(  W X
$num  X Z
)  Z [
;  [ \
public&& $
IClusterEnvironmentCheck&& '
?&&' (
ClusterCheckAction&&) ;
{&&< =
get&&> A
;&&A B
set&&C F
;&&F G
}&&H I
=&&J K
null&&L P
;&&P Q
}'' 
}(( ›-
èC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\Extensions\ApplicationInsightsExtensions.cs
	namespace 	
	Microsoft
 
. 

Extensions 
. 
DependencyInjection 2
{		 
public 

static 
partial 
class )
ApplicationInsightsExtensions  =
{ 
private 
static 
readonly 9
-ApplicationInsightsKubernetesDiagnosticSource  M
_loggerN U
=V W:
-ApplicationInsightsKubernetesDiagnosticSource	X Ö
.
Ö Ü
Instance
Ü é
;
é è
public 
static 
IServiceCollection (4
(AddApplicationInsightsKubernetesEnricher) Q
(Q R
this 
IServiceCollection #
services$ ,
,, -
LogLevel 
? 
diagnosticLogLevel (
=) *
LogLevel+ 3
.3 4
None4 8
,8 9
bool $
disableBackgroundService )
=* +
false, 1
,1 2
Action   
<   +
AppInsightsForKubernetesOptions   2
>  2 3
?  3 4
applyOptions  5 A
=  B C
default  D K
,  K L$
IClusterEnvironmentCheck!! $
?!!$ %
clusterCheck!!& 2
=!!3 4
default!!5 <
)!!< =
{"" 	
diagnosticLogLevel## 
??=## "
LogLevel### +
.##+ ,
None##, 0
;##0 1
if$$ 
($$ 
diagnosticLogLevel$$ "
!=$$# %
LogLevel$$& .
.$$. /
None$$/ 3
)$$3 4
{%% ;
/ApplicationInsightsKubernetesDiagnosticObserver&& ?
observer&&@ H
=&&I J
new&&K N;
/ApplicationInsightsKubernetesDiagnosticObserver&&O ~
(&&~ 
(	&& Ä 
DiagnosticLogLevel
&&Ä í
)
&&í ì 
diagnosticLogLevel
&&ì •
)
&&• ¶
;
&&¶ ß9
-ApplicationInsightsKubernetesDiagnosticSource'' =
.''= >
Instance''> F
.''F G

Observable''G Q
.''Q R 
SubscribeWithAdapter''R f
(''f g
observer''g o
)''o p
;''p q
}(( 
if** 
(** 
!** 0
$KubernetesTelemetryInitializerExists** 5
(**5 6
services**6 >
)**> ?
)**? @
{++ 
services,, 
.,, 3
'ConfigureKubernetesTelemetryInitializer,, @
(,,@ A
applyOptions,,A M
,,,M N
clusterCheck,,O [
,,,[ \$
disableBackgroundService,,] u
),,u v
;,,v w
}-- 
return.. 
services.. 
;.. 
}// 	
public44 
static44 
void44 6
*StartApplicationInsightsKubernetesEnricher44 E
(44E F
this44F J
IServiceProvider44K [
serviceProvider44\ k
)44k l
{55 	
IK8sInfoBootstrap66 
?66 
k8sInfoBootstrap66 /
=660 1
serviceProvider662 A
.66A B

GetService66B L
<66L M
IK8sInfoBootstrap66M ^
>66^ _
(66_ `
)66` a
;66a b
if77 
(77 
k8sInfoBootstrap77  
is77! #
null77$ (
)77( )
{88 
_logger99 
.99 
LogInformation99 &
(99& '
$str	99' ™
,
99™ ´
nameof
99¨ ≤
(
99≤ ≥
IK8sInfoBootstrap
99≥ ƒ
)
99ƒ ≈
,
99≈ ∆
nameof
99« Õ
(
99Õ Œ6
(AddApplicationInsightsKubernetesEnricher
99Œ ˆ
)
99ˆ ˜
)
99˜ ¯
;
99¯ ˘
return:: 
;:: 
};; 
k8sInfoBootstrap<< 
.<< 
Run<<  
(<<  !
)<<! "
;<<" #
}== 	
privateCC 
staticCC 
boolCC 0
$KubernetesTelemetryInitializerExistsCC @
(CC@ A
IServiceCollectionCCA S
serviceCollectionCCT e
)CCe f
=>DD 
serviceCollectionDD  
.DD  !
AnyDD! $
<DD$ %
ServiceDescriptorDD% 6
>DD6 7
(DD7 8
tDD8 9
=>DD: <
tDD= >
.DD> ?
ImplementationTypeDD? Q
==DDR T
typeofDDU [
(DD[ \*
KubernetesTelemetryInitializerDD\ z
)DDz {
)DD{ |
;DD| }
internalII 
staticII 
voidII 3
'ConfigureKubernetesTelemetryInitializerII D
(IID E
thisJJ 
IServiceCollectionJJ #
servicesJJ$ ,
,JJ, -
ActionKK 
<KK +
AppInsightsForKubernetesOptionsKK 2
>KK2 3
?KK3 4
overwriteOptionsKK5 E
,KKE F$
IClusterEnvironmentCheckLL $
?LL$ %
clusterCheckLL& 2
,LL2 3
boolMM &
skipRegisterBackendServiceMM +
=MM, -
falseMM. 3
)MM3 4
{NN 	/
#IKubernetesServiceCollectionBuilderOO /.
"kubernetesServiceCollectionBuilderOO0 R
=OOS T
newOOU X.
"KubernetesServiceCollectionBuilderOOY {
(OO{ |
overwriteOptions	OO| å
,
OOå ç
clusterCheck
OOé ö
,
OOö õ(
skipRegisterBackendService
OOú ∂
)
OO∂ ∑
;
OO∑ ∏
_PP 
=PP .
"kubernetesServiceCollectionBuilderPP 2
.PP2 3
RegisterServicesPP3 C
(PPC D
servicesPPD L
)PPL M
;PPM N
}QQ 	
}RR 
}SS  
ïC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\Extensions\IKubernetesServiceCollectionBuilder.cs
	namespace 	
	Microsoft
 
. 

Extensions 
. 
DependencyInjection 2
;2 3
internal 
	interface	 /
#IKubernetesServiceCollectionBuilder 6
{ 
IServiceCollection 
RegisterServices '
(' (
IServiceCollection( :
serviceCollection; L
)L M
;M N
} Œj
îC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\Extensions\KubernetesServiceCollectionBuilder.cs
	namespace 	
	Microsoft
 
. 

Extensions 
. 
DependencyInjection 2
;2 3
internal 
class	 .
"KubernetesServiceCollectionBuilder 1
:2 3/
#IKubernetesServiceCollectionBuilder4 W
{ 
private 
readonly $
IClusterEnvironmentCheck -
_clusterCheck. ;
;; <
private 
readonly 
bool '
_skipRegisterBackendService 5
;5 6
private 
readonly 
Action 
< +
AppInsightsForKubernetesOptions ;
>; <
?< =
_customizeOptions> O
;O P
private 
readonly 9
-ApplicationInsightsKubernetesDiagnosticSource B
_loggerC J
=K L9
-ApplicationInsightsKubernetesDiagnosticSourceM z
.z {
Instance	{ É
;
É Ñ
public 
.
"KubernetesServiceCollectionBuilder -
(- .
Action   
<   +
AppInsightsForKubernetesOptions   .
>  . /
?  / 0
customizeOptions  1 A
,  A B$
IClusterEnvironmentCheck!!  
?!!  !
clusterCheck!!" .
,!!. /
bool"" &
skipRegisterBackendService"" '
)""' (
{## 
_customizeOptions$$ 
=$$ 
customizeOptions$$ ,
;$$, -
_clusterCheck%% 
=%% 
clusterCheck%% $
??%%% '
new%%( +#
ClusterEnvironmentCheck%%, C
(%%C D
)%%D E
;%%E F'
_skipRegisterBackendService&& #
=&&$ %&
skipRegisterBackendService&&& @
;&&@ A
}'' 
public.. 

IServiceCollection.. 
RegisterServices.. .
(... /
IServiceCollection../ A
serviceCollection..B S
)..S T
{// 
if00 

(00 
_clusterCheck00 
.00 
IsInCluster00 %
)00% &
{11 	
if22 
(22 
serviceCollection22 !
is22" $
null22% )
)22) *
{33 
throw44 
new44 !
ArgumentNullException44 /
(44/ 0
nameof440 6
(446 7
serviceCollection447 H
)44H I
)44I J
;44J K
}55 
serviceCollection66 
.66 
AddTransient66 *
<66* +$
IClusterEnvironmentCheck66+ C
,66C D#
ClusterEnvironmentCheck66E \
>66\ ]
(66] ^
)66^ _
;66_ `
ConfigureOptions77 
(77 
serviceCollection77 .
)77. /
;77/ 0"
RegisterCommonServices99 "
(99" #
serviceCollection99# 4
)994 5
;995 6$
RegisterSettingsProvider:: $
(::$ %
serviceCollection::% 6
)::6 7
;::7 8)
RegisterK8sEnvironmentFactory;; )
(;;) *
serviceCollection;;* ;
);;; <
;;;< =
serviceCollection<< 
.<< 
AddSingleton<< *
<<<* +!
ITelemetryInitializer<<+ @
,<<@ A*
KubernetesTelemetryInitializer<<B `
><<` a
(<<a b
)<<b c
;<<c d
_logger>> 
.>> 
LogDebug>> 
(>> 
$str>> a
)>>a b
;>>b c
return?? 
serviceCollection?? $
;??$ %
}@@ 	
elseAA 
{BB 	
serviceCollectionDD 
.DD 
	AddScopedDD '
<DD' (
IK8sInfoServiceDD( 7
,DD7 8
K8sInfoServiceStubDD9 K
>DDK L
(DDL M
)DDM N
;DDN O
_loggerFF 
.FF 
LogErrorFF 
(FF 
$strFF V
)FFV W
;FFW X
returnGG 
serviceCollectionGG $
;GG$ %
}HH 	
}II 
privateKK 
voidKK 
ConfigureOptionsKK !
(KK! "
IServiceCollectionKK" 4
serviceCollectionKK5 F
)KKF G
{LL 
serviceCollectionMM 
.MM 

AddOptionsMM $
(MM$ %
)MM% &
;MM& '
serviceCollectionNN 
.NN 

AddOptionsNN $
<NN$ %+
AppInsightsForKubernetesOptionsNN% D
>NND E
(NNE F
)NNF G
.NNG H
	ConfigureNNH Q
<NNQ R
IConfigurationNNR `
>NN` a
(NNa b
(NNb c
optNNc f
,NNf g
configurationNNh u
)NNu v
=>NNw y
{OO 	
configurationPP 
.PP 

GetSectionPP $
(PP$ %+
AppInsightsForKubernetesOptionsPP% D
.PPD E
SectionNamePPE P
)PPP Q
.PPQ R
BindPPR V
(PPV W
optPPW Z
)PPZ [
;PP[ \
_customizeOptionsQQ 
?QQ 
.QQ 
InvokeQQ %
(QQ% &
optQQ& )
)QQ) *
;QQ* +
}RR 	
)RR	 

;RR
 
}SS 
privateUU 
staticUU 
voidUU "
RegisterCommonServicesUU .
(UU. /
IServiceCollectionUU/ A
serviceCollectionUUB S
)UUS T
{VV 
serviceCollectionWW 
.WW 
AddSingletonWW &
<WW& '
ITelemetryKeyCacheWW' 9
,WW9 :
TelemetryKeyCacheWW; L
>WWL M
(WWM N
)WWN O
;WWO P
serviceCollectionXX 
.XX 
AddSingletonXX &
<XX& '
SDKVersionUtilsXX' 6
>XX6 7
(XX7 8
_XX8 9
=>XX: <
SDKVersionUtilsXX= L
.XXL M
InstanceXXM U
)XXU V
;XXV W
serviceCollectionYY 
.YY 
AddSingletonYY &
<YY& '
IK8sClientServiceYY' 8
>YY8 9
(YY9 :
_YY: ;
=>YY< >
K8sClientServiceYY? O
.YYO P
InstanceYYP X
)YYX Y
;YYY Z
serviceCollectionZZ 
.ZZ 
AddSingletonZZ &
<ZZ& '
IContainerIdHolderZZ' 9
,ZZ9 :
ContainerIdHolderZZ; L
>ZZL M
(ZZM N
)ZZN O
;ZZO P
serviceCollection\\ 
.\\ 
	AddScoped\\ #
<\\# $
IPodInfoManager\\$ 3
,\\3 4
PodInfoManager\\5 C
>\\C D
(\\D E
)\\E F
;\\F G
serviceCollection]] 
.]] 
	AddScoped]] #
<]]# $#
IContainerStatusManager]]$ ;
,]]; <"
ContainerStatusManager]]= S
>]]S T
(]]T U
)]]U V
;]]V W
serviceCollection^^ 
.^^ 
	AddScoped^^ #
<^^# $
IK8sInfoService^^$ 3
,^^3 4
K8sInfoService^^5 C
>^^C D
(^^D E
)^^E F
;^^F G
serviceCollection__ 
.__ 
	AddScoped__ #
<__# $"
IK8sEnvironmentFetcher__$ :
,__: ;!
K8sEnvironmentFetcher__< Q
>__Q R
(__R S
)__S T
;__T U
}`` 
	protectedff 
virtualff 
voidff $
RegisterSettingsProviderff 3
(ff3 4
IServiceCollectionff4 F
serviceCollectionffG X
)ffX Y
{gg 
serviceCollectionii 
.ii 
TryAddEnumerableii *
(ii* +
ServiceDescriptorii+ <
.ii< =
Scopedii= C
<iiC D 
IContainerIdProvideriiD X
,iiX Y3
&EnvironmentVariableContainerIdProvider	iiZ Ä
>
iiÄ Å
(
iiÅ Ç
)
iiÇ É
)
iiÉ Ñ
;
iiÑ Ö
ifkk 

(kk 
RuntimeInformationkk 
.kk 
IsOSPlatformkk +
(kk+ ,

OSPlatformkk, 6
.kk6 7
Linuxkk7 <
)kk< =
)kk= >
{ll 	
serviceCollectionnn 
.nn 
	AddScopednn '
<nn' (
CGroupV1Matchernn( 7
>nn7 8
(nn8 9
)nn9 :
;nn: ;
serviceCollectionoo 
.oo 
	AddScopedoo '
<oo' ((
DockerEngineMountInfoMatcheroo( D
>ooD E
(ooE F
)ooF G
;ooG H
serviceCollectionpp 
.pp 
	AddScopedpp '
<pp' (&
ContainerDMountInfoMatcherpp( B
>ppB C
(ppC D
)ppD E
;ppE F
serviceCollectiontt 
.tt 
TryAddEnumerablett .
(tt. /
ServiceDescriptortt/ @
.tt@ A
ScopedttA G
<ttG H 
IContainerIdProviderttH \
,tt\ ]%
CGroupContainerIdProvidertt^ w
>ttw x
(ttx y
)tty z
)ttz {
;tt{ |
serviceCollectionuu 
.uu 
TryAddEnumerableuu .
(uu. /
ServiceDescriptoruu/ @
.uu@ A
ScopeduuA G
<uuG H 
IContainerIdProvideruuH \
,uu\ ]3
&ContainerDMountInfoContainerIdProvider	uu^ Ñ
>
uuÑ Ö
(
uuÖ Ü
)
uuÜ á
)
uuá à
;
uuà â
serviceCollectionvv 
.vv 
TryAddEnumerablevv .
(vv. /
ServiceDescriptorvv/ @
.vv@ A
ScopedvvA G
<vvG H 
IContainerIdProvidervvH \
,vv\ ]5
(DockerEngineMountInfoContainerIdProvider	vv^ Ü
>
vvÜ á
(
vvá à
)
vvà â
)
vvâ ä
;
vvä ã
}ww 	
elsexx 
ifxx 
(xx 
RuntimeInformationxx #
.xx# $
IsOSPlatformxx$ 0
(xx0 1

OSPlatformxx1 ;
.xx; <
Windowsxx< C
)xxC D
)xxD E
{yy 	
serviceCollection|| 
.|| 
TryAddEnumerable|| .
(||. /
ServiceDescriptor||/ @
.||@ A
Scoped||A G
<||G H 
IContainerIdProvider||H \
,||\ ]$
EmptyContainerIdProvider||^ v
>||v w
(||w x
)||x y
)||y z
;||z {
}}} 	
else~~ 
{ 	
_logger
ÄÄ 
.
ÄÄ 
LogError
ÄÄ 
(
ÄÄ 
$str
ÄÄ .
)
ÄÄ. /
;
ÄÄ/ 0
}
ÅÅ 	
serviceCollection
ÉÉ 
.
ÉÉ 
TryAddScoped
ÉÉ &
<
ÉÉ& '$
IContainerIdNormalizer
ÉÉ' =
,
ÉÉ= >#
ContainerIdNormalizer
ÉÉ? T
>
ÉÉT U
(
ÉÉU V
)
ÉÉV W
;
ÉÉW X
serviceCollection
áá 
.
áá 
TryAddEnumerable
áá *
(
áá* +
ServiceDescriptor
áá+ <
.
áá< =
Scoped
áá= C
<
ááC D
IPodNameProvider
ááD T
,
ááT U$
UserSetPodNameProvider
ááV l
>
áál m
(
áám n
)
áán o
)
ááo p
;
ááp q
serviceCollection
ââ 
.
ââ 
TryAddEnumerable
ââ *
(
ââ* +
ServiceDescriptor
ââ+ <
.
ââ< =
Scoped
ââ= C
<
ââC D
IPodNameProvider
ââD T
,
ââT U%
HostNamePodNameProvider
ââV m
>
ââm n
(
âân o
)
ââo p
)
ââp q
;
ââq r
}
ää 
	protected
èè 
virtual
èè 
void
èè +
RegisterK8sEnvironmentFactory
èè 8
(
èè8 9 
IServiceCollection
èè9 K
serviceCollection
èèL ]
)
èè] ^
{
êê 
serviceCollection
ëë 
.
ëë 
TryAddScoped
ëë &
<
ëë& '$
IK8sEnvironmentFactory
ëë' =
,
ëë= >#
K8sEnvironmentFactory
ëë? T
>
ëëT U
(
ëëU V
)
ëëV W
;
ëëW X
serviceCollection
íí 
.
íí 
TryAddSingleton
íí )
<
íí) *#
IK8sEnvironmentHolder
íí* ?
>
íí? @
(
íí@ A
_
ííA B
=>
ííC E"
K8sEnvironmentHolder
ííF Z
.
ííZ [
Instance
íí[ c
)
ííc d
;
ííd e
_logger
îî 
.
îî 
LogTrace
îî 
(
îî 
$str
îî D
)
îîD E
;
îîE F
serviceCollection
ïï 
.
ïï 
TryAddSingleton
ïï )
<
ïï) *
IK8sInfoBootstrap
ïï* ;
,
ïï; <
K8sInfoBootstrap
ïï= M
>
ïïM N
(
ïïN O
)
ïïO P
;
ïïP Q
if
ññ 

(
ññ 
!
ññ )
_skipRegisterBackendService
ññ (
)
ññ( )
{
óó 	
_logger
òò 
.
òò 
LogInformation
òò "
(
òò" #
$str
òò# P
,
òòP Q
nameof
òòR X
(
òòX Y&
K8sInfoBackgroundService
òòY q
)
òòq r
)
òòr s
;
òòs t
serviceCollection
ôô 
.
ôô 
AddHostedService
ôô .
<
ôô. /&
K8sInfoBackgroundService
ôô/ G
>
ôôG H
(
ôôH I
)
ôôI J
;
ôôJ K
}
öö 	
_logger
õõ 
.
õõ 
LogTrace
õõ 
(
õõ 
$str
õõ C
)
õõC D
;
õõD E
}
úú 
}ùù Â
C:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\IClusterEnvironmentCheck.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
;2 3
public 
	interface $
IClusterEnvironmentCheck )
{ 
bool 
IsInCluster	 
{ 
get 
; 
} 
} Â
xC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\IK8sClientService.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
;2 3
internal 
	interface	 
IK8sClientService $
{ 
Task 
< 	
IEnumerable	 
< 
V1Pod 
> 
> 
GetPodsAsync )
() *
CancellationToken* ;
cancellationToken< M
)M N
;N O
Task 
< 	
V1Pod	 
? 
> 
GetPodByNameAsync "
(" #
string# )
podName* 1
,1 2
CancellationToken3 D
cancellationTokenE V
)V W
;W X
Task 
< 	
IEnumerable	 
< 
V1ReplicaSet !
>! "
>" #
GetReplicaSetsAsync$ 7
(7 8
CancellationToken8 I
cancellationTokenJ [
)[ \
;\ ]
Task 
< 	
IEnumerable	 
< 
V1Deployment !
>! "
>" #
GetDeploymentsAsync$ 7
(7 8
CancellationToken8 I
cancellationTokenJ [
)[ \
;\ ]
Task 
< 	
IEnumerable	 
< 
V1Node 
> 
> 
GetNodesAsync +
(+ ,
bool, 0$
ignoreForbiddenException1 I
,I J
CancellationTokenK \
cancellationToken] n
)n o
;o p
} ˛
vC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\IK8sEnvironment.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
;2 3
public 
	interface 
IK8sEnvironment  
{ 
string 

?
 
ContainerID 
{ 
get 
; 
}  
string 

?
 
ContainerName 
{ 
get 
;  
}! "
string 

?
 
DeploymentUid 
{ 
get 
;  
}! "
string 

?
 
DeploymentName 
{ 
get  
;  !
}" #
string 

?
 
NodeName 
{ 
get 
; 
} 
string$$ 

?$$
 
NodeUid$$ 
{$$ 
get$$ 
;$$ 
}$$ 
string)) 

PodID)) 
{)) 
get)) 
;)) 
})) 
string// 

?//
 
	PodLabels// 
{// 
get// 
;// 
}// 
string44 

?44
 
PodNamespace44 
{44 
get44 
;44 
}44  !
string99 

PodName99 
{99 
get99 
;99 
}99 
string?? 

???
 
ReplicaSetUid?? 
{?? 
get?? 
;??  
}??! "
stringEE 

?EE
 
ReplicaSetNameEE 
{EE 
getEE  
;EE  !
}EE" #
}FF ⁄
}C:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\IK8sEnvironmentFactory.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
;2 3
internal 
	interface	 "
IK8sEnvironmentFactory )
{ 
Task 
< 	
IK8sEnvironment	 
? 
> 
CreateAsync &
(& '
CancellationToken' 8
cancellationToken9 J
)J K
;K L
} Ø
}C:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\IK8sEnvironmentFetcher.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
{ 
internal		 
	interface		 "
IK8sEnvironmentFetcher		 -
{

 
Task %
UpdateK8sEnvironmentAsync &
(& '
CancellationToken' 8
cancellationToken9 J
)J K
;K L
} 
} ≈
|C:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\IK8sEnvironmentHolder.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
{ 
internal 
	interface !
IK8sEnvironmentHolder ,
{ 
IK8sEnvironment 
? 
K8sEnvironment '
{( )
get* -
;- .
internal/ 7
set8 ;
;; <
}= >
} 
} ∑
xC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\IK8sInfoBootstrap.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
;2 3
public 
	interface 
IK8sInfoBootstrap "
{ 
void 
Run	 
( 
CancellationToken 
cancellationToken 0
=1 2
default3 :
): ;
;; <
Task 
ExecuteAsync	 
( 
CancellationToken '
cancellationToken( 9
)9 :
;: ;
} ñ
vC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\IK8sInfoService.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
;2 3
public 
	interface 
IK8sInfoService  
{ 
bool 
TryGetK8sInfo	 
( 
out 
IK8sEnvironment *
?* +
k8sInfo, 3
)3 4
;4 5
} ¸<
wC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\K8sClientService.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
;2 3
internal 
sealed	 
class 
K8sClientService &
:' (
IDisposable) 4
,4 5
IK8sClientService6 G
{ 
private 
readonly 9
-ApplicationInsightsKubernetesDiagnosticSource B
_loggerC J
=K L9
-ApplicationInsightsKubernetesDiagnosticSourceM z
.z {
Instance	{ É
;
É Ñ
private 
bool 
_isDisposeCalled !
=" #
false$ )
;) *
private 
readonly 
string 

_namespace &
;& '
private 
readonly )
KubernetesClientConfiguration 2
_configuration3 A
;A B
private 
readonly 
IKubernetes  
_kubernetesClient! 2
;2 3
private 
K8sClientService 
( 
) 
{ 
_configuration   
=   )
KubernetesClientConfiguration   6
.  6 7
InClusterConfig  7 F
(  F G
)  G H
;  H I

_namespace!! 
=!! 
_configuration!! #
.!!# $
	Namespace!!$ -
;!!- .
_kubernetesClient"" 
="" 
new"" 
K8s""  #
(""# $
_configuration""$ 2
)""2 3
;""3 4
}## 
public%% 

static%% 
K8sClientService%% "
Instance%%# +
{%%, -
get%%. 1
;%%1 2
}%%3 4
=%%5 6
new%%7 :
K8sClientService%%; K
(%%K L
)%%L M
;%%M N
public'' 

void'' 
Dispose'' 
('' 
)'' 
{(( 
if)) 

()) 
_isDisposeCalled)) 
))) 
{** 	
return++ 
;++ 
},, 	
_isDisposeCalled-- 
=-- 
true-- 
;--  
_kubernetesClient// 
.// 
Dispose// !
(//! "
)//" #
;//# $
}00 
public22 

async22 
Task22 
<22 
IEnumerable22 !
<22! "
V1Pod22" '
>22' (
>22( )
GetPodsAsync22* 6
(226 7
CancellationToken227 H
cancellationToken22I Z
)22Z [
{33 
	V1PodList44 
?44 
list44 
=44 
await44 
_kubernetesClient44  1
.441 2
CoreV1442 8
.448 9"
ListNamespacedPodAsync449 O
(44O P

_namespace44P Z
,44Z [
cancellationToken44\ m
:44m n
cancellationToken	44o Ä
)
44Ä Å
.
44Å Ç
ConfigureAwait
44Ç ê
(
44ê ë
false
44ë ñ
)
44ñ ó
;
44ó ò
return55 
list55 
.55 
AsEnumerable55  
(55  !
)55! "
;55" #
}66 
public88 

Task88 
<88 
V1Pod88 
?88 
>88 
GetPodByNameAsync88 )
(88) *
string88* 0
podName881 8
,888 9
CancellationToken88: K
cancellationToken88L ]
)88] ^
=>99 

_kubernetesClient99 
.99 
CoreV199 #
.99# $"
ReadNamespacedPodAsync99$ :
(99: ;
podName99; B
,99B C

_namespace99D N
,99N O
cancellationToken99P a
:99a b
cancellationToken99c t
)99t u
;99u v
public;; 

async;; 
Task;; 
<;; 
IEnumerable;; !
<;;! "
V1ReplicaSet;;" .
>;;. /
>;;/ 0
GetReplicaSetsAsync;;1 D
(;;D E
CancellationToken;;E V
cancellationToken;;W h
);;h i
{<< 
V1ReplicaSetList== 
?== 
replicaSetList== (
===) *
await==+ 0
_kubernetesClient==1 B
.==B C
AppsV1==C I
.==I J)
ListNamespacedReplicaSetAsync==J g
(==g h

_namespace==h r
,==r s
cancellationToken	==t Ö
:
==Ö Ü
cancellationToken
==á ò
)
==ò ô
.
==ô ö
ConfigureAwait
==ö ®
(
==® ©
false
==© Æ
)
==Æ Ø
;
==Ø ∞
return>> 
replicaSetList>> 
.>> 
AsEnumerable>> *
(>>* +
)>>+ ,
;>>, -
}?? 
publicAA 

asyncAA 
TaskAA 
<AA 
IEnumerableAA !
<AA! "
V1DeploymentAA" .
>AA. /
>AA/ 0
GetDeploymentsAsyncAA1 D
(AAD E
CancellationTokenAAE V
cancellationTokenAAW h
)AAh i
{BB 
V1DeploymentListCC 
?CC 
deploymentListCC (
=CC) *
awaitCC+ 0
_kubernetesClientCC1 B
.CCB C
AppsV1CCC I
.CCI J)
ListNamespacedDeploymentAsyncCCJ g
(CCg h

_namespaceCCh r
,CCr s
cancellationToken	CCt Ö
:
CCÖ Ü
cancellationToken
CCá ò
)
CCò ô
.
CCô ö
ConfigureAwait
CCö ®
(
CC® ©
false
CC© Æ
)
CCÆ Ø
;
CCØ ∞
returnDD 
deploymentListDD 
.DD 
AsEnumerableDD *
(DD* +
)DD+ ,
;DD, -
}EE 
publicGG 

asyncGG 
TaskGG 
<GG 
IEnumerableGG !
<GG! "
V1NodeGG" (
>GG( )
>GG) *
GetNodesAsyncGG+ 8
(GG8 9
boolGG9 =$
ignoreForbiddenExceptionGG> V
,GGV W
CancellationTokenGGX i
cancellationTokenGGj {
)GG{ |
{HH 
tryII 
{JJ 	

V1NodeListKK 
?KK 
nodeListKK  
=KK! "
awaitKK# (
_kubernetesClientKK) :
.KK: ;
CoreV1KK; A
.KKA B
ListNodeAsyncKKB O
(KKO P
)KKP Q
.KKQ R
ConfigureAwaitKKR `
(KK` a
falseKKa f
)KKf g
;KKg h
returnLL 
nodeListLL 
.LL 
AsEnumerableLL (
(LL( )
)LL) *
;LL* +
}MM 	
catchNN 
(NN "
HttpOperationExceptionNN %
exNN& (
)NN( )
whenNN* .
(NN/ 0
exNN0 2
.NN2 3
ResponseNN3 ;
.NN; <

StatusCodeNN< F
==NNG I
HttpStatusCodeNNJ X
.NNX Y
	ForbiddenNNY b
)NNb c
{OO 	
ifQQ 
(QQ $
ignoreForbiddenExceptionQQ (
)QQ( )
{RR 
_loggerSS 
.SS 
LogDebugSS  
(SS  !
exSS! #
.SS# $
MessageSS$ +
)SS+ ,
;SS, -
_loggerTT 
.TT 
LogTraceTT  
(TT  !
exTT! #
.TT# $
ToStringTT$ ,
(TT, -
)TT- .
)TT. /
;TT/ 0
returnUU 

EnumerableUU !
.UU! "
EmptyUU" '
<UU' (
V1NodeUU( .
>UU. /
(UU/ 0
)UU0 1
;UU1 2
}VV 
throwYY 
;YY 
}ZZ 	
}[[ 
}\\ ‚1
uC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\K8sEnvironment.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
{ 
internal 
record 
K8sEnvironment "
:# $
IK8sEnvironment% 4
{ 
public 
K8sEnvironment 
( 
V1ContainerStatus 
? 
containerStatus .
,. /
V1Pod 
pod 
, 
V1ReplicaSet 
? 

replicaSet $
,$ %
V1Deployment 
? 

deployment $
,$ %
V1Node 
? 
node 
) 
{ 	
if 
( 
pod 
is 
null 
) 
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
pod7 :
): ;
); <
;< =
} 
ContainerID 
= 
containerStatus )
?) *
.* +
ContainerID+ 6
;6 7
ContainerName 
= 
containerStatus +
?+ ,
., -
Name- 1
;1 2
PodName 
= 
pod 
. 
Metadata "
." #
Name# '
;' (
PodID 
= 
pod 
. 
Metadata  
.  !
Uid! $
;$ %
	PodLabels 
= 
CreateLabels $
($ %
pod% (
)( )
;) *
PodNamespace 
= 
pod 
. 
Metadata '
.' (
NamespaceProperty( 9
;9 :
ReplicaSetUid!! 
=!! 

replicaSet!! &
?!!& '
.!!' (
Metadata!!( 0
?!!0 1
.!!1 2
Uid!!2 5
;!!5 6
ReplicaSetName"" 
="" 

replicaSet"" '
?""' (
.""( )
Metadata"") 1
?""1 2
.""2 3
Name""3 7
;""7 8
DeploymentUid$$ 
=$$ 

deployment$$ &
?$$& '
.$$' (
Metadata$$( 0
?$$0 1
.$$1 2
Uid$$2 5
;$$5 6
DeploymentName%% 
=%% 

deployment%% '
?%%' (
.%%( )
Metadata%%) 1
?%%1 2
.%%2 3
Name%%3 7
;%%7 8
NodeName'' 
='' 
node'' 
?'' 
.'' 
Metadata'' %
?''% &
.''& '
Name''' +
;''+ ,
NodeUid(( 
=(( 
node(( 
?(( 
.(( 
Metadata(( $
?(($ %
.((% &
Uid((& )
;(() *
})) 	
public// 
string// 
?// 
ContainerID// "
{//# $
get//% (
;//( )
}//* +
public44 
string44 
?44 
ContainerName44 $
{44% &
get44' *
;44* +
}44, -
public99 
string99 
PodName99 
{99 
get99  #
;99# $
}99% &
public>> 
string>> 
PodID>> 
{>> 
get>> !
;>>! "
}>># $
publicCC 
stringCC 
?CC 
	PodLabelsCC  
{CC! "
getCC# &
;CC& '
}CC( )
publicHH 
stringHH 
?HH 
PodNamespaceHH #
{HH$ %
getHH& )
;HH) *
}HH+ ,
publicJJ 
stringJJ 
?JJ 
ReplicaSetUidJJ $
{JJ% &
getJJ' *
;JJ* +
}JJ, -
publicKK 
stringKK 
?KK 
ReplicaSetNameKK %
{KK& '
getKK( +
;KK+ ,
}KK- .
publicMM 
stringMM 
?MM 
DeploymentUidMM $
{MM% &
getMM' *
;MM* +
}MM, -
publicNN 
stringNN 
?NN 
DeploymentNameNN %
{NN& '
getNN( +
;NN+ ,
}NN- .
publicPP 
stringPP 
?PP 
NodeNamePP 
{PP  !
getPP" %
;PP% &
}PP' (
publicQQ 
stringQQ 
?QQ 
NodeUidQQ 
{QQ  
getQQ! $
;QQ$ %
}QQ& '
privateSS 
staticSS 
stringSS 
JoinKeyValuePairsSS /
(SS/ 0
IDictionarySS0 ;
<SS; <
stringSS< B
,SSB C
stringSSD J
>SSJ K

dictionarySSL V
)SSV W
{TT 	
returnUU 
stringUU 
.UU 
JoinUU 
(UU 
$strUU "
,UU" #

dictionaryUU$ .
.UU. /
SelectUU/ 5
(UU5 6
kvpUU6 9
=>UU: <
kvpUU= @
.UU@ A
KeyUUA D
+UUE F
$charUUG J
+UUK L
kvpUUM P
.UUP Q
ValueUUQ V
)UUV W
)UUW X
;UUX Y
}VV 	
privateXX 
staticXX 
stringXX 
CreateLabelsXX *
(XX* +
V1PodXX+ 0
podXX1 4
)XX4 5
{YY 	
IDictionaryZZ 
<ZZ 
stringZZ 
,ZZ 
stringZZ  &
>ZZ& '
?ZZ' (
	labelDictZZ) 2
=ZZ3 4
podZZ5 8
.ZZ8 9
MetadataZZ9 A
?ZZA B
.ZZB C
LabelsZZC I
;ZZI J
if[[ 
([[ 
	labelDict[[ 
!=[[ 
null[[ !
&&[[" $
	labelDict[[% .
.[[. /
Count[[/ 4
>[[5 6
$num[[7 8
)[[8 9
{\\ 
return]] 
JoinKeyValuePairs]] (
(]]( )
	labelDict]]) 2
)]]2 3
;]]3 4
}^^ 
return__ 
string__ 
.__ 
Empty__ 
;__  
}`` 	
}aa 
}bb ùC
|C:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\K8sEnvironmentFactory.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
;2 3
internal 
class	 !
K8sEnvironmentFactory $
:% &"
IK8sEnvironmentFactory' =
{ 
private 
readonly 9
-ApplicationInsightsKubernetesDiagnosticSource B
_loggerC J
=K L9
-ApplicationInsightsKubernetesDiagnosticSourceM z
.z {
Instance	{ É
;
É Ñ
private 
readonly 
IContainerIdHolder '
_containerIdHolder( :
;: ;
private 
readonly 
IPodInfoManager $
_podInfoManager% 4
;4 5
private 
readonly #
IContainerStatusManager ,#
_containerStatusManager- D
;D E
private 
readonly 
IK8sClientService &

_k8sClient' 1
;1 2
public 
!
K8sEnvironmentFactory  
(  !
IContainerIdHolder 
containerIdHolder ,
,, -
IPodInfoManager 
podInfoManager &
,& '#
IContainerStatusManager "
containerStatusManager  6
,6 7
IK8sClientService 
	k8sClient #
)# $
{ 
_containerIdHolder 
= 
containerIdHolder .
??/ 1
throw2 7
new8 ;!
ArgumentNullException< Q
(Q R
nameofR X
(X Y
containerIdHolderY j
)j k
)k l
;l m
_podInfoManager   
=   
podInfoManager   (
??  ) +
throw  , 1
new  2 5!
ArgumentNullException  6 K
(  K L
nameof  L R
(  R S
podInfoManager  S a
)  a b
)  b c
;  c d#
_containerStatusManager!! 
=!!  !"
containerStatusManager!!" 8
??!!9 ;
throw!!< A
new!!B E!
ArgumentNullException!!F [
(!![ \
nameof!!\ b
(!!b c"
containerStatusManager!!c y
)!!y z
)!!z {
;!!{ |

_k8sClient"" 
="" 
	k8sClient"" 
??"" !
throw""" '
new""( +!
ArgumentNullException"", A
(""A B
nameof""B H
(""H I
	k8sClient""I R
)""R S
)""S T
;""T U
}## 
public)) 

async)) 
Task)) 
<)) 
IK8sEnvironment)) %
?))% &
>))& '
CreateAsync))( 3
())3 4
CancellationToken))4 E
cancellationToken))F W
)))W X
{** 
try++ 
{,, 	
V1Pod.. 
myPod.. 
=.. 
await.. 
_podInfoManager..  /
.../ 0$
WaitUntilMyPodReadyAsync..0 H
(..H I
cancellationToken..I Z
)..Z [
...[ \
ConfigureAwait..\ j
(..j k
false..k p
)..p q
;..q r
V1ContainerStatus11 
?11 
containerStatus11 .
=11/ 0
await111 6#
_containerStatusManager117 N
.11N O#
WaitContainerReadyAsync11O f
(11f g
cancellationToken11g x
)11x y
.11y z
ConfigureAwait	11z à
(
11à â
false
11â é
)
11é è
;
11è ê
IEnumerable44 
<44 
V1ReplicaSet44 $
>44$ %
allReplicaSet44& 3
=444 5
await446 ;

_k8sClient44< F
.44F G
GetReplicaSetsAsync44G Z
(44Z [
cancellationToken44[ l
)44l m
.44m n
ConfigureAwait44n |
(44| }
false	44} Ç
)
44Ç É
;
44É Ñ
V1ReplicaSet55 
?55 

replicaSet55 $
=55% &
myPod55' ,
.55, -
GetMyReplicaSet55- <
(55< =
allReplicaSet55= J
)55J K
;55K L
IEnumerable88 
<88 
V1Deployment88 $
>88$ %
allDeployment88& 3
=884 5
await886 ;

_k8sClient88< F
.88F G
GetDeploymentsAsync88G Z
(88Z [
cancellationToken88[ l
)88l m
.88m n
ConfigureAwait88n |
(88| }
false	88} Ç
)
88Ç É
;
88É Ñ
V1Deployment99 
?99 

deployment99 $
=99% &

replicaSet99' 1
?991 2
.992 3
GetMyDeployment993 B
(99B C
allDeployment99C P
)99P Q
;99Q R
string<< 
nodeName<< 
=<< 
myPod<< #
.<<# $
Spec<<$ (
.<<( )
NodeName<<) 1
;<<1 2
IEnumerable== 
<== 
V1Node== 
>== 
allNodes==  (
===) *
await==+ 0

_k8sClient==1 ;
.==; <
GetNodesAsync==< I
(==I J$
ignoreForbiddenException==J b
:==b c
true==d h
,==h i
cancellationToken==j {
)=={ |
.==| }
ConfigureAwait	==} ã
(
==ã å
false
==å ë
)
==ë í
;
==í ì
V1Node>> 
?>> 
node>> 
=>> 
allNodes>> #
.>># $
FirstOrDefault>>$ 2
(>>2 3
n>>3 4
=>>>5 7
string>>8 >
.>>> ?
Equals>>? E
(>>E F
n>>F G
.>>G H
Metadata>>H P
.>>P Q
Name>>Q U
,>>U V
nodeName>>W _
,>>_ `
StringComparison>>a q
.>>q r
Ordinal>>r y
)>>y z
)>>z {
;>>{ |
K8sEnvironment@@ 
k8SEnvironment@@ )
=@@* +
new@@, /
K8sEnvironment@@0 >
(@@> ?
containerStatus@@? N
,@@N O
myPod@@P U
,@@U V

replicaSet@@W a
,@@a b

deployment@@c m
,@@m n
node@@o s
)@@s t
;@@t u
_loggerAA 
.AA 
LogDebugAA 
(AA 
JsonSerializerAA +
.AA+ ,
	SerializeAA, 5
<AA5 6
K8sEnvironmentAA6 D
>AAD E
(AAE F
k8SEnvironmentAAF T
)AAT U
.AAU V#
EscapeForLoggingMessageAAV m
(AAm n
)AAn o
)AAo p
;AAp q
returnBB 
k8SEnvironmentBB !
;BB! "
}CC 	
catchDD 
(DD "
HttpOperationExceptionDD %
exDD& (
)DD( )
whenDD* .
(DD/ 0
exDD0 2
.DD2 3
ResponseDD3 ;
.DD; <

StatusCodeDD< F
==DDG I
HttpStatusCodeDDJ X
.DDX Y
	ForbiddenDDY b
)DDb c
{EE 	$
HandleUnauthorizedAccessFF $
(FF$ %
exFF% '
)FF' (
;FF( )
returnGG 
nullGG 
;GG 
}HH 	
catchJJ 
(JJ 
	ExceptionJJ 
exJJ 
)JJ 
{KK 	
_loggerLL 
.LL 
LogCriticalLL 
(LL  
exLL  "
.LL" #
ToStringLL# +
(LL+ ,
)LL, -
)LL- .
;LL. /
returnMM 
nullMM 
;MM 
}NN 	
}PP 
privateRR 
voidRR $
HandleUnauthorizedAccessRR )
(RR) *"
HttpOperationExceptionRR* @
	exceptionRRA J
)RRJ K
{SS 
DebugTT 
.TT 
AssertTT 
(TT 
	exceptionTT 
.TT 
ResponseTT '
.TT' (

StatusCodeTT( 2
==TT3 5
HttpStatusCodeTT6 D
.TTD E
	ForbiddenTTE N
,TTN O
$strTTP h
)TTh i
;TTi j
_loggerUU 
.UU 
LogErrorUU 
(UU 
$str	VV à
,
VVà â
	exceptionWW 
.WW 
MessageWW 
)WW 
;WW 
_loggerXX 
.XX 
LogDebugXX 
(XX 
	exceptionXX "
.XX" #
ToStringXX# +
(XX+ ,
)XX, -
)XX- .
;XX. /
}YY 
}ZZ ≥'
|C:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\K8sEnvironmentFetcher.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
;2 3
internal

 
class

	 !
K8sEnvironmentFetcher

 $
:

% &"
IK8sEnvironmentFetcher

' =
{ 
private 
readonly !
IK8sEnvironmentHolder *!
_k8sEnvironmentHolder+ @
;@ A
private 
readonly "
IK8sEnvironmentFactory +"
_k8SEnvironmentFactory, B
;B C
private 
readonly 
ILogger 
_logger $
;$ %
private 
readonly +
AppInsightsForKubernetesOptions 4
_options5 =
;= >
public 
!
K8sEnvironmentFetcher  
(  !!
IK8sEnvironmentHolder 
environmentHolder /
,/ 0"
IK8sEnvironmentFactory !
k8SEnvironmentFactory 4
,4 5
IOptions 
< +
AppInsightsForKubernetesOptions 0
>0 1
options2 9
,9 :
ILogger 
< !
K8sEnvironmentFetcher %
>% &
logger' -
)- .
{ 
_logger 
= 
logger 
?? 
throw !
new" %
System& ,
., -!
ArgumentNullException- B
(B C
nameofC I
(I J
loggerJ P
)P Q
)Q R
;R S
_options 
= 
options 
? 
. 
Value !
??" $
throw% *
new+ .
System/ 5
.5 6!
ArgumentNullException6 K
(K L
nameofL R
(R S
optionsS Z
)Z [
)[ \
;\ ]!
_k8sEnvironmentHolder 
= 
environmentHolder  1
??2 4
throw5 :
new; >
System? E
.E F!
ArgumentNullExceptionF [
([ \
nameof\ b
(b c
environmentHolderc t
)t u
)u v
;v w"
_k8SEnvironmentFactory 
=  !
k8SEnvironmentFactory! 6
??7 9
throw: ?
new@ C
SystemD J
.J K!
ArgumentNullExceptionK `
(` a
nameofa g
(g h!
k8SEnvironmentFactoryh }
)} ~
)~ 
;	 Ä
} 
public 

async 
Task %
UpdateK8sEnvironmentAsync /
(/ 0
CancellationToken0 A
cancellationTokenB S
)S T
{ 
using   #
CancellationTokenSource   %
timeoutSource  & 3
=  4 5
new  6 9#
CancellationTokenSource  : Q
(  Q R
_options  R Z
.  Z [!
InitializationTimeout  [ p
)  p q
;  q r
CancellationToken!! 
timeoutToken!! &
=!!' (
timeoutSource!!) 6
.!!6 7
Token!!7 <
;!!< =
try## 
{$$ 	
using%% 
(%% #
CancellationTokenSource%% *
linkedTokeSource%%+ ;
=%%< =#
CancellationTokenSource%%> U
.%%U V#
CreateLinkedTokenSource%%V m
(%%m n
cancellationToken%%n 
,	%% Ä
timeoutToken
%%Å ç
)
%%ç é
)
%%é è
{&& 
IK8sEnvironment(( 
?((  
environment((! ,
=((- .
await((/ 4"
_k8SEnvironmentFactory((5 K
.((K L
CreateAsync((L W
(((W X
cancellationToken((X i
:((i j
linkedTokeSource((k {
.(({ |
Token	((| Å
)
((Å Ç
.
((Ç É
ConfigureAwait
((É ë
(
((ë í
false
((í ó
)
((ó ò
;
((ò ô!
_k8sEnvironmentHolder)) %
.))% &
K8sEnvironment))& 4
=))5 6
environment))7 B
;))B C
}** 
}++ 	
catch,, 
(,, &
OperationCanceledException,, )
),,) *
{-- 	
if.. 
(.. 
timeoutToken.. 
... #
IsCancellationRequested.. 4
)..4 5
{// 
_logger00 
.00 
LogError00  
(00  !
$str00! N
)00N O
;00O P!
_k8sEnvironmentHolder11 %
.11% &
K8sEnvironment11& 4
=115 6
null117 ;
;11; <
}22 
else33 
{44 
_logger55 
.55 
LogInformation55 &
(55& '
$str55' =
)55= >
;55> ?
}66 
}77 	
}88 
}99 °

{C:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\K8sEnvironmentHolder.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
;2 3
internal 
sealed	 
class  
K8sEnvironmentHolder *
:+ ,!
IK8sEnvironmentHolder- B
{ 
private 
volatile 
IK8sEnvironment $
?$ %
_k8SEnvironment& 5
;5 6
private

  
K8sEnvironmentHolder

  
(

  !
)

! "
{

# $
}

% &
public 

static  
K8sEnvironmentHolder &
Instance' /
{0 1
get2 5
;5 6
}7 8
=9 :
new; > 
K8sEnvironmentHolder? S
(S T
)T U
;U V
public 

IK8sEnvironment 
? 
K8sEnvironment *
{ 
get 
{ 	
return 
_k8SEnvironment "
;" #
} 	
set 
{ 	
_k8SEnvironment 
= 
value #
;# $
} 	
} 
} ƒ

C:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\K8sInfoBackgroundService.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
;2 3
internal 
class	 $
K8sInfoBackgroundService '
:( )
BackgroundService* ;
{ 
private 
readonly 
IK8sInfoBootstrap &
_k8SInfoBootstrap' 8
;8 9
public 
$
K8sInfoBackgroundService #
(# $
IK8sInfoBootstrap$ 5
k8SInfoBootstrap6 F
)F G
{ 
_k8SInfoBootstrap 
= 
k8SInfoBootstrap ,
??- /
throw0 5
new6 9!
ArgumentNullException: O
(O P
nameofP V
(V W
k8SInfoBootstrapW g
)g h
)h i
;i j
} 
	protected 
override 
Task 
ExecuteAsync (
(( )
CancellationToken) :
stoppingToken; H
)H I
=> 

_k8SInfoBootstrap 
. 
ExecuteAsync )
() *
stoppingToken* 7
)7 8
;8 9
} ê0
wC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\K8sInfoBootstrap.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
;2 3
internal

 
class

	 
K8sInfoBootstrap

 
:

  !
IK8sInfoBootstrap

" 3
{ 
private 
readonly 9
-ApplicationInsightsKubernetesDiagnosticSource B
_loggerC J
=K L9
-ApplicationInsightsKubernetesDiagnosticSourceM z
.z {
Instance	{ É
;
É Ñ
private 
readonly +
AppInsightsForKubernetesOptions 4
_options5 =
;= >
private 
readonly 
object 
_locker #
=$ %
new& )
object* 0
(0 1
)1 2
;2 3
private 
readonly  
IServiceScopeFactory ) 
_serviceScopeFactory* >
;> ?
private 
bool 
_hasExecuted 
= 
false  %
;% &
public 

K8sInfoBootstrap 
(  
IServiceScopeFactory 
serviceScopeFactory 0
,0 1
IOptions 
< +
AppInsightsForKubernetesOptions 0
>0 1
options2 9
)9 :
{ 
_options 
= 
options 
? 
. 
Value !
??" $
throw% *
new+ .!
ArgumentNullException/ D
(D E
nameofE K
(K L
optionsL S
)S T
)T U
;U V 
_serviceScopeFactory 
= 
serviceScopeFactory 2
??3 5
throw6 ;
new< ?!
ArgumentNullException@ U
(U V
nameofV \
(\ ]
serviceScopeFactory] p
)p q
)q r
;r s
} 
public 

async 
Task 
ExecuteAsync "
(" #
CancellationToken# 4
cancellationToken5 F
)F G
{ 
lock 
( 
_locker 
) 
{   	
if!! 
(!! 
_hasExecuted!! 
)!! 
{"" 
return## 
;## 
}$$ 
_hasExecuted%% 
=%% 
true%% 
;%%  
}&& 	
TimeSpan(( 
interval(( 
=(( 
_options(( $
.(($ %&
ClusterInfoRefreshInterval((% ?
;((? @
while** 
(** 
!** 
cancellationToken** !
.**! "#
IsCancellationRequested**" 9
)**9 :
{++ 	
try,, 
{-- 
_logger.. 
... 
LogDebug..  
(..  !
$"..! #
$str..# A
"..A B
)..B C
;..C D
using00 
(00 
IServiceScope00 $
scope00% *
=00+ , 
_serviceScopeFactory00- A
.00A B
CreateScope00B M
(00M N
)00N O
)00O P
{11 "
IK8sEnvironmentFetcher22 *
fetcher22+ 2
=223 4
scope225 :
.22: ;
ServiceProvider22; J
.22J K
GetRequiredService22K ]
<22] ^"
IK8sEnvironmentFetcher22^ t
>22t u
(22u v
)22v w
;22w x
await33 
fetcher33 !
.33! "%
UpdateK8sEnvironmentAsync33" ;
(33; <
cancellationToken33< M
)33M N
;33N O
}44 
_logger66 
.66 
LogDebug66  
(66  !
$"66! #
$str66# a
{66a b
DateTime66b j
.66j k
UtcNow66k q
.66q r
Add66r u
(66u v
interval66v ~
)66~ 
}	66 Ä
$str
66Ä ü
{
66ü †
interval
66† ®
}
66® ©
"
66© ™
)
66™ ´
;
66´ ¨
await99 
Task99 
.99 
Delay99  
(99  !
interval99! )
,99) *
cancellationToken99+ <
:99< =
cancellationToken99> O
)99O P
;99P Q
}:: 
catch<< 
(<< 
	Exception<< 
ex<< 
)<<  
{== 
_logger?? 
.?? 
LogError??  
(??  !
$str	??! É
,
??É Ñ
ex
??Ö á
.
??á à
Message
??à è
)
??è ê
;
??ê ë
_logger@@ 
.@@ 
LogTrace@@  
(@@  !
$str	@@! É
,
@@É Ñ
ex
@@Ö á
.
@@á à
ToString
@@à ê
(
@@ê ë
)
@@ë í
)
@@í ì
;
@@ì î
}AA 
}CC 	
}DD 
publicHH 

voidHH 
RunHH 
(HH 
CancellationTokenHH %
cancellationTokenHH& 7
)HH7 8
{II 
tryJJ 
{KK 	
_RR 
=RR 
TaskRR 
.RR 
RunRR 
(RR 
asyncRR 
(RR  
)RR  !
=>RR" $
{SS 
awaitTT 
ExecuteAsyncTT "
(TT" #
cancellationTokenTT# 4
:TT4 5
cancellationTokenTT6 G
)TTG H
.TTH I
ConfigureAwaitTTI W
(TTW X
falseTTX ]
)TT] ^
;TT^ _
}UU 
,UU 
cancellationTokenUU  
)UU  !
;UU! "
}VV 	
catchWW 
(WW 
	ExceptionWW 
exWW 
)WW 
{XX 	
_loggerYY 
.YY 
LogErrorYY 
(YY 
$strYY z
,YYz {
exYY| ~
.YY~ 
ToString	YY á
(
YYá à
)
YYà â
)
YYâ ä
;
YYä ã
}ZZ 	
}[[ 
}\\ †
uC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\K8sInfoService.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
;2 3
internal 
class	 
K8sInfoService 
: 
IK8sInfoService  /
{		 
private

 
readonly

 !
IK8sEnvironmentHolder

 *!
_k8SEnvironmentHolder

+ @
;

@ A
public 

K8sInfoService 
( !
IK8sEnvironmentHolder / 
k8SEnvironmentHolder0 D
)D E
{ !
_k8SEnvironmentHolder 
=  
k8SEnvironmentHolder  4
??5 7
throw8 =
new> A!
ArgumentNullExceptionB W
(W X
nameofX ^
(^ _ 
k8SEnvironmentHolder_ s
)s t
)t u
;u v
} 
public 

bool 
TryGetK8sInfo 
( 
out !
IK8sEnvironment" 1
?1 2
k8sInfo3 :
): ;
{ 
k8sInfo 
= 
null 
; 
if 

( !
_k8SEnvironmentHolder !
?! "
." #
K8sEnvironment# 1
is2 4
null5 9
)9 :
{ 	
return 
false 
; 
} 	
if 

( !
_k8SEnvironmentHolder !
.! "
K8sEnvironment" 0
is1 3
K8sEnvironment4 B
	envRecordC L
&&M O
	envRecordP Y
isZ \
not] `
nulla e
)e f
{ 	
k8sInfo 
= 
	envRecord 
with  $
{% &
}' (
;( )
} 	
return   
k8sInfo   
is   
not   
null   "
;  " #
}!! 
}"" ‰
yC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\K8sInfoServiceStub.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
;2 3
internal 
class	 
K8sInfoServiceStub !
:" #
IK8sInfoService$ 3
{ 
public		 

bool		 
TryGetK8sInfo		 
(		 
out		 !
IK8sEnvironment		" 1
?		1 2
k8sInfo		3 :
)		: ;
{

 
k8sInfo 
= 
null 
; 
return 
false 
; 
} 
} ¸
íC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\Pods\EnvironmentVariablePodNameProviderBase.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
.2 3
Pods3 7
;7 8
internal		 
abstract			 
class		 2
&EnvironmentVariablePodNameProviderBase		 >
:		? @
IPodNameProvider		A Q
{

 
private 
readonly 
string $
_environmentVariableName 4
;4 5
private 
readonly 9
-ApplicationInsightsKubernetesDiagnosticSource B
_loggerC J
=K L9
-ApplicationInsightsKubernetesDiagnosticSourceM z
.z {
Instance	{ É
;
É Ñ
public 
2
&EnvironmentVariablePodNameProviderBase 1
(1 2
string2 8#
environmentVariableName9 P
)P Q
{ 
if 

( 
string 
. 
IsNullOrEmpty  
(  !#
environmentVariableName! 8
)8 9
)9 :
{ 	
throw 
new 
ArgumentException '
(' (
$"( *
$str* +
{+ ,
nameof, 2
(2 3#
environmentVariableName3 J
)J K
}K L
$strL f
"f g
,g h
nameofi o
(o p$
environmentVariableName	p á
)
á à
)
à â
;
â ä
} 	$
_environmentVariableName  
=! "#
environmentVariableName# :
;: ;
} 
public 

bool 
TryGetPodName 
( 
out !
string" (
podName) 0
)0 1
{ 
podName 
= 
Environment 
. "
GetEnvironmentVariable 4
(4 5$
_environmentVariableName5 M
)M N
??O Q
stringR X
.X Y
EmptyY ^
;^ _
_logger 
. 
LogDebug 
( 
$" 
$str H
{H I$
_environmentVariableNameI a
}a b
$strb l
{l m
podNamem t
}t u
"u v
)v w
;w x
return 
! 
string 
. 
IsNullOrEmpty $
($ %
podName% ,
), -
;- .
} 
} ∑
ÉC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\Pods\HostNamePodNameProvider.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
.2 3
Pods3 7
;7 8
internal 
class	 #
HostNamePodNameProvider &
:' (2
&EnvironmentVariablePodNameProviderBase) O
{ 
internal 
const 
string 
VariableName &
=' (
$str) 3
;3 4
public 
#
HostNamePodNameProvider "
(" #
)# $
:% &
base' +
(+ ,
VariableName, 8
)8 9
{ 
} 
}		 é
{C:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\Pods\IPodInfoManager.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
.2 3
Pods3 7
;7 8
internal 
	interface	 
IPodInfoManager "
{ 
Task 
< 	
V1Pod	 
> $
WaitUntilMyPodReadyAsync (
(( )
CancellationToken) :
cancellationToken; L
)L M
;M N
Task 
< 	
V1Pod	 
? 
> 
GetMyPodAsync 
( 
CancellationToken 0
cancellationToken1 B
)B C
;C D
Task 
< 	
V1Pod	 
? 
> 
GetPodByNameAsync "
(" #
string# )
podName* 1
,1 2
CancellationToken3 D
cancellationTokenE V
)V W
;W X
bool !
TryGetContainerStatus	 
( 
V1Pod $
pod% (
,( )
string* 0
?0 1
containerId2 =
,= >
out? B
V1ContainerStatusC T
?T U
containerStatusV e
)e f
;f g
} ®
|C:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\Pods\IPodNameProvider.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
.2 3
Pods3 7
;7 8
internal 
	interface	 
IPodNameProvider #
{ 
bool 
TryGetPodName	 
( 
out 
string !
podName" )
)) *
;* +
} ˛`
zC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\Pods\PodInfoManager.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
.2 3
Pods3 7
;7 8
internal 
class	 
PodInfoManager 
: 
IPodInfoManager  /
{ 
private 
readonly 
IK8sClientService &

_k8SClient' 1
;1 2
private 
readonly 
IContainerIdHolder '
_containerIdHolder( :
;: ;
private 
readonly 
IEnumerable  
<  !
IPodNameProvider! 1
>1 2
_podNameProviders3 D
;D E
private 
readonly 9
-ApplicationInsightsKubernetesDiagnosticSource B
_loggerC J
=K L9
-ApplicationInsightsKubernetesDiagnosticSourceM z
.z {
Instance	{ É
;
É Ñ
public 

PodInfoManager 
( 
IK8sClientService 
	k8sClient #
,# $
IContainerIdHolder 
containerIdHolder ,
,, -
IEnumerable 
< 
IPodNameProvider $
>$ %
podNameProviders& 6
)6 7
{ 

_k8SClient 
= 
	k8sClient 
?? !
throw" '
new( +!
ArgumentNullException, A
(A B
nameofB H
(H I
	k8sClientI R
)R S
)S T
;T U
_containerIdHolder 
= 
containerIdHolder .
??/ 1
throw2 7
new8 ;!
ArgumentNullException< Q
(Q R
nameofR X
(X Y
containerIdHolderY j
)j k
)k l
;l m
_podNameProviders 
= 
podNameProviders ,
??- /
throw0 5
new6 9
System: @
.@ A!
ArgumentNullExceptionA V
(V W
nameofW ]
(] ^
podNameProviders^ n
)n o
)o p
;p q
} 
public   

async   
Task   
<   
V1Pod   
?   
>   
GetMyPodAsync   +
(  + ,
CancellationToken  , =
cancellationToken  > O
)  O P
{!! 
string"" 
podName"" 
="" 
string"" 
.""  
Empty""  %
;""% &
foreach## 
(## 
IPodNameProvider## !
podNameProvider##" 1
in##2 4
_podNameProviders##5 F
)##F G
{$$ 	
_logger%% 
.%% 
LogDebug%% 
(%% 
$"%% 
$str%% =
{%%= >
podNameProvider%%> M
.%%M N
GetType%%N U
(%%U V
)%%V W
.%%W X
Name%%X \
}%%\ ]
"%%] ^
)%%^ _
;%%_ `
if&& 
(&& 
podNameProvider&& 
.&&  
TryGetPodName&&  -
(&&- .
out&&. 1
podName&&2 9
)&&9 :
)&&: ;
{'' 
break)) 
;)) 
}** 
}++ 	
_logger,, 
.,, 
LogDebug,, 
(,, 
$",, 
$str,, 2
{,,2 3
podName,,3 :
},,: ;
",,; <
),,< =
;,,= >
if// 

(// 
!// 
string// 
.// 
IsNullOrEmpty// !
(//! "
podName//" )
)//) *
)//* +
{00 	
V1Pod11 
?11 
	targetPod11 
=11 
await11 $
GetPodByNameAsync11% 6
(116 7
podName117 >
,11> ?
cancellationToken11@ Q
)11Q R
.11R S
ConfigureAwait11S a
(11a b
false11b g
)11g h
;11h i
if22 
(22 
	targetPod22 
is22 
not22  
null22! %
)22% &
{33 
_logger44 
.44 
LogDebug44  
(44  !
$"44! #
$str44# @
{44@ A
	targetPod44A J
.44J K
Metadata44K S
?44S T
.44T U
Name44U Y
}44Y Z
"44Z [
)44[ \
;44\ ]
return55 
	targetPod55  
;55  !
}66 
}77 	
else88 
{99 	
_logger:: 
.:: 
LogTrace:: 
(:: 
$str:: D
)::D E
;::E F
};; 	
string>> 
?>> 
myContainerId>> 
=>> 
_containerIdHolder>>  2
.>>2 3
ContainerId>>3 >
;>>> ?
_logger?? 
.?? 
LogDebug?? 
(?? 
$"?? 
$str?? A
{??A B
myContainerId??B O
}??O P
"??P Q
)??Q R
;??R S
ifAA 

(AA 
!AA 
stringAA 
.AA 
IsNullOrEmptyAA !
(AA! "
myContainerIdAA" /
)AA/ 0
)AA0 1
{BB 	
V1PodCC 
?CC 
	targetPodCC 
=CC 
nullCC #
;CC# $
IEnumerableDD 
<DD 
V1PodDD 
>DD 
allPodsDD &
=DD' (
awaitDD) .

_k8SClientDD/ 9
.DD9 :
GetPodsAsyncDD: F
(DDF G
cancellationTokenDDG X
:DDX Y
cancellationTokenDDZ k
)DDk l
.DDl m
ConfigureAwaitDDm {
(DD{ |
false	DD| Å
)
DDÅ Ç
;
DDÇ É
	targetPodEE 
=EE 
allPodsEE 
.EE  
FirstOrDefaultEE  .
(EE. /
podEE/ 2
=>EE3 5!
TryGetContainerStatusEE6 K
(EEK L
podEEL O
,EEO P
myContainerIdEEQ ^
,EE^ _
outEE` c
_EEd e
)EEe f
)EEf g
;EEg h
ifGG 
(GG 
	targetPodGG 
isGG 
notGG  
nullGG! %
)GG% &
{HH 
_loggerII 
.II 
LogInformationII &
(II& '
$"II' )
$strII) N
{IIN O
	targetPodIIO X
.IIX Y
MetadataIIY a
?IIa b
.IIb c
NameIIc g
}IIg h
"IIh i
)IIi j
;IIj k
returnJJ 
	targetPodJJ  
;JJ  !
}KK 
}LL 	
elseMM 
{NN 	
_loggerOO 
.OO 
LogTraceOO 
(OO 
$strOO S
)OOS T
;OOT U
}PP 	
_loggerRR 
.RR 
LogErrorRR 
(RR 
$strRR 8
)RR8 9
;RR9 :
returnSS 
nullSS 
;SS 
}TT 
publicWW 

TaskWW 
<WW 
V1PodWW 
?WW 
>WW 
GetPodByNameAsyncWW )
(WW) *
stringWW* 0
podNameWW1 8
,WW8 9
CancellationTokenWW: K
cancellationTokenWWL ]
)WW] ^
=>XX 


_k8SClientXX 
.XX 
GetPodByNameAsyncXX '
(XX' (
podNameXX( /
,XX/ 0
cancellationTokenXX1 B
)XXB C
;XXC D
publicZZ 

boolZZ !
TryGetContainerStatusZZ %
(ZZ% &
V1PodZZ& +
podZZ, /
,ZZ/ 0
stringZZ1 7
?ZZ7 8
containerIdZZ9 D
,ZZD E
outZZF I
V1ContainerStatusZZJ [
?ZZ[ \
containerStatusZZ] l
)ZZl m
{[[ 
containerStatus\\ 
=\\ 
string\\  
.\\  !
IsNullOrEmpty\\! .
(\\. /
containerId\\/ :
)\\: ;
?\\< =
null\\> B
:]] 
pod]] 
.]] 
Status]]  
?]]  !
.]]! "
ContainerStatuses]]" 3
?]]3 4
.]]4 5
FirstOrDefault]]5 C
(]]C D
status__ 
=>__ !
!__" #
string__# )
.__) *
IsNullOrEmpty__* 7
(__7 8
status__8 >
.__> ?
ContainerID__? J
)__J K
&&__L N
status__O U
.__U V
ContainerID__V a
.__a b
IndexOf__b i
(__i j
containerId__j u
,__u v
StringComparison	__w á
.
__á à
OrdinalIgnoreCase
__à ô
)
__ô ö
!=
__õ ù
-
__û ü
$num
__ü †
)
__† °
;
__° ¢
returnaa 
containerStatusaa 
isaa !
notaa" %
nullaa& *
;aa* +
}bb 
publicee 

asyncee 
Taskee 
<ee 
V1Podee 
>ee $
WaitUntilMyPodReadyAsyncee 5
(ee5 6
CancellationTokenee6 G
cancellationTokeneeH Y
)eeY Z
{ff 
	Stopwatchgg 
	stopwatchgg 
=gg 
newgg !
	Stopwatchgg" +
(gg+ ,
)gg, -
;gg- .
	stopwatchhh 
.hh 
Starthh 
(hh 
)hh 
;hh 
V1Podjj 
?jj 
myPodjj 
=jj 
nulljj 
;jj 
whilell 
(ll 
truell 
)ll 
{mm 	
cancellationTokennn 
.nn (
ThrowIfCancellationRequestednn :
(nn: ;
)nn; <
;nn< =
tryoo 
{pp 
myPodqq 
=qq 
awaitqq 
GetMyPodAsyncqq +
(qq+ ,
cancellationTokenqq, =
)qq= >
.qq> ?
ConfigureAwaitqq? M
(qqM N
falseqqN S
)qqS T
;qqT U
}rr 
catchss 
(ss 
	Exceptionss 
exss 
)ss  
whenss! %
(ss& '
exss' )
isss* ,
notss- 0"
HttpOperationExceptionss1 G
||ssH J
(ssK L
exssL N
isssO Q"
HttpOperationExceptionssR h
operationExceptionssi {
&&ss| ~
operationException	ss ë
.
ssë í
Response
ssí ö
.
ssö õ

StatusCode
ssõ •
!=
ss¶ ®
HttpStatusCode
ss© ∑
.
ss∑ ∏
	Forbidden
ss∏ ¡
)
ss¡ ¬
)
ss¬ √
{tt 
_loggeruu 
.uu 

LogWarninguu "
(uu" #
$"uu# %
$struu% S
{uuS T
exuuT V
.uuV W
MessageuuW ^
}uu^ _
"uu_ `
)uu` a
;uua b
_loggervv 
.vv 
LogTracevv  
(vv  !
exvv! #
.vv# $
ToStringvv$ ,
(vv, -
)vv- .
)vv. /
;vv/ 0
}ww 
	stopwatchyy 
.yy 
Stopyy 
(yy 
)yy 
;yy 
ifzz 
(zz 
myPodzz 
iszz 
notzz 
nullzz !
)zz! "
{{{ 
_logger|| 
.|| 
LogDebug||  
(||  !
FormattableString||! 2
.||2 3
	Invariant||3 <
(||< =
$"||= ?
$str||? Z
{||Z [
	stopwatch||[ d
.||d e
ElapsedMilliseconds||e x
}||x y
$str||y }
"||} ~
)||~ 
)	|| Ä
;
||Ä Å
return}} 
myPod}} 
;}} 
}~~ 
await
ÖÖ 
Task
ÖÖ 
.
ÖÖ 
Delay
ÖÖ 
(
ÖÖ 
TimeSpan
ÖÖ %
.
ÖÖ% &
FromMilliseconds
ÖÖ& 6
(
ÖÖ6 7
$num
ÖÖ7 :
)
ÖÖ: ;
,
ÖÖ; <
cancellationToken
ÖÖ= N
:
ÖÖN O
cancellationToken
ÖÖP a
)
ÖÖa b
.
ÖÖb c
ConfigureAwait
ÖÖc q
(
ÖÖq r
false
ÖÖr w
)
ÖÖw x
;
ÖÖx y
}
ÜÜ 	
}
áá 
}àà •
ÇC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\Pods\UserSetPodNameProvider.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
.2 3
Pods3 7
;7 8
internal 
class	 "
UserSetPodNameProvider %
:& '2
&EnvironmentVariablePodNameProviderBase( N
{ 
public 
"
UserSetPodNameProvider !
(! "
)" #
:$ %
base& *
(* +
$str+ L
)L M
{ 
} 
} •
èC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\TelemetryInitializers\ITelemetryKeyCache.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
{ 
internal 
	interface 
ITelemetryKeyCache )
{ 
string 
GetProcessedKey 
( 
string %
originalKey& 1
)1 2
;2 3
} 
} ®a
õC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\TelemetryInitializers\KubernetesTelemetryInitializer.cs
	namespace

 	
	Microsoft


 
.

 
ApplicationInsights

 '
.

' (

Kubernetes

( 2
;

2 3
internal 
class	 *
KubernetesTelemetryInitializer -
:. /!
ITelemetryInitializer0 E
{ 
private 
static 
readonly 9
-ApplicationInsightsKubernetesDiagnosticSource I
_loggerJ Q
=R S:
-ApplicationInsightsKubernetesDiagnosticSource	T Å
.
Å Ç
Instance
Ç ä
;
ä ã
private 
readonly 
SDKVersionUtils $
_sdkVersionUtils% 5
;5 6
internal !
IK8sEnvironmentHolder " 
K8SEnvironmentHolder# 7
{8 9
get: =
;= >
}? @
internal 
ITelemetryKeyCache 
TelemetryKeyCache  1
{2 3
get4 7
;7 8
}9 :
public 
*
KubernetesTelemetryInitializer )
() *!
IK8sEnvironmentHolder  
k8sEnvironmentHolder 2
,2 3
SDKVersionUtils 
sdkVersionUtils '
,' (
ITelemetryKeyCache 
telemetryKeyCache ,
), -
{ 
TelemetryKeyCache 
= 
telemetryKeyCache -
??. 0
throw1 6
new7 :!
ArgumentNullException; P
(P Q
nameofQ W
(W X
telemetryKeyCacheX i
)i j
)j k
;k l 
K8SEnvironmentHolder 
=  
k8sEnvironmentHolder 3
??4 6
throw7 <
new= @!
ArgumentNullExceptionA V
(V W
nameofW ]
(] ^ 
k8sEnvironmentHolder^ r
)r s
)s t
;t u
_sdkVersionUtils 
= 
sdkVersionUtils *
??+ -
throw. 3
new4 7!
ArgumentNullException8 M
(M N
nameofN T
(T U
sdkVersionUtilsU d
)d e
)e f
;f g
} 
public   

void   

Initialize   
(   

ITelemetry   %
	telemetry  & /
)  / 0
{!! 
IK8sEnvironment"" 
?"" 
k8sEnv"" 
=""  ! 
K8SEnvironmentHolder""" 6
.""6 7
K8sEnvironment""7 E
;""E F
if$$ 

($$ 
k8sEnv$$ 
!=$$ 
null$$ 
)$$ 
{%% 	
_logger&& 
.&& 
LogTrace&& 
(&& 
$str&& d
,&&d e
k8sEnv&&f l
.&&l m
PodName&&m t
)&&t u
;&&u v
try'' 
{(( 
InitializeTelemetry)) #
())# $
	telemetry))$ -
,))- .
k8sEnv))/ 5
)))5 6
;))6 7
}** 
catch,, 
(,, 
	Exception,, 
ex,, 
),,  
{-- 
_logger.. 
... 
LogError..  
(..  !
ex..! #
...# $
ToString..$ ,
(.., -
)..- .
)... /
;../ 0
}// 
}11 	
else22 
{33 	
_logger44 
.44 
LogTrace44 
(44 
$str	44 É
)
44É Ñ
;
44Ñ Ö
}55 	
	telemetry77 
.77 
Context77 
.77 
GetInternalContext77 ,
(77, -
)77- .
.77. /

SdkVersion77/ 9
=77: ;
_sdkVersionUtils77< L
.77L M
CurrentSDKVersion77M ^
;77^ _
}88 
private:: 
void:: 
InitializeTelemetry:: $
(::$ %

ITelemetry::% /
	telemetry::0 9
,::9 :
IK8sEnvironment::; J
k8sEnv::K Q
)::Q R
{;; 
if== 

(== 
string== 
.== 
IsNullOrEmpty==  
(==  !
	telemetry==! *
.==* +
Context==+ 2
.==2 3
Cloud==3 8
.==8 9
RoleName==9 A
)==A B
)==B C
{>> 	
	telemetry?? 
.?? 
Context?? 
.?? 
Cloud?? #
.??# $
RoleName??$ ,
=??- .
k8sEnv??/ 5
.??5 6
ContainerName??6 C
;??C D
}@@ 	
ifBB 

(BB 
	telemetryBB 
isBB 
ISupportPropertiesBB +
propertySetterBB, :
)BB: ;
{CC 	
SetCustomDimensionsDD 
(DD  
propertySetterDD  .
,DD. /
k8sEnvDD0 6
)DD6 7
;DD7 8
}EE 	
elseFF 
{GG 	
_loggerHH 
.HH 
LogTraceHH 
(HH 
$strHH Z
)HHZ [
;HH[ \
}II 	
_loggerJJ 
.JJ 
LogTraceJJ 
(JJ 
$strJJ 8
)JJ8 9
;JJ9 :
}KK 
privateMM 
voidMM 
SetCustomDimensionsMM $
(MM$ %
ISupportPropertiesMM% 7
	telemetryMM8 A
,MMA B
IK8sEnvironmentMMC R
k8sEnvironmentMMS a
)MMa b
{NN 
SetCustomDimensionPP 
(PP 
	telemetryPP $
,PP$ %
	ContainerPP& /
.PP/ 0
IDPP0 2
,PP2 3
k8sEnvironmentPP4 B
.PPB C
ContainerIDPPC N
,PPN O
isValueOptionalPPP _
:PP_ `
truePPa e
)PPe f
;PPf g
SetCustomDimensionQQ 
(QQ 
	telemetryQQ $
,QQ$ %
	ContainerQQ& /
.QQ/ 0
NameQQ0 4
,QQ4 5
k8sEnvironmentQQ6 D
.QQD E
ContainerNameQQE R
,QQR S
isValueOptionalQQT c
:QQc d
trueQQe i
)QQi j
;QQj k
SetCustomDimensionTT 
(TT 
	telemetryTT $
,TT$ %
PodTT& )
.TT) *
IDTT* ,
,TT, -
k8sEnvironmentTT. <
.TT< =
PodIDTT= B
)TTB C
;TTC D
SetCustomDimensionUU 
(UU 
	telemetryUU $
,UU$ %
PodUU& )
.UU) *
NameUU* .
,UU. /
k8sEnvironmentUU0 >
.UU> ?
PodNameUU? F
)UUF G
;UUG H
SetCustomDimensionVV 
(VV 
	telemetryVV $
,VV$ %
PodVV& )
.VV) *
LabelsVV* 0
,VV0 1
k8sEnvironmentVV2 @
.VV@ A
	PodLabelsVVA J
,VVJ K
isValueOptionalVVL [
:VV[ \
trueVV] a
)VVa b
;VVb c
SetCustomDimensionWW 
(WW 
	telemetryWW $
,WW$ %
PodWW& )
.WW) *
	NamespaceWW* 3
,WW3 4
k8sEnvironmentWW5 C
.WWC D
PodNamespaceWWD P
,WWP Q
isValueOptionalWWR a
:WWa b
trueWWc g
)WWg h
;WWh i
SetCustomDimension[[ 
([[ 
	telemetry[[ $
,[[$ %

ReplicaSet[[& 0
.[[0 1
Name[[1 5
,[[5 6
k8sEnvironment[[7 E
.[[E F
ReplicaSetName[[F T
,[[T U
isValueOptional[[V e
:[[e f
true[[g k
)[[k l
;[[l m
SetCustomDimension^^ 
(^^ 
	telemetry^^ $
,^^$ %

Deployment^^& 0
.^^0 1
Name^^1 5
,^^5 6
k8sEnvironment^^7 E
.^^E F
DeploymentName^^F T
,^^T U
isValueOptional^^V e
:^^e f
true^^g k
)^^k l
;^^l m
SetCustomDimensionaa 
(aa 
	telemetryaa $
,aa$ %
Nodeaa& *
.aa* +
IDaa+ -
,aa- .
k8sEnvironmentaa/ =
.aa= >
NodeUidaa> E
,aaE F
isValueOptionalaaG V
:aaV W
trueaaX \
)aa\ ]
;aa] ^
SetCustomDimensionbb 
(bb 
	telemetrybb $
,bb$ %
Nodebb& *
.bb* +
Namebb+ /
,bb/ 0
k8sEnvironmentbb1 ?
.bb? @
NodeNamebb@ H
,bbH I
isValueOptionalbbJ Y
:bbY Z
truebb[ _
)bb_ `
;bb` a
}cc 
privateee 
voidee 
SetCustomDimensionee #
(ee# $
ISupportPropertiesee$ 6
	telemetryee7 @
,ee@ A
stringeeB H
keyeeI L
,eeL M
stringeeN T
?eeT U
valueeeV [
,ee[ \
boolee] a
isValueOptionaleeb q
=eer s
falseeet y
)eey z
{ff 
keygg 
=gg 
TelemetryKeyCachegg 
.gg  
GetProcessedKeygg  /
(gg/ 0
keygg0 3
)gg3 4
;gg4 5
ifii 

(ii 
	telemetryii 
isii 
nullii 
)ii 
{jj 	
_loggerkk 
.kk 
LogErrorkk 
(kk 
$strkk Q
)kkQ R
;kkR S
returnll 
;ll 
}mm 	
ifoo 

(oo 
stringoo 
.oo 
IsNullOrEmptyoo  
(oo  !
keyoo! $
)oo$ %
)oo% &
{pp 	
_loggerqq 
.qq 
LogErrorqq 
(qq 
$strqq G
)qqG H
;qqH I
returnrr 
;rr 
}ss 	
ifuu 

(uu 
stringuu 
.uu 
IsNullOrEmptyuu  
(uu  !
valueuu! &
)uu& '
)uu' (
{vv 	
ifww 
(ww 
isValueOptionalww 
)ww  
{xx 
_loggeryy 
.yy 
LogTraceyy  
(yy  !
$stryy! F
,yyF G
keyyyH K
)yyK L
;yyL M
}zz 
else{{ 
{|| 
_logger}} 
.}} 
LogError}}  
(}}  !
$str}}! V
,}}V W
key}}X [
)}}[ \
;}}\ ]
}~~ 
return 
; 
}
ÄÄ 	
if
ÇÇ 

(
ÇÇ 
!
ÇÇ 
	telemetry
ÇÇ 
.
ÇÇ 

Properties
ÇÇ !
.
ÇÇ! "
ContainsKey
ÇÇ" -
(
ÇÇ- .
key
ÇÇ. 1
)
ÇÇ1 2
)
ÇÇ2 3
{
ÉÉ 	
	telemetry
ÑÑ 
.
ÑÑ 

Properties
ÑÑ  
.
ÑÑ  !
Add
ÑÑ! $
(
ÑÑ$ %
key
ÑÑ% (
,
ÑÑ( )
value
ÑÑ* /
)
ÑÑ/ 0
;
ÑÑ0 1
}
ÖÖ 	
else
ÜÜ 
{
áá 	
string
àà 
existingValue
àà  
=
àà! "
	telemetry
àà# ,
.
àà, -

Properties
àà- 7
[
àà7 8
key
àà8 ;
]
àà; <
;
àà< =
if
ââ 
(
ââ 
string
ââ 
.
ââ 
Equals
ââ 
(
ââ 
existingValue
ââ +
,
ââ+ ,
value
ââ- 2
,
ââ2 3
System
ââ4 :
.
ââ: ;
StringComparison
ââ; K
.
ââK L
OrdinalIgnoreCase
ââL ]
)
ââ] ^
)
ââ^ _
{
ää 
_logger
ãã 
.
ãã 
LogTrace
ãã  
(
ãã  !
$str
ãã! q
,
ããq r
key
ããs v
,
ããv w
existingValueããx Ö
)ããÖ Ü
;ããÜ á
}
åå 
else
çç 
{
éé 
	telemetry
èè 
.
èè 

Properties
èè $
[
èè$ %
key
èè% (
]
èè( )
=
èè* +
value
èè, 1
;
èè1 2
_logger
êê 
.
êê 
LogDebug
êê  
(
êê  !
$str
êê! {
,
êê{ |
keyêê} Ä
,êêÄ Å
existingValueêêÇ è
,êêè ê
valueêêë ñ
)êêñ ó
;êêó ò
}
ëë 
}
íí 	
}
ìì 
}îî …
éC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\TelemetryInitializers\TelemetryKeyCache.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
{ 
internal		 
class		 
TelemetryKeyCache		 $
:		% &
ITelemetryKeyCache		' 9
{

 
private 
readonly +
AppInsightsForKubernetesOptions 8
_options9 A
;A B
private 
readonly  
ConcurrentDictionary -
<- .
string. 4
,4 5
string6 <
>< =
?= >
_telemetryKeyCache? Q
=R S
nullT X
;X Y
private 
static 
readonly 9
-ApplicationInsightsKubernetesDiagnosticSource  M
_loggerN U
=V W:
-ApplicationInsightsKubernetesDiagnosticSource	X Ö
.
Ö Ü
Instance
Ü é
;
é è
public 
TelemetryKeyCache  
(  !
IOptions! )
<) *+
AppInsightsForKubernetesOptions* I
>I J
optionsK R
)R S
{ 	
_options 
= 
options 
? 
.  
Value  %
??& (
throw) .
new/ 2
System3 9
.9 :!
ArgumentNullException: O
(O P
nameofP V
(V W
optionsW ^
)^ _
)_ `
;` a
if 
( 
_options 
. !
TelemetryKeyProcessor .
is/ 1
not2 5
null6 :
): ;
{ 
_telemetryKeyCache "
=# $
new% ( 
ConcurrentDictionary) =
<= >
string> D
,D E
stringF L
>L M
(M N
)N O
;O P
} 
} 	
public 
string 
GetProcessedKey %
(% &
string& ,
originalKey- 8
)8 9
{ 	
Func 
< 
string 
, 
string 
>  
?  !!
telemetryKeyProcessor" 7
=8 9
_options: B
.B C!
TelemetryKeyProcessorC X
;X Y
if 
( !
telemetryKeyProcessor %
is& (
null) -
)- .
{ 
return 
originalKey "
;" #
}   
if"" 
("" 
_telemetryKeyCache"" "
is""# %
null""& *
)""* +
{## 
_logger$$ 
.$$ 

LogWarning$$ "
($$" #
$"$$# %
$str$$% )
{$$) *
nameof$$* 0
($$0 1!
telemetryKeyProcessor$$1 F
)$$F G
}$$G H
$str$$H [
{$$[ \
nameof$$\ b
($$b c
_telemetryKeyCache$$c u
)$$u v
}$$v w
$str	$$w ô
"
$$ô ö
)
$$ö õ
;
$$õ ú
return%% 
originalKey%% "
;%%" #
}&& 
return(( 
_telemetryKeyCache(( %
.((% &
GetOrAdd((& .
(((. /
originalKey((/ :
,((: ;
valueFactory((< H
:((H I
_options((J R
.((R S!
TelemetryKeyProcessor((S h
)((h i
;((i j
})) 	
}** 
}++ ˙<
éC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\TelemetryInitializers\TelemetryProperty.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
{ 
internal 
static 
class 
TelemetryProperty +
{ 
private 
static 
class 
Constant %
{ 	
public		 
const		 
string		 
	Container		  )
=		* +
$str		, 7
;		7 8
public

 
const

 
string

 

Deployment

  *
=

+ ,
$str

- 9
;

9 :
public 
const 
string 
K8s  #
=$ %
$str& 2
;2 3
public 
const 
string 
Node  $
=% &
$str' -
;- .
public 
const 
string 
Pod  #
=$ %
$str& +
;+ ,
public 
const 
string 

ReplicaSet  *
=+ ,
$str- 9
;9 :
public 
const 
string 
ProcessString  -
=. /
$str0 9
;9 :
public 
const 
string 
ID  "
=# $
$str% )
;) *
public 
const 
string 
Name  $
=% &
$str' -
;- .
public 
const 
string 
Labels  &
=' (
$str) 1
;1 2
public 
const 
string 
	Namespace  )
=* +
$str, 7
;7 8
public 
const 
string 
CPU  #
=$ %
$str& +
;+ ,
public 
const 
string 
Memory  &
=' (
$str) 1
;1 2
} 	
public 
static 
class 
	Container %
{ 	
public 
static 
readonly "
string# )
ID* ,
=- .
	Invariant/ 8
(8 9
$"9 ;
{; <
Constant< D
.D E
K8sE H
}H I
$strI J
{J K
ConstantK S
.S T
	ContainerT ]
}] ^
$str^ _
{_ `
Constant` h
.h i
IDi k
}k l
"l m
)m n
;n o
public 
static 
readonly "
string# )
Name* .
=/ 0
	Invariant1 :
(: ;
$"; =
{= >
Constant> F
.F G
K8sG J
}J K
$strK L
{L M
ConstantM U
.U V
	ContainerV _
}_ `
$str` a
{a b
Constantb j
.j k
Namek o
}o p
"p q
)q r
;r s
} 	
public   
static   
class   
Pod   
{!! 	
public"" 
static"" 
readonly"" "
string""# )
ID""* ,
=""- .
	Invariant""/ 8
(""8 9
$"""9 ;
{""; <
Constant""< D
.""D E
K8s""E H
}""H I
$str""I J
{""J K
Constant""K S
.""S T
Pod""T W
}""W X
$str""X Y
{""Y Z
Constant""Z b
.""b c
ID""c e
}""e f
"""f g
)""g h
;""h i
public## 
static## 
readonly## "
string### )
Name##* .
=##/ 0
	Invariant##1 :
(##: ;
$"##; =
{##= >
Constant##> F
.##F G
K8s##G J
}##J K
$str##K L
{##L M
Constant##M U
.##U V
Pod##V Y
}##Y Z
$str##Z [
{##[ \
Constant##\ d
.##d e
Name##e i
}##i j
"##j k
)##k l
;##l m
public$$ 
static$$ 
readonly$$ "
string$$# )
Labels$$* 0
=$$1 2
	Invariant$$3 <
($$< =
$"$$= ?
{$$? @
Constant$$@ H
.$$H I
K8s$$I L
}$$L M
$str$$M N
{$$N O
Constant$$O W
.$$W X
Pod$$X [
}$$[ \
$str$$\ ]
{$$] ^
Constant$$^ f
.$$f g
Labels$$g m
}$$m n
"$$n o
)$$o p
;$$p q
public%% 
static%% 
readonly%% "
string%%# )
	Namespace%%* 3
=%%4 5
	Invariant%%6 ?
(%%? @
$"%%@ B
{%%B C
Constant%%C K
.%%K L
K8s%%L O
}%%O P
$str%%P Q
{%%Q R
Constant%%R Z
.%%Z [
Pod%%[ ^
}%%^ _
$str%%_ `
{%%` a
Constant%%a i
.%%i j
	Namespace%%j s
}%%s t
"%%t u
)%%u v
;%%v w
}&& 	
public(( 
static(( 
class(( 

ReplicaSet(( &
{)) 	
public** 
static** 
readonly** "
string**# )
Name*** .
=**/ 0
	Invariant**1 :
(**: ;
$"**; =
{**= >
Constant**> F
.**F G
K8s**G J
}**J K
$str**K L
{**L M
Constant**M U
.**U V

ReplicaSet**V `
}**` a
$str**a b
{**b c
Constant**c k
.**k l
Name**l p
}**p q
"**q r
)**r s
;**s t
}++ 	
public-- 
static-- 
class-- 

Deployment-- &
{.. 	
public// 
static// 
readonly// "
string//# )
Name//* .
=/// 0
	Invariant//1 :
(//: ;
$"//; =
{//= >
Constant//> F
.//F G
K8s//G J
}//J K
$str//K L
{//L M
Constant//M U
.//U V

Deployment//V `
}//` a
$str//a b
{//b c
Constant//c k
.//k l
Name//l p
}//p q
"//q r
)//r s
;//s t
}00 	
public22 
static22 
class22 
Node22  
{33 	
public44 
static44 
readonly44 "
string44# )
ID44* ,
=44- .
	Invariant44/ 8
(448 9
$"449 ;
{44; <
Constant44< D
.44D E
K8s44E H
}44H I
$str44I J
{44J K
Constant44K S
.44S T
Node44T X
}44X Y
$str44Y Z
{44Z [
Constant44[ c
.44c d
ID44d f
}44f g
"44g h
)44h i
;44i j
public55 
static55 
readonly55 "
string55# )
Name55* .
=55/ 0
	Invariant551 :
(55: ;
$"55; =
{55= >
Constant55> F
.55F G
K8s55G J
}55J K
$str55K L
{55L M
Constant55M U
.55U V
Node55V Z
}55Z [
$str55[ \
{55\ ]
Constant55] e
.55e f
Name55f j
}55j k
"55k l
)55l m
;55m n
}66 	
}77 
}88 Ã
ÖC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\Utilities\EnumerableExtensions.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
.2 3
	Utilities3 <
;< =
internal 
static	 
class  
EnumerableExtensions *
{ 
public 

static 
IEnumerable 
< 
T 
>  
NullAsEmpty! ,
<, -
T- .
>. /
(/ 0
this0 4
IEnumerable5 @
<@ A
TA B
>B C
?C D
targetE K
)K L
=>		 

target		 
??		 

Enumerable		 
.		  
Empty		  %
<		% &
T		& '
>		' (
(		( )
)		) *
;		* +
}

 Ë
ÅC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\Utilities\IItemsExtensions.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
.2 3
	Utilities3 <
;< =
internal 
static	 
class 
K8sItemsExtensions (
{ 
public 

static 
IEnumerable 
< 
T 
>  
AsEnumerable! -
<- .
T. /
>/ 0
(0 1
this1 5
IItems6 <
<< =
T= >
>> ?
?? @
itemsHolderA L
)L M
=> 

itemsHolder 
? 
. 
Items 
is  
null! %
?& '

Enumerable( 2
.2 3
Empty3 8
<8 9
T9 :
>: ;
(; <
)< =
:> ?
itemsHolder@ K
.K L
ItemsL Q
;Q R
} †
ÄC:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\Utilities\SDKVersionUtils.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
.2 3
	Utilities3 <
{ 
internal 
sealed 
class 
SDKVersionUtils )
{ 
private		 
SDKVersionUtils		 
(		  
)		  !
{		" #
}		$ %
public

 
static

 
SDKVersionUtils

 %
Instance

& .
{

/ 0
get

1 4
;

4 5
}

6 7
=

8 9
new

: =
SDKVersionUtils

> M
(

M N
)

N O
;

O P
public 
string 
CurrentSDKVersion '
{ 	
get 
{ 
if 
( 
string 
. 
IsNullOrEmpty (
(( )
_sdkVersion) 4
)4 5
)5 6
{ 
_sdkVersion 
=  !
$"" $
{$ %
SdkName% ,
}, -
$str- .
{. /
GetSDKVersion/ <
(< =
)= >
}> ?
"? @
;@ A
} 
return 
_sdkVersion "
;" #
} 
} 	
private 
static 
string 
GetSDKVersion +
(+ ,
), -
{ 	
Assembly 
assembly 
= 
typeof  &
(& '
SDKVersionUtils' 6
)6 7
.7 8
GetTypeInfo8 C
(C D
)D E
.E F
AssemblyF N
;N O
Version 
version 
= 
assembly &
.& '
GetName' .
(. /
)/ 0
.0 1
Version1 8
;8 9
return 
version 
. 
ToString #
(# $
)$ %
;% &
} 	
private!! 
const!! 
string!! 
SdkName!! $
=!!% &
$str!!' /
;!!/ 0
private"" 
string"" 
_sdkVersion"" "
=""# $
string""% +
.""+ ,
Empty"", 1
;""1 2
}$$ 
}%% ∏
|C:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes\Utilities\StringUtils.cs
	namespace 	
	Microsoft
 
. 
ApplicationInsights '
.' (

Kubernetes( 2
{ 
internal 
static 
class 
StringUtils %
{ 
public 
static 
string 
	Invariant &
(& '
FormattableString' 8
formattable9 D
)D E
{ 	
return		 
formattable		 
.		 
ToString		 '
(		' (
CultureInfo		( 3
.		3 4
InvariantCulture		4 D
)		D E
;		E F
}

 	
public 
static 
string 
GetReadableSize ,
(, -
this- 1
long2 6

numInBytes7 A
)A B
{ 	
double 
doubleBytes 
=  

numInBytes! +
;+ ,
string 
[ 
] 
sizes 
= 
{ 
$str "
," #
$str$ (
,( )
$str* .
,. /
$str0 4
,4 5
$str6 :
}; <
;< =
int 
order 
= 
$num 
; 
while 
( 
doubleBytes 
>= !
$num" &
&&' )
order* /
<0 1
sizes2 7
.7 8
Length8 >
-? @
$numA B
)B C
{ 
order 
++ 
; 
doubleBytes 
/= 
$num %
;% &
} 
return 
String 
. 
Format  
(  !
CultureInfo! ,
., -
InvariantCulture- =
,= >
$str? K
,K L
doubleBytesM X
,X Y
sizesZ _
[_ `
order` e
]e f
)f g
;g h
} 	
public 
static 
string #
EscapeForLoggingMessage 4
(4 5
this5 9
string: @
originalA I
)I J
{ 	
if 
( 
string 
. 
IsNullOrEmpty $
($ %
original% -
)- .
). /
{ 
return 
original 
;  
} 
return   
original   
.   
Replace   #
(  # $
$str  $ '
,  ' (
$str  ) -
,  - .
StringComparison  / ?
.  ? @
Ordinal  @ G
)  G H
.  H I
Replace  I P
(  P Q
$str  Q T
,  T U
$str  V Z
,  Z [
StringComparison  \ l
.  l m
Ordinal  m t
)  t u
;  u v
}!! 	
}"" 
}## 