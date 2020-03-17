//%attributes = {}
Use (cs:C1710.XPathExpression)
	cs:C1710.XPathExpression.builder:=Null:C1517
End use 

C_OBJECT:C1216($element;$attribute;$predicate)
$element:=xpath .element("Book")
$attribute:=xpath .attribute("lang")
$predicate:=xpath .predicate("2")

ASSERT:C1129(xpath .expression(New collection:C1472($element;$attribute;$predicate)).toXPath()="/Book@lang[2]")

C_OBJECT:C1216($xpathExpression)
$xpathExpression:=xpath .expression()
ASSERT:C1129($xpathExpression.with(xpath .element("Book")).toXPath()="/Book")

$xpathExpression:=xpath .expression(xpath .fragment("something")).atIndex(3)
ASSERT:C1129($xpathExpression.toXPath()="something[3]")
