//: [Previous](@previous)

import Foundation

//: ## Lookaround
import Foundation


/*:
 ### Positive lookadead
 (?= ... )
> (?= ... ) Look-ahead assertion. True if the parenthesized pattern matches at the current input position, but does not advance the input position.
 */
regex(title: "Positive lookadead", text: "1pt 2px 3em 4px", pattern: "\\d(?=px)")
/*:
##### Output
```
{4, 1} 2
{12, 1} 4
```
*/
/*:
 ### Nagative lookadead
 (?! ... )
> (?! ... ) Negative look-ahead assertion. True if the parenthesized pattern does not match at the current input position. Does not advance the input position.
 */
regex(title: "Nagative lookadead", text: "1pt 2px 3em 4px", pattern: "\\d(?!px)")
/*:
##### Output
```
{0, 1} 1
{8, 1} 3

```
*/
//: [Next](@next) - [Quantifiers&Alternation](Quantifiers&Alternation)
