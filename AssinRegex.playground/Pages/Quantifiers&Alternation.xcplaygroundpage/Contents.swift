//: [Previous](@previous)

import Foundation

//: ## Quantifiers&Alternation
import Foundation


/*:
 ### Plus
 
 \+
 
 > Match 1 or more times. Match as many times as possible.
   
 */

regex(title: "Plus", text: "b be bee beer beers", pattern: "b\\w+")
/*:
##### Output
```
     {2, 2} be
     {5, 3} bee
     {9, 4} beer
     {14, 5} beers

```
*/
/*:
 ### Star
 \*
 > Match 0 or more times. Match as many times as possible.
   
 */
regex(title: "Star", text: "b be bee beer beers", pattern: "b\\w*")
/*:
##### Output
```
      {0, 1} b
     {2, 2} be
     {5, 3} bee
     {9, 4} beer
     {14, 5} beers
```
*/

/*:
 ### Quantifier
 {1,3}
 > {n}  Match exactly n times.

 > {n,} Match at least n times. Match as many times as possible.

 > {n,m} Match between n and m times. Match as many times as possible, but not more than m.
   
 */
regex(title: "Quantifier", text: "b be bee beer beers", pattern: "b\\w{2,3}")
/*:
##### Output
```
     {5, 3} bee
    {9, 4} beer
    {14, 4} beer
```
*/
/*:
 ### Optional
 ?
 > Match zero or one times. Prefer one.
   
 */
regex(title: "Optional", text: "colr color colour", pattern: "colou?r")
/*:
##### Output
```
    {5, 5} color
   {11, 6} colour
```
*/
/*:
 ### Lazy
 +?
> +? Match 1 or more times. Match as few times as possible.
> *? Match 0 or more times. Match as few times as possible.
 */
regex(title: "Lazy", text: "b be bee beer beers", pattern: "b\\w+?")
/*:
##### Output
```
   {2, 2} be
  {5, 2} be
  {9, 2} be
  {14, 2} be
```
*/
/*:
 ### Alternation
 \|
> +? Match 1 or more times. Match as few times as possible.
> *? Match 0 or more times. Match as few times as possible.
 */
regex(title: "Alternation", text: "bad bud bod bed bid", pattern: "b(a|e|i)d")
/*:
##### Output
```
  {0, 3} bad
 {12, 3} bed
 {16, 3} bid
```
*/
//: [Next](@next) - [Substitution](Substitution)
