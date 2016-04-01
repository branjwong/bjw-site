module NavBar where

import Html exposing (..)
import Html.Attributes exposing (..)

-- TODO: Bullet O · ICONS FOR WHICH PAGE YOU ARE ON, AND A DOWN ARROW FOR DROPDOWN

navBar : Html
navBar =
  nav
    [ class "navbar navbar-fixed-top NavBar" --navbar-inverse
    , id "top"
    ]
    [ div
      [ class "NavBarTop" ]
      []
    , div
      [ class "container"
      ]
      [ navbarCollapseComponent
      , navbarExpandComponent
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
      ]
      [ span [ class "sr-only" ] [ text "Toggle navigation" ]
      , span [ class "icon-bar NavBarIconBar" ] []
      , span [ class "icon-bar NavBarIconBar" ] []
      , span [ class "icon-bar NavBarIconBar" ] []
      ]
    , a [ class "navbar-brand", href "/" ] [ text "BJW" ]
    ]


navbarExpandComponent : Html
navbarExpandComponent =
  div
    [ id "navbar"
    , class "navbar-collapse collapse"
    ]
    [ navbarTabs
    ]


navbarTabs : Html
navbarTabs =
  ul
    [ class "nav navbar-nav navbar-right" ]
    [ tab "Teaching" "/teaching"
    , tab "Programming" "/programming"
    , tab "Writing" "/writing"
    ]


tab : String -> String -> Html
tab name link =
  --if currentName == name then
  --  li
  --    [ class "dropdown" ]
  --    [ a
  --      [ href ""
  --      , class "dropdown-toggle"
  --      , attribute "data-toggle" "dropdown"
  --      --, attribute "role" "button"
  --      --, attribute "aria-haspopup" "true"
  --      --, attribute "aria-expanded" "false"
  --      ]
  --      [ text name ]

  --    , ul
  --      [ class "dropdown-menu" ]
  --      currentLinks
  --    ]
  --else
    li []
      [ a [ href link ] [ text name ]
      ]


navBarSpace : Html
navBarSpace = 
  div 
    [ id "Landing"
    , class "NavBarSpace"
    ]
    []

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
