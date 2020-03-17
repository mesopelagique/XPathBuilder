//%attributes = {}
Use (cs:C1710.XPathExpression)
	cs:C1710.XPathExpression.builder:=Null:C1517
End use 

  // Xoath
ASSERT:C1129(xpath .element("Book").toXPath()="/Book")

  // Leading Slash
ASSERT:C1129(xpath .any(xpath .element("Book")).toXPath()="//Book")

  // equalTo
ASSERT:C1129(xpath .element("bookstore").with(xpath .element("book").with(xpath .element("price").is("35.00"))).toXPath()="/bookstore/book[price='35.00']")