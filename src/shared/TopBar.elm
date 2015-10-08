module TopBar where

import Html exposing (..)
import Html.Attributes exposing (..)


topBar : String -> Html
topBar currentName =
  navbarFixed currentName




navbarFixed currentName =
  nav [ class "navbar navbar-inverse navbar-fixed-top" ]
    [ div [ class "container" ]
      [ navbarHeader
      , navbar currentName
      ]
    ]


navbarStatic currentName =
  div [ class "navbar-wrapper" ]
    [ div [ class "container" ]
      [ nav [ class "navbar navbar-inverse navbar-static-top" ]
        [ div [ class "container" ]
          [ navbarHeader
          , navbar currentName
          ]
        ]
      ]
    ]


navbarHeader : Html
navbarHeader =
  div [ class "navbar-header" ]
    [ button
      [ type' "button"
      , class "navbar-toggle collapsed"
      , attribute "data-toggle" "collapse"
      , attribute "data-target" "#navbar"
      , attribute "aria-expanded" "false"
      , attribute "aria-controls" "navbar"
      ]
      [ span [ class "sr-only" ] [ text "Toggle navigation" ]
      , span [ class "icon-bar"] []
      , span [ class "icon-bar"] []
      , span [ class "icon-bar"] []
      ]
    , a [ class "navbar-brand", href "index.html" ] [ text "BW" ]
    ]


navbar : String -> Html
navbar currentName =
  div [ id "navbar", class "navbar-collapse collapse" ]
    [ navbarLeft currentName
    , navbarRight
    ]


navbarLeft currentName =
  ul [ class "nav navbar-nav" ]
      [ tab currentName "Teaching" "teaching.html"
      , tab currentName "Programming" "programming.html"
      , tab currentName "Blog" "blog.html"
      ]


tab : String -> String -> String -> Html
tab currentName name link =
  if currentName == name then
    li [ class "active" ]
      [ a [ href link ] [ text name ]
      ]
  else
    li []
      [ a [ href link ] [ text name ]
      ]


navbarRight =
  ul [ class "nav navbar-nav navbar-right" ]
    [ dropdown
    ]


dropdown : Html
dropdown =
  li [ class "dropdown" ]
    [ a
      [ href ""
      , class "dropdown-toggle"
      , attribute "data-toggle" "dropdown"
      , attribute "role" "button"
      , attribute "aria-haspopup" "true"
      , attribute "aria-expanded" "false"
      ]
      [ text "Outside Links" ]
    , ul
      [ class "dropdown-menu" ]
      [ li [] [ a [ href "https://ca.linkedin.com/pub/brandon-j-wong/54/43/500" ] [ text "LinkedIn" ] ]
      , li [] [ a [ href "https://github.com/branjwong/portfolio" ] [ text "Portfolio" ] ]
      ]
    ]



