-- https://www.iconfinder.com/iconsets/black-white-social-media
-- need to shout this out

module Footer where

import Html exposing (..)
import Html.Attributes exposing (..)
import Markdown


footer : Html
footer =
  boring

boring : Html
boring = 
  let 
    myStyle =
      style [ ("height" , "60px") ]
  in
    div
      [ id "Footer", myStyle ]
      []

first : Html
first =
  let
    path = "/resources/shared/Footer/face.png"
  in
    div
      [ id "Footer" ]
      [ div 
        [ class "container" ]
        [ div 
          [ class "row" ]
          [ div
            [ class "col-sm-2" ]
            [ img [ src path ] [] ]
          , div 
            [ class "col-sm-8" ]
            [ Markdown.toHtml whoIAm ]
          , div
            [ class "col-sm-2" ]
            [ links ]
          ]
        ]
      ]

second : Html
second =
  div
    [ id "Footer" ]
    [ div 
      [ class "container" ]
      [ div 
        [ class "row" ]
        [ div 
          [ class "col-sm-12" ]
          [ links ]
        ]
      ]
    ]



whoIAm : String
whoIAm = """

Brandon J Wong is a programmer, an educator, a dog and cat owner, and a soccer player, among other things. While still pushing towards his other career goals, he wishes to keep teaching as a pivotal part of his life. Once finished with schooling, and after acquiring some experience, he aspires to develop web applications that enrich the aspects of life he is most fond of.

"""

links : Html
links =
  let 
    icon path =
      div
        [ class "Icon" ]
        [ img [ src path ] [] ]
  in 
    div
      []
      [ icon "/resources/shared/Footer/email.svg"
      , icon "/resources/shared/Footer/twitter.svg"
      , icon "/resources/shared/Footer/facebook.svg"
      ]


  {- div
    [ class "row" ]
    [ div
      [ class "col-xs-12 col-lg-8" ]
      [ ul
        [ class "nav nav-inline site-nav" ]
        [ li [] [ link "title" "url" ]
        , li [] [ link "title" "url" ]
        , li [] [ link "title" "url" ]
        , li [] [ link "title" "url" ]
        ]
      , p 
        [ class "Legal" ]
        [ text "Legal words should like 'All Rights Reserved' should go here but I don't know anything about how this would work."]
      , p 
        [ class "Legal" ]
        [ text "© branjwong. 2015."]
      ]
    ]
  ]
  -}


link title url =
  a [ href url ] [ text title ]

{-}
<footer id="main-footer" role="footer">
    <div class="content pad-vert-medium">
      <div class="row">
        <div class="col-xs-12 col-lg-8">
          <ul class="nav nav-inline site-nav">
            <li><a href="http://careers.brainstation.io">Careers</a></li>
            <li><a href="/about">About</a></li>
            <li><a href="/scholarshiplanding">Scholarships</a></li>
            <li><a href="/contact/">Contact</a></li>
            <li><a href="/terms-and-conditions">Terms &amp; Conditions</a></li>
            <li><a href="/academy">BrainStation Academy</a></li>
            <li><a href="/faq">FAQ</a></li>
          </ul>
          <p class="legal hidden-mobile">
            All Content © BrainStation Inc. 2015. BrainStation and the BrainStation Logo are trademarks of BrainStation Inc. All Rights Reserved.
          </p>
          <p class="visible-mobile legal">
             © BrainStation Inc. 2015.
          </p>
        </div>
        <div class="col-xs-12 col-lg-4 hidden-mobile">
          <ul class="nav nav-inline social-links">
            <li><a target="_blank" href="https://www.linkedin.com/edu/school?id=164173&amp;trk=tyah&amp;trkInfo=idx%3A3-1-5%2CtarId%3A1423674489955%2Ctas%3Abrainstation"><i class="logo-linkedin"></i></a></li>
            <li><a target="_blank" href="https://twitter.com/BrainStation"><i class="logo-twitter"></i></a></li>
            <li><a target="_blank" href="http://www.meetup.com/BrainStation/"><i class="logo-meetup"></i></a></li>
            <li><a target="_blank" href="https://www.facebook.com/brainstation"><i class="logo-facebook"></i></a></li>
            <li><a target="_blank" href="http://instagram.com/brainstation"><i class="logo-instagram"></i></a></li>
          </ul>
        </div>
      </div>
    </div>
  </footer>
-}