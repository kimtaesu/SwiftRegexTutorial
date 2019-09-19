//: [Previous](@previous)

import Foundation

//: ## EscapedCharacters


/*:
 ### Reserved Characters
 \
> \ Treat the following character as a literal, suppressing any special meaning. Backslash escaping in substitution text is only required for '$' and '\', but may be used on any other character without bad effects.
 
 +*?^$\.[]{}()|/
 */

regex(title: "Reserved Characters", text: "1 + 1 = 2", pattern: "\\+")
/*:
##### Output
```
{2, 1} +
```
*/
//: [Next](@next) - [Group&References](Group&References)
