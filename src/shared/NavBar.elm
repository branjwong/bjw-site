module NavBar where

import Html exposing (..)
import Html.Attributes exposing (..)

import Style

(=>) = (,)

navBar : String -> List Html -> Html
navBar currentName currentLinks =
  nav
    [ Style.topBar
    , class "navbar navbar-inverse navbar-fixed-top"
    , id "top"
    --, attribute "role" "banner"
    ]
    [ div
      [ class "container" ]
      [ navbarCollapseComponent
      , navbarExpandComponent currentName currentLinks
      ]
    ]

navbarCollapseComponent : Html
navbarCollapseComponent =
  div
    [ class "navbar-header" ]
    [ button
      [ type' "button"
      , class "navbar-toggle collapsed"
      , attribute "data-toggle" "collapse"
      , attribute "data-target" "#navbar"
      --, attribute "aria-expanded" "false"
      --, attribute "aria-controls" "navbar"
      ]
      [ span [ class "sr-only" ] [ text "Toggle navigation" ]
      --, span [ class "glyphicon glyphicon-hand-down" ] []
      , span [ class "icon-bar"] []
      , span [ class "icon-bar"] []
      , span [ class "icon-bar"] []
      ]
    , a [ class "navbar-brand", href "../../dist/html/index.html" ] [ text "BJW" ]
    ]


navbarExpandComponent : String -> List Html -> Html
navbarExpandComponent currentName currentLinks =
  div
    [ id "navbar"
    , class "navbar-collapse collapse"
    ]
    [ navbarTabs currentName currentLinks
    ]


navbarTabs : String -> List Html -> Html
navbarTabs currentName currentLinks =
  ul
    [ class "nav navbar-nav navbar-right" ]
    [ tab currentName currentLinks "Teaching" "../../dist/html/teaching.html"
    , tab currentName currentLinks "Programming" "../../dist/html/programming.html"
    , tab currentName currentLinks "Writing" "../../dist/html/writing.html"
    ]


tab : String -> List Html -> String -> String -> Html
tab currentName currentLinks name link =
  if currentName == name then
    li
      [ class "dropdown" ]
      [ a
        [ href ""
        , class "dropdown-toggle"
        , attribute "data-toggle" "dropdown"
        --, attribute "role" "button"
        --, attribute "aria-haspopup" "true"
        --, attribute "aria-expanded" "false"
        ]
        [ text name ]

      , ul
        [ class "dropdown-menu" ]
        currentLinks
      ]
  else
    li []
      [ a [ href link ] [ text name ]
      ]


-- Currently Unused
outsideLinks : Html
outsideLinks =
  li
    [ class "dropdown" ]
    [ a
      [ href ""
      , class "dropdown-toggle"
      , attribute "data-toggle" "dropdown"
      --, attribute "role" "button"
      --, attribute "aria-haspopup" "true"
      --, attribute "aria-expanded" "false"
      ]
      [ text "Elsewhere" ]
    , ul
      [ class "dropdown-menu" ]
      [ li [] [ a [ href "https://ca.linkedin.com/pub/brandon-j-wong/54/43/500" ] [ text "LinkedIn" ] ]
      , li [] [ a [ href "https://github.com/branjwong/" ] [ text "GitHub" ] ]
      ]
    ]
