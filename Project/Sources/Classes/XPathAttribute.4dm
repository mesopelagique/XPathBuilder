Class extends XPathExpression

Class constructor(/*String name*/)
	C_TEXT:C284($1)
	Super:C1705(cs:C1710.XPathFragment.new("@"+$1))
	
Function containing(/*String value*/)XPathFragment
	C_OBJECT:C1216($0)
	C_TEXT:C284($1)
	$0:=cs:C1710.XPathPredicate.new().static_containing($1).decorate(This:C1470)
	
Function static_id(/*String value*/)->XpathFragment
	C_OBJECT:C1216($0)
	C_TEXT:C284($1)
	$0:=cs:C1710.XPathAttribute.new("id").is($1)