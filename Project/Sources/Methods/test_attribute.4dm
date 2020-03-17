//%attributes = {}
Use (cs:C1710.XPathExpression)
	cs:C1710.XPathExpression.builder:=Null:C1517
End use 

ASSERT:C1129(xpath .attribute("someAttribute").toXPath()="@someAttribute")

ASSERT:C1129(xpath .attribute("someAttribute").is("aValue").toXPath()="[@someAttribute='aValue']")

ASSERT:C1129(xpath .attribute("anAttribute").containing("someValue").toXPath()="[contains(@anAttribute,'someValue')]")
