module Writing where

import Html exposing (..)
import Html.Attributes exposing (..)

import WritingLibrary


port title: String
port title =  model.currentPage ++ " | BJW"


main : Html
main =
  view model


model : WritingLibrary.Model
model =
  { currentPage = "Writing"
  }


view : WritingLibrary.Model -> Html
view model =
  div 
    []
    [ WritingLibrary.writing
        model
        links
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