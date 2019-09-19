//: [Previous](@previous)
/*:
 
 ## CharacterClasses
 
 ### Character set
 [ABC]
 > Match any character in the set.
 */
import Foundation

regex(title: "Character set", text: "hat", pattern: "[a-z]at")
/*:
##### Output
{0, 3} hat
*/
/*:
 ### Nagated set
 [^ABC]
 > Match any character that is not in the set.
 */
regex(title: "Nagated set", text: "Assin!", pattern: "[^Assi]")
/*:
##### Output
{4, 1} n
{5, 1} !
*/
/*:
 ### Range
 [A-Z]
 > Matches a character having a character code between the two specified characters inclusive.
 */
regex(title: "Range", text: "abcdefghijklmnopqrstuvwxyz", pattern: "[g-s]")
/*:
##### Output
```
{6, 1} g
{7, 1} h
{8, 1} i
{9, 1} j
{10, 1} k
{11, 1} l
{12, 1} m
{13, 1} n
{14, 1} o
{15, 1} p
{16, 1} q
{17, 1} r
{18, 1} s
```
*/
/*:
 ### Dot
 .
 > Match any character. See dotMatchesLineSeparators and the s character expression in Table 4.
 */
regex(title: "Dot", text: "glib jocks v", pattern: ".")
/*:
##### Output
```
{0, 1} g
{1, 1} l
{2, 1} i
{3, 1} b
{4, 1}
{5, 1} j
{6, 1} o
{7, 1} c
{8, 1} k
{9, 1} s
{10, 1}
{11, 1} v
```
*/
/*:
 ### Match Any
 [\s\S]
 > \s   Match a white space character. White space is defined as [\t\n\f\r\p{Z}].
 
 > \S   Match a non-white space character.
  
 */
regex(title: "Match Any", text: "glib jocks v", pattern: "[\\s\\S]")

/*:
##### Output
```
{0, 1} g
{1, 1} l
{2, 1} i
{3, 1} b
{4, 1}
{5, 1} j
{6, 1} o
{7, 1} c
{8, 1} k
{9, 1} s
{10, 1}
{11, 1} v
```
*/
/*:
 ### Word
 \w
 > \w   Match a word character. Word characters are [\p{Ll}\p{Lu}\p{Lt}\p{Lo}\p{Nd}].
 */
regex(title: "Word", text: "bonjour, mon frère", pattern: "\\w")

/*:
##### Output
```
{0, 1} b
{1, 1} o
{2, 1} n
{3, 1} j
{4, 1} o
{5, 1} u
{6, 1} r
{9, 1} m
{10, 1} o
{11, 1} n
{13, 1} f
{14, 1} r
{15, 1} è
{16, 1} r
{17, 1} e
```
*/
/*:
 ### Not word
 \W
 > \W   Match a non-word character.

 */
regex(title: "Not Word", text: "bonjour, mon frère", pattern: "\\W")
/*:
 ### Digit
 \d
 > Matches any digit character (0-9). Equivalent to [0-9].

/*:
##### Output
```
{7, 1} ,
{8, 1}
{12, 1}
```
*/
 */
regex(title: "Digit", text: "+1-(444)-555-1234", pattern: "\\d")


/*:
 ##### Output
 ```
 {1, 1} 1
 {4, 1} 4
 {5, 1} 4
 {6, 1} 4
 {9, 1} 5
 {10, 1} 5
 {11, 1} 5
 {13, 1} 1
 {14, 1} 2
 {15, 1} 3
 {16, 1} 4
 ```
 */
/*:
 ### Not digit
 \d
 > Match any character that is not a decimal digit.
   
 */
regex(title: "Not Digit", text: "+1-(444)-555-1234", pattern: "\\D")
/*:
##### Output
```
{0, 1} +
{2, 1} -
{3, 1} (
{7, 1} )
{8, 1} -
{12, 1} -
```
*/
//: [Next](@next) - [Anchors](Anchors)
