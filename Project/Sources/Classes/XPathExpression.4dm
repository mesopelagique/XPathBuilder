Class extends XPathFragment

  // var xpathFragments: Collection

Class constructor
	Super:C1705()
	C_VARIANT:C1683($1)
	
	Case of 
		: (Value type:C1509($1)=Is collection:K8:32)
			This:C1470.xpathFragments:=$1
		: (Value type:C1509($1)=Is object:K8:27)
			This:C1470.xpathFragments:=New collection:C1472($1)
		Else 
			This:C1470.xpathFragments:=New collection:C1472()
	End case 
	
Function toXPath // ()  // implements XPathFragment
	C_TEXT:C284($0;$xpath)
	$xpath:=""
	C_OBJECT:C1216($xpathFragment)
	For each ($xpathFragment;This:C1470.xpathFragments)
		If ($xpathFragment#Null:C1517)
			$xpath:=$xpath+$xpathFragment.toXPath()
		Else 
			
		End if 
	End for each 
	$0:=$xpath
	
Function with // (/*XPathFragment xpathFragment*/)
	C_OBJECT:C1216($0;$1)
	This:C1470.xpathFragments.push($1)
	$0:=This:C1470
	
Function is //(/*String value*/)->XPathPredicate
	C_OBJECT:C1216($0)
	C_TEXT:C284($1)
	$0:=cs:C1710.XPathPredicate.new().static_equalTo($1).decorate(This:C1470)
	
Function atIndex // (/*int index*/)->XPathExpression
	C_OBJECT:C1216($0)
	C_LONGINT:C283($1)
	$0:=cs:C1710.XPathPredicate.new().static_index($1).decorate(This:C1470)
	
