Class extends XPathExpression

Class constructor(/*String predicate*/)
	C_TEXT:C284($1)
	Super:C1705(cs:C1710.XPathFragment.new("["+String:C10($1)+"]"))
	
Function static_containing(/*String value*/) XPathDecorator
	C_OBJECT:C1216($0)
	C_TEXT:C284($1;$value)
	$value:=$1
	$0:=cs:C1710.XPathDecorator.new(Formula:C1597(cs:C1710.XPathPredicate.new("contains("+$1.toXPath()+",'"+$value+"')")))
	
Function static_index(/*int index*/)XPathDecorator
	C_OBJECT:C1216($0)
	C_LONGINT:C283($1)
	C_OBJECT:C1216($predicate)
	$predicate:=cs:C1710.XPathPredicate.new(String:C10($1))
	$0:=cs:C1710.XPathDecorator.new(Formula:C1597(cs:C1710.XPathExpression.new(New collection:C1472($1;$predicate))))
	
Function static_equalTo(/*String value*/)
	C_OBJECT:C1216($0)
	C_TEXT:C284($1;$value)
	$value:=$1
	$0:=cs:C1710.XPathDecorator.new(Formula:C1597(cs:C1710.XPathPredicate.new(Replace string:C233($1.toXPath();"/";"")+"='"+$value+"'")))
	
	