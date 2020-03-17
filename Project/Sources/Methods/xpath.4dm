//%attributes = {"shared":true,"preemptive":"capable"}
C_OBJECT:C1216($0)

Use (cs:C1710.XPathExpression)
	If (cs:C1710.XPathExpression.builder=Null:C1517)
		cs:C1710.XPathExpression.builder:=New shared object:C1526()
		cs:C1710.XPathExpression.builder.predicate:=Formula:C1597(cs:C1710.XPathPredicate.new($1))
		cs:C1710.XPathExpression.builder.containing:=Formula:C1597(cs:C1710.XPathPredicate.new().static_containing($1))
		cs:C1710.XPathExpression.builder.index:=Formula:C1597(cs:C1710.XPathPredicate.new().static_index($1))
		cs:C1710.XPathExpression.builder.fragment:=Formula:C1597(cs:C1710.XPathFragment.new($1))
		cs:C1710.XPathExpression.builder.expression:=Formula:C1597(cs:C1710.XPathExpression.new($1))
		cs:C1710.XPathExpression.builder.attribute:=Formula:C1597(cs:C1710.XPathAttribute.new($1))
		cs:C1710.XPathExpression.builder.element:=Formula:C1597(cs:C1710.XPathElement.new($1))
		cs:C1710.XPathExpression.builder.any:=Formula:C1597(cs:C1710.XPathElement.new($1.toXPath()))
	End if 
End use 

$0:=cs:C1710.XPathExpression.builder
