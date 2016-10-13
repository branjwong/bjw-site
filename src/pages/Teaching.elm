module Teaching exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.App as Html
import Style.SharedValues exposing (heightNavBar, heightHeader, heightFooter)


--

import Model exposing (..)
import Update exposing (..)


--

import Markdown
import NavBar
import Notices
import Header
import Footer
import Disqus


view : Model -> Html Msg
view model =
    div
        []
        [ NavBar.navBar
        , NavBar.navBarSpace
        , Header.header "Teaching" "A bunch of learning goodness."
        , teaching
        , space model.size.height
        , Footer.footer
        ]


space : Int -> Html msg
space height =
    let
        heightContainer =
            369

        spaceTakenSoFar =
            heightNavBar + heightHeader + heightContainer + heightFooter

        result =
            if height - spaceTakenSoFar > 0 then
                height - spaceTakenSoFar + 1
            else
                0
    in
        div
            [ style [ ( "height", toString result ++ "px" ) ] ]
            []


teaching : Html msg
teaching =
    div
        [ class "container" ]
        [ div
            [ class "row" ]
            [ Markdown.toHtml [ class "Markdown" ] body
            ]
        ]


body =
    """

[Brandon Tutors! More Info Here](/tutor-plug)
================================

* * *

Lessons
=======

* [Factoring Trinomials Lesson](/factoring-trinomials)

* * *

Helpful Applications
====================

* [Trinomial Worksheet Generator](/trinomial-generator-worksheet)

  """
