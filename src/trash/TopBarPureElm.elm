module TopBar where

import Html exposing (..)
import Html.Attributes exposing (..)

topBar : String -> Html
topBar currentName =
  div 
    [ id "tabs" ]
    [ ul []  --(List.map tab [ "home", "programming", "linkedIn", "blog", "teaching" ])
      [ tab currentName "home" "Home.html"
      , tab currentName "teaching" "Teaching.html"
      , tab currentName "blog" "Blog.html"
      , tab currentName "programming" "https://github.com/branjwong/portfolio"
      , tab currentName "linkedIn" "https://ca.linkedin.com/pub/brandon-j-wong/54/43/500"
      ]
    ]

tab : String -> String -> String -> Html
tab currentName name link =
  li []
    [ a [ classList [("tab", True), ("current", (currentName == name)) ]
      , href link
      ]
      [ text name ]
    ]