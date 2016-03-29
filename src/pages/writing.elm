module Writing where

import Html exposing (..)
import Html.Attributes exposing (..)

import WritingLibrary


port title: String
port title =  "Writing" ++ " | BJW"


main : Html
main =
  div 
    []
    [ WritingLibrary.writing
        "Writing"
        content
    ]


links =
  [
  ]


content = """


### Blog Posts

* [What I Am Doing With My Life](/dist/html/writing/what-i-am-doing-with-my-life.html)

### Guides

* [Factoring Trinomials](/dist/html/writing/factoring-trinomials.html)

### Reviews
  
* [Cross Game](/dist/html/writing/cross-game.html)

### Picks

- Nothing

"""