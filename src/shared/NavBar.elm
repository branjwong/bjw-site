module NavBar exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events as Events exposing (..)


--

import Model exposing (..)
import Update exposing (..)


-- TODO: Bullet O · ICONS FOR WHICH PAGE YOU ARE ON, AND A DOWN ARROW FOR DROPDOWN


navBar : Html Msg
navBar =
    nav
        [ class "navbar navbar-fixed-top NavBar"
          --navbar-inverse
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


navbarCollapseComponent : Html Msg
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
        , a [ class "navbar-brand", Events.onClick (ChangePage Home) ] [ text "BJW" ]
        ]


navbarExpandComponent : Html Msg
navbarExpandComponent =
    div
        [ id "navbar"
        , class "navbar-collapse collapse"
        ]
        [ navbarTabs
        ]


navbarTabs : Html Msg
navbarTabs =
    ul
        [ class "nav navbar-nav navbar-right" ]
        [ tab "Teaching" Teaching
        , tab "Programming" Programming
        , tab "Writing" Writing
        ]


tab : String -> Page -> Html Msg
tab name page =
    li []
        [ a [ Events.onClick (ChangePage page) ] [ text name ]
        ]


navBarSpace : Html Msg
navBarSpace =
    div
        [ id "Landing"
        , class "NavBarSpace"
        ]
        []



-- Currently Unused


outsideLinks : Html Msg
outsideLinks =
    li
        [ class "dropdown" ]
        [ a
            [ href ""
            , class "dropdown-toggle"
            , attribute "data-toggle" "dropdown"
            ]
            [ text "Elsewhere" ]
        , ul
            [ class "dropdown-menu" ]
            [ li [] [ a [ href "https://ca.linkedin.com/pub/brandon-j-wong/54/43/500" ] [ text "LinkedIn" ] ]
            , li [] [ a [ href "https://github.com/branjwong/" ] [ text "GitHub" ] ]
            ]
        ]
