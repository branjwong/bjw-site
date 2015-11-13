module Programming where

import Html exposing (..)
import Html.Attributes exposing (..)

import NavBar
import Style



port title: String
port title =  "Teaching · BJW"


main : Html
main =
  view model


type alias Model =
  { currentPage : String
  }


model : Model
model =
  { currentPage = "Programming"
  }


view : Model -> Html
view model =
  div
    [ attribute "role" "elm-app" ]
    [ NavBar.navBar model.currentPage links
    , programming
    ]


links : List Html
links =
  []


programming : Html
programming =
  div
    [ class "container"
    , Style.programmingContainer
    ]
    [ div
      [ class "row" ]
      [ programmingHeader
      ]
    ]


programmingHeader : Html
programmingHeader =
  div
    [ class "col-mid-12", Style.writingHeader ]
    [ h1 [ Style.writingTitle ] [ text "The Laboratory" ]
    , p [ class "lead", Style.writingDescription ] [ text "Where my programming experience is here for viewing." ]
    ]


richardFeldmanQuote : String
richardFeldmanQuote = 
  """
  One of my coworkers had a great term for this. She said that learning a particular framework is horizontal growth. You get more familiar with that framework but it doesn't enrich your understanding of programming, give you more techniques that you can use in other places. But learning a different paradigm like functional programming is vertical growth. Because not only does it teach you how to use this new particular tool but it also gives you new tools that you can use then bring to other projects with different frameworks, different languages, et cetera. And it's definitely been true in my experience.
  """
