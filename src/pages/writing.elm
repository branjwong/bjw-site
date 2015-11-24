-- TODO: add Discus functionality

module Writing where

import Html exposing (..)
import Html.Attributes exposing (..)
import Markdown exposing (..)

import NavBar
import Header
import Notices
import Footer

import SharedStyles
import PrintStyle

import EntryOne


port title: String
port title =  "Writing | BJW"


main : Html
main =
  view model


type alias Model =
  { currentPage : String
  }


model : Model
model =
  { currentPage = "Writing"
  }


view : Model -> Html
view model =
  div 
    []
    [ PrintStyle.stylesheet SharedStyles.exports
    , NavBar.navBar model.currentPage links
    , NavBar.navBarSpace
    , Notices.notLive
    , Header.header "Home" "The Archive" "Except there's only one blog entry so far." True
    , writing
    , Footer.footer "Teaching"
    ]


links =
  [
  ]


writing =
  div
    [ class "container WritingContainer" ]
    [ div
      [ class "row" ]
      [ writingPosts
      , sideBar
      ]
    ]




writingPosts =
  div
    [ class "col-sm-12" ]
    [ entry ]

sideBar =
  div
    [ class "col-sm-3 col-sm-offset-1" ]
    []



entry =
  div
    [ class "WritingPost" ]
    [ toHtml EntryOne.entry ]



ventingMarkdown =
  """
  Venting
  =======
  July-02-12: 11:44pm
  -------------------
  Usually I'm not the type to go blabbing about my problems to all my friends, but lately I've felt the need to vent a lot. Recently, I've felt the need to enlighten most of my close friends about the shit-show that is my current relationship standing with my father. I mean, I just did it to my cousin five minutes ago. Perhaps this is a better place to vent though. Sure, it's the internet, and sure, everyone can access it, but I want to learn HTML and webdesign anyway; I can kill two birds with one stone. And honestly, if you're this interested in my personal life to come to this site (if you can even call it that, I mean I'm currently running this off Dropbox,) by all means, listen.
  """



picks : List String
picks =
  [ "Brandon Sanderson Books"
  , " "
  ]


bestWayToTeach : String
bestWayToTeach = 
  """
  [13:39] <EmptyMemory> pattern recognition can only take you so far when learning
  [13:40] <lostinmetro> pattern recognition is literally all i know how to do
  [13:42] <EmptyMemory> i think concept definition coupled with examples (i.e. pattern recognition) is the best way to teach
  [13:42] <EmptyMemory> i should write a blog post about that
  """