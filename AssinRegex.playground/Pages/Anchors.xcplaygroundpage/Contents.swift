//: [Previous](@previous)

import Foundation

//: ## Anchors
/*:
 ### beginning
 ^
 > Match at the beginning of a line. See anchorsMatchLines and the \m character expression in Table 4.
   
 */
regex(title: "Beginning", text: "she sells seashells", pattern: "^\\w+")
/*:
##### Output
```
{0, 3} she
```
*/
/*:
 ### End
 ^
 > Match at the end of a line. See anchorsMatchLines and the m character expression in Table 4.
   
 */
regex(title: "End", text: "she sells seashells", pattern: "\\w+$")
/*:
##### Output
```
{10, 9} seashells
```
*/
/*:
 ### Word boundary
\b, outside of a [Set]
 > Match if the current position is a word boundary. Boundaries occur at the transitions between word (\w) and non-word (\W) characters, with combining marks ignored. For better word boundaries, see useUnicodeWordBoundaries.
 */
regex(title: "Word boundary", text: "she sells seashells", pattern: "s\\b")
/*:
##### Output
```
{8, 1} s
{18, 1} s
```
*/
/*:
 ### Not word boundary
\B      Match if the current position is not a word boundary.
 */
regex(title: "Not word boundary", text: "she sells seashells", pattern: "s\\B")
/*:
##### Output
```
{0, 1} s
{4, 1} s
{10, 1} s
{13, 1} s
```
*/
//: [Next](@next) - [EscapedCharacters](EscapedCharacters)
