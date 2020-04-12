
Class constructor
	C_TEXT:C284($1)
	This:C1470.xpath:=$1
	
Function toXPath // ()
	C_TEXT:C284($0)
	$0:=This:C1470.xpath
	
Function decorateBy // (/*decorator*/)
	C_OBJECT:C1216($0;$1)
	$0:=$1.decorate(This:C1470)
	
