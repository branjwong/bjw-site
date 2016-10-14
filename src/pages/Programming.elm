module Programming exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)


--

import Model exposing (..)
import Update exposing (..)
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
        , Header.header "Programming" "Where my programming experience is here for viewing."
        , programming
        , Footer.footer
        ]


programming : Html msg
programming =
    div
        [ class "container" ]
        [ div
            [ class "row" ]
            [ Markdown.toHtml [ class "Markdown" ] body ]
        ]


body : String
body =
    """

[Megaman Project](/megaman)
=================

* IT 12
* Language: ActionScript
* Software Platform: Adobe Flash
* Instructor: Blair Yeung-Meadows
* Time: Year 12 * Highschool

### How To Play

* Goal: Reduce Metalman's HP to 0
* Use A/S/D/W to move Left/Down/Right/Up
* Press the up button to fire your buster
* Hold the up button to charge your buster
* Move to avoid Metalman's attacks

* * *

[Zelda Project](/zelda)
===============

* IT 12
* Language: ActionScript
* Software Platform: Adobe Flash
* Instructor: Blair Yeung-Meadows
* Time: Year 12 - Highschool

### How To Play

* Goal: Navigate through Hyrule and find the Triforce
* Click on arrow buttons to navigate
* Click on enemies to defeat them before they attack you

* * *

[Duckhunt Project](/duckhunt)
===============

* IT 11
* Language: ActionScript
* Software Platform: Adobe Flash
* Instructor: Blair Yeung-Meadows
* Time: Year 11 - Highschool

### How To Play

* Goal: Shoot ducks by clicking on them with the mouse
* Don't let the dog laugh at you for sucking

* * *

[The Rest of the Portfolio](https://github.com/branjwong/portfolio)
===========================

* C
    * Build a Shell
    * Extended Producer-Consumer Problem
    * POSIX Threads and Producer-Consumer
    * Codility Demo Problem
* C#
    * Megaman
* C++
    * Waiting in Line
    * Word
    * Trees
    * Hash Tables and the Dictionary ADT
* Elm
    * Bingo
    * Online Resume and Portfolio Website
        * github.com/branjwong/website
* Fireworks
    * Personal Logo
    * Sasaki Logo
* HTML/CSS
    * Awesome Domain
* Java
    * Wizards, Witches, and Horcruxes
* Python
    * Wumpas World

* * *

[This Site's Source Code](https://github.com/branjwong/bjw-site)
=========================

* Frontend: [Elm](http://elm-lang.org/), [Bootstrap](http://getbootstrap.com/)
* Backend: [NodeJS](https://nodejs.org/en/)
* Tools Used: [Grunt](http://gruntjs.com/)
* Initial Commit: September 29th, 2015

  """


richardFeldmanQuote : String
richardFeldmanQuote =
    """
  One of my coworkers had a great term for this. She said that learning a particular framework is horizontal growth. You get more familiar with that framework but it doesn't enrich your understanding of programming, give you more techniques that you can use in other places. But learning a different paradigm like functional programming is vertical growth. Because not only does it teach you how to use this new particular tool but it also gives you new tools that you can use then bring to other projects with different frameworks, different languages, et cetera. And it's definitely been true in my experience.
  """
