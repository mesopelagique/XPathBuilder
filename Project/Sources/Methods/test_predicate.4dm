//%attributes = {}


  // Put Contents In Square Bracket
ASSERT:C1129(xpath .predicate("1").toXPath()="[1]")

  // containing Will Return Equals Predicate Xpath
C_OBJECT:C1216($someFragment)
$someFragment:=xpath .fragment("something")
ASSERT:C1129(xpath .containing("aValue").decorate($someFragment).toXPath()="[contains(something,'aValue')]")

  // index Of Will Append Index Predicate To Xpath
ASSERT:C1129(xpath .index(2).decorate($someFragment).toXPath()="something[2]")

  // index Of Will Append Index Predicate To Xpath
ASSERT:C1129($someFragment.decorateBy(xpath .index(2)).toXPath()="something[2]")
