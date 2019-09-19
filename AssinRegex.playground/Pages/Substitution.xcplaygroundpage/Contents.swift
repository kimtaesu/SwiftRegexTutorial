
//: [Previous](@previous)

import Foundation
//: ## Substitution

let pattern = ".+T(\\d\\d):(\\d\\d).+"
let text = "2014-10-29T20:44:00"

/*:
 ### Capture group
 $n
> The text of capture group n will be substituted for $n. n must be >= 0 and not greater than the number of capture groups. A $ not followed by a digit has no special meaning, and will appear in the substitution text as itself, a $.
 */

substitution(title: "Match", text: text, pattern: pattern, template: "$2$1")
/*:
##### Output
```
4420
```
*/

