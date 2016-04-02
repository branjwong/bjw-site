module AprilFools where

import Html exposing (..)
import Html.Attributes exposing (..)

import Markdown
import Footer
import Disqus
import NavBar


import WritingLibrary exposing (Date, Time, postInfo)

port title : String
port title =
  postTitle ++ " | BJW"


postTitle = "April Fools!"

main =
  post
    postTitle
    (WritingLibrary.Date 2016 4 1)
    (WritingLibrary.Time 1 08 "am")
    [ Markdown.toHtml content ]

post : String -> Date -> Time -> List Html -> Html
post title date time body =
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
            , div
                []
                [ Markdown.toHtml beforeNote ]
            , div 
                [ style
                  [ ("font-size", "50px")
                  , ("color", "rgb(146, 42, 42)")
                  ]
                ]
                body
            , div
                []
                [ Markdown.toHtml afterNote ]
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