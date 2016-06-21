module AprilFools exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)

import Markdown
import Footer
import Disqus
import NavBar


import Writing.Post exposing (Date, Time, postInfo)

--port title : String
--port title =
--  postTitle ++ " | BJW"


postTitle = "April Fools!"

main =
  aprilFoolsPost
    postTitle
    (Writing.Post.Date 2016 4 1)
    (Writing.Post.Time 1 08 "am")
    content

aprilFoolsPost : String -> Date -> Time -> String -> Html msg
aprilFoolsPost title date time body =
  div 
    []
    [ NavBar.navBar
    , NavBar.navBarSpace
    , div
      [ class "container WritingContainer" ]
      [ div
        [ class "row" ]
        [ div
          [ class "col-sm-12" ]
          [ div
            [ class "WritingPost" ]
            [ h1 [] [ text title ]
            , h6 [] [ text (postInfo date time) ]
            , Markdown.toHtml [] beforeNote 
            , Markdown.toHtml 
                [ style
                  [ ("font-size", "50px")
                  , ("color", "rgb(146, 42, 42)")
                  ]
                ] 
                body
            , Markdown.toHtml [] afterNote 
            ]
          ]
        ]
      , Disqus.exports
      ]
    , Footer.footer 
    ]

beforeNote = """

I feel kind of sorry to say this but...

"""

content = """
DON'T YOU ALL KNOW WHAT DAY IT IS TODAY? APRIL 1ST, SUCKAS. I'M NOT GOIN' ANYWHERE, HAHAHAHAHAHAHHAA.
"""

afterNote = """

Please comment if I fooled you, or even if I didn't. I'd love to know! My apologies for worrying people and giving other's hopes up! I gave my mom warning, but I figured the rest of you were fair game. :P

"""