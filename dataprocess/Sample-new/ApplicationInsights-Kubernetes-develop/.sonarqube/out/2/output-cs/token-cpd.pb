õ	
C:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes.HostingStartup\ApplicationInsightsForK8sHostingStartup.cs
	namespace 	
ApplicationInsights
 
. 

Kubernetes (
.( )
HostingStartup) 7
{ 
public

 

class

 3
'ApplicationInsightsForK8sHostingStartup

 8
:

9 :
IHostingStartup

; J
{ 
public 
void 
	Configure 
( 
IWebHostBuilder -
builder. 5
)5 6
{ 	
builder 
. 
ConfigureServices %
(% &
(& '
cxt' *
,* +
services, 4
)4 5
=>6 8
{ 
services 
. +
AddApplicationInsightsTelemetry 8
(8 9
)9 :
;: ;
services 
. 4
(AddApplicationInsightsKubernetesEnricher A
(A B
diagnosticLogLevelB T
:T U
LogLevelV ^
.^ _
Warning_ f
)f g
;g h
} 
) 
; 
} 	
} 
} ç
‚C:\Users\zkus\Desktop\BAP\ApplicationInsights-Kubernetes-develop\src\ApplicationInsights.Kubernetes.HostingStartup\AssemblyInfo.cs
[ 
assembly 	
:	 

HostingStartup 
( 
typeof  
(  !3
'ApplicationInsightsForK8sHostingStartup! H
)H I
)I J
]J K