module Teaching.TutorPlug.Japanese exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Markdown
import Window
import Style.SharedValues exposing (heightNavBar, heightHeader, heightFooter)


--

import Model exposing (Model, Msg)
import NavBar
import Header
import Footer


title =
    "Japanese"


view : Model -> Html Msg
view model =
    div
        []
        [ NavBar.navBar
        , NavBar.navBarSpace
        , Header.header "Learning Outcomes" title
        , subjectInfo
        , space model.size.height
        , Footer.footer
        ]


space : Int -> Html Msg
space height =
    let
        heightContainer =
            180

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


subjectInfo : Html Msg
subjectInfo =
    div
        [ class "container" ]
        [ div
            [ class "row" ]
            [ Markdown.toHtml
                [ class "Markdown" ]
                body
            ]
        ]


body =
    """

As an former exchange of Kansai Gaidai University, I teach from the same curriculum and textbook that their professors developed. This textbook and curriculum has done so well that it has been adopted in classes all over the world. I have seen it with my own eyes being used in classrooms at Simon Fraser University.

http://genki.japantimes.co.jp/wp-content/uploads/genki_syllabus_en.jpg
http://wpgenki.whitebase.co.jp/wp-content/uploads/06text_img1.jpg

  """
