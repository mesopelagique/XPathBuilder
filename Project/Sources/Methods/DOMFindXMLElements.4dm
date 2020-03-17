//%attributes = {"shared":true,"preemptive":"capable"}
C_TEXT:C284($1;$2;$first)
C_COLLECTION:C1488($0)
ARRAY TEXT:C222($arrAfound;0)
$first:=DOM Find XML element:C864($1;$2;$arrAfound)
$0:=New collection:C1472()
ARRAY TO COLLECTION:C1563($0;$arrAfound)