proc goodproc {a b} {if {[expr {$a == $b}]} {return 1} {return 0}} 
#This version uses expr to perform a numerical comparison which fixes the bug.