-- TODO: Dropdown for current tab

module TopBar where

import Html exposing (..)
import Html.Attributes exposing (..)


(=>) = (,)

topBar : String -> List Html -> Html
topBar currentName currentLinks =
  navbarFixed currentName currentLinks

navbarFixed : String -> List Html -> Html
navbarFixed currentName currentLinks =
  div [ class "navbar navbar-inverse navbar-fixed-top", id "top", attribute "role" "banner" ]
    [ div [ class "container" ]
      [ navbarHeader
      , navbar currentName currentLinks
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
    --, a
    --  [ class "navbar-brand"
    --  , href "index.html"
    --  , style
    --    [ "background-image" => "url(../../resources/sign_vector.fw.png)"
    --    , "background-size" => "cover"
    --    , "padding-right" => "90px"
    --    ]
    --  ]
    --  []
      --, a
      --  [ class "navbar-brand"
      --  , href "index.html"
      --  ]
      --  [ img [ class "img-responsive", src "../../resources/sign_vector.fw.png" ] [] ]
    , a [ class "navbar-brand", href "index.html" ] [ text "BJ" ]
    ]


navbar : String -> List Html -> Html
navbar currentName currentLinks =
  div [ id "navbar", class "navbar-collapse collapse" ]
    [ navbarLeft currentName currentLinks
    , navbarRight
    ]


navbarLeft : String -> List Html -> Html
navbarLeft currentName currentLinks =
  ul [ class "nav navbar-nav" ]
      [ tab currentName currentLinks "Teaching" "teaching.html"
      , tab currentName currentLinks "Programming" "programming.html"
      , tab currentName currentLinks "Blog" "blog.html"
      ]


tab : String -> List Html -> String -> String -> Html
tab currentName currentLinks name link =
  if currentName == name then
    li [ class "dropdown" ]
    [ a
      [ href ""
      , class "dropdown-toggle"
      , attribute "data-toggle" "dropdown"
      , attribute "role" "button"
      , attribute "aria-haspopup" "true"
      , attribute "aria-expanded" "false"
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


navbarRight : Html
navbarRight =
  ul [ class "nav navbar-nav navbar-right" ]
    [ outsideLinks
    ]


outsideLinks : Html
outsideLinks =
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

topBarPadding : Html
topBarPadding =
  div
    [ style
      [ "height" => "30px"
      , "width" => "100%"
      ]
    ]
    []


