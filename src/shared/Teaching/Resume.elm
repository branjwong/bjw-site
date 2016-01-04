module Teaching.Resume where

import Html exposing (..)
import Html.Attributes exposing (..)

import Markdown

exports =
  div []
    [ div []
      [ div
        [ class "row" ]
        [ div
          [ class "col-sm-9" ]
          [ text "Oxford Learning" ]
        , div
          [ class "col-sm-3" ]
          [ text "Aug 2014 – Present" ]
        ]
      , div
        [ class "row" ]
        [ div
          [ class "col-sm-12" ]
          [ text "Tutor for Grade 10-12: Math, Physics, Chemistry, and K-12 English" ]
        ]
      , div
        [ class "row" ]
        [ div
          [ class "col-sm-12" ]
          [ Markdown.toHtml oxfordText ]
        ]
      ]
    , div []
      [ div
        [ class "row" ]
        [ div
          [ class "col-sm-9" ]
          [ text "Magee Secondary School" ]
        , div
          [ class "col-sm-3" ]
          [ text "Feb 2013 – Jul 2013" ]
        ]
      , div
        [ class "row" ]
        [ div
          [ class "col-sm-12" ]
          [ text "Calculus Tutor" ]
        ]
      , div
        [ class "row" ]
        [ div
          [ class "col-sm-12" ]
          [ Markdown.toHtml mageeText ]
        ]
      ]
    ]
    
oxfordText = """  
- Develop appropriate curricula to supplement what students are currently learning at school
- Train students to understanding the underlying concepts before trying to apply the mechanics
- Communicate effectively with other teachers and education directors in order to be able to solve problems rationally and efficiently
"""
    
mageeText = """
- Dug deep to find out the root cause of the difficulties his students were having.
- Challenged the students who were succeeding.
"""


