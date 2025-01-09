# Tcl Bug: Incorrect String Comparison
This repository demonstrates a subtle bug in a Tcl procedure that arises from incorrect string comparison. The procedure `badproc` compares two arguments using `==`, which performs a string comparison.  This leads to unexpected behavior when one or both arguments are empty strings, which are interpreted as zero in the string comparison context. The corrected procedure uses `expr {$a == $b}` for numeric comparison which correctly handles empty strings as 0 in comparisons.

## Bug
The original code contains a comparison using `==` instead of `expr {$a == $b}` causing errors when dealing with empty string values.

## Solution
The solution corrects the comparison by using the `expr` command which ensures a true numeric comparison between the values regardless of whether they are empty strings or numbers.