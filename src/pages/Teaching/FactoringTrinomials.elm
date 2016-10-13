module Teaching.FactoringTrinomials exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Markdown


--

import Model exposing (Model, Msg)
import Writing.Post


view : Model -> Html Msg
view model =
    Writing.Post.post
        --Writing.Post.guide
        title
        (Writing.Post.Date 2015 12 8)
        (Writing.Post.Time 1 40 "pm")
        content


title =
    "Factoring Trinomials"


content =
    """

## Core Ideas:

The Distributive Law
`a(b + c) = ab + bc`
Factoring <-- --> Expanding

Expanding is the opposite of factoring.

* * *

## Factoring Trinomials of the form x<sup>2</sup> + Bx + C

B and C are constants (or non-varying numbers, or numbers that are not variables) that would have been given to you in the problem.
Factoring trinomials of this form is as simple as taking these two easy steps.

1. Find constants p,q such that:
  - `p + q = B`
  - `pq = C`
1. set `x^2 + Bx + C = (x + p)(x + q)`

### Proof.

````
(x + p)(x + q)
= x(x + q) + p(x + q)   [1]
= x^2 + qx + px + pq    [2]
= x^2 + x(p + q) + pq   [3]
= x^2 + Bx + C          [4]
````
[1]: by the Distributive Law (Expanding)
[2]: by the Distributive Law (Expanding)
[3]: by the Distributive Law (Factoring)
[4]: since p + q = B && pq = C

* * *


### Example 1: Factor x<sup>2</sup> + 10x + 21.

Since `B = 10`, `C = 21`, we must find p,q such that
````
p + q = 10 = B
pq = 21 = C
````

> ProTip: First thinking of two numbers that multiply to C is much easier than thinking of two numbers that sum to B. This is because there are only a finite, or limited, number of two-integer-combinations that multiply to C, while there are an infinite number of two-integer-combinations that sum to B.

**Think:**
If `C = 21 = 21*1`, then `22 = 21+1 =/= B`, and this doesn't work for our values.
However, if `C = 21 = 7*3`, then `7+3 = 10 = B`, and this **does** work for our values.
So we say that `p = 7` and `q = 3`.

> Note: The order of p and q doesn't matter, since the order of addition and multiplication doesn't change anything.
````
p + q <=> q + p
pq <=> qp
(x + p)(x + q) <=> (x + q)(x + p)
````

Since we found `p = 7` and `q = 3`, we say that:
````
x^2 + 10x + 21
= (x + 7)(x + 3) <- factored form
````

* * *

### Example 2: Factor a<sup>2</sup> + 4a - 32.

**Think:**
`C = -32 = -8 * 4` but `-8 + 4 = -4 =/= B`
`C = -32 = 8 * -4` and `8 - 4 = 4 = B`

````
a^2 + 4a - 32
= (a + 8)(a - 4)
````

* * *

### Example 3: Factor a<sup>2</sup> + 3ab - 18b<sup>2</sup>.

Though this trinomial looks as if it is different from our x<sup>2</sup> + Bx + C form that we're used to, we can actually look at this trinomial in such a way that it conforms to our strategy.

*Let:*
````
x = a
B = 3b
C = -18b^2,
````
Then we get:
````
a^2 + 3ab - 18b^2
= (a)^2 + (3b)(a) + (-18b^2)
= x^2 = Bx + C,
````
which is what we are used to! And so we can use our strategy from before.
So we **still** need:
````
p + q = 3b = B
pq = -18b^2 = C,
````
which means that p and q must be multiples of b,
i.e.: they must be of the form Qb, where Q is a constant.

**Think:**
`C = -18b^2 = -9b * 2b` but `-9b + 2b = -7b =/= B`
`C = -18b^2 = 6b * (-3b)` and `6b + (-3b) = 3b =/= B`,
so `p = 6b` and `q = -3b`


````
a^2 + 3ab + 18b^2
= (a + 6b)(a - 3b)
````

* * *

## Factoring Trinomials of the form Ax<sup>2</sup> + Bx + C, A =/= 1, 0

Factoring trinomials in this way is extremely similiar. It is only slightly more involved.

1. Find constants p,q such that:
  - `p + q = B`
  - `pq = AC`
1. set `Ax^2 + Bx + C = Ax^2 + px + qx + C`
1. factor `Ax^2 + px` separately from `qx  + C`
1. factor everything

### Example 1: Factor 2x<sup>2</sup> + 7x + 5.

````
2x^2 + 7x + 5
= 2x^2 + 5x + 2x + 5
= x(2x + 5) + 1(2x + 5)
= (2x + 5)(x + 1)
````

> Note: The order still doesn't matter here either.

````
2x^2 + 7x + 5
= 2x^2 + 2x + 5x + 5
= 2x(x + 1) + 5(x + 1)
= (x + 1)(2x + 5)
````

"""
