module Footer where

import Html exposing (..)
import Html.Attributes exposing (..)

footer : Html
footer =
  div
  [ id "Footer"
  , attribute "role" "footer"
  ]
  [ 

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
  -}

  ]

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