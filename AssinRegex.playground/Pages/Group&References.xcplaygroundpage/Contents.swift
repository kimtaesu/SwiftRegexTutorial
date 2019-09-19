//: [Previous](@previous)

import Foundation

//: ## Group & References
import Foundation



/*:
 ### Capturing group
 (...)
> (...) Capturing parentheses. Range of input that matched the parenthesized subexpression is available after the match..
 */
regex(title: "Capturing group", text: "hahaha haa hah!", pattern: "(ha)+")
/*:
##### Output
```
{0, 6} hahaha
{7, 2} ha
{11, 2} ha
```
*/
/*:
 ### Numeric reference
 \1
> \1 Matches the results of a capture group. For example \1 matches the results of the first capture group & \3 matches the third.
 */
regex(title: "Numeric reference", text: "hah dad bad dab gag gab", pattern: "(\\w)a\\1")
/*:
##### Output
```
{0, 3} hah
{4, 3} dad
{16, 3} gag
```
*/
/*:
 ### Non capturing group
 (?:...)
> (?:...) Non-capturing parentheses. Groups the included pattern, but does not provide capturing of matching text. Somewhat more efficient than capturing parentheses.
 */
regex(title: "Non capturing group", text:  "hahaha haa hah!", pattern: "(?:ha)+")
/*:
##### Output
```
{0, 6} hahaha
{7, 2} ha
{11, 2} ha
```
*/

//: [Next](@next) - [Lookaround](Lookaround)
