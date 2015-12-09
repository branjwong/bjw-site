module FactoringTrinomials where

import Html exposing (..)
import Html.Attributes exposing (..)

import Markdown

import WritingLibrary


port title : String
port title =
  postTitle ++ " | BJW"


postTitle = "Factoring Trinomials"

main =
  WritingLibrary.guide
    postTitle
    (WritingLibrary.Date 2015 12 8)
    (WritingLibrary.Time 1 40 "pm")
    [ Markdown.toHtml content ]


content = """

### Core Ideas:

The Distributive Law
`a(b + c) = ab + bc`
   Factoring <-- --> Expanding

Expanding is the opposite of factoring.

### Factoring Trinomials of the form x^2 + Bx + C

Factoring trinomials of this form is as simple as taking these two easy steps.

1. Find constants p,q such that:
  - `p + q = B`
  - `pq = C`
1. set `x^2 + Bx + C = (x + p)(x + q)`

##### Proof.

`(x + p)(x + q)`
`= x(x + q) + p(x + q)`, by the Distributive Law (Expanding)
`= x^2 + qx + px + pq`, by the Distributive Law (Expanding)
`= x^2 + x(p + q) + pq`, by the Distributive Law (Factoring)
`= x^2 + Bx + C`, since B = p + q AND C = pq

##### Example 1 (VERBOSE)

Factor `x^2 + 10x + 21`.

since `B = 10`, `C = 21`, we must find p,q such that
`p + q = 10`
`pq = 21`

> ProTip: First thinking of two numbers that multiply to C is much easier than thinking of two numbers that sum to B. This is because there are only a finite, or limited, number of two-integer-combinations that multiply to C, while there are an infinite number of two-integer-combinations that sum to B. 

`21*1 = 21`, but `21+1 = 22`
`7*3 = 21`, and `7+3 = 10`, so `p = 7` and `q = 3`

> ProTip: Order of p and q doesn't matter, since the order of addition and multiplication doesn't matter. 
`p + q <=> q + p`
`pq <=> qp`

Since we found `p = 7` and `q = 3`, we say that:
`x^2 + 10x + 21`
`= (x + 7)(x + 3)` <-- where this is the factored form.

##### Example 2 (CLEAN)

Factor `a^2 + 4a - 32`.

Think:
`-32 = -8 * 4`, but `-8 + 4 = -4`
`-32 = 8 * -4`, and `8 - 4 = 4`

`a^2 + 4a - 32`
`= (a + 8)(a - 4)`

### Factoring Trinomials of the form Ax^2 + Bx + C, A =/= 1, 0

Factoring trinomials in this way is extremely similiar. It is only slightly more involved.


"""

