module Writing exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.App as Html
import Html.Events as Events exposing (onClick)
import Style.SharedValues exposing (heightNavBar, heightHeader, heightFooter)


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
        , Header.header "Writing" "Where the archive of all my written work resides."
        , div
            [ class "container" ]
            [ div
                [ class "row" ]
                [ div
                    [ class "col-sm-12" ]
                    [ Markdown.toHtml [ class "Markdown" ] content
                    ]
                ]
            ]
        , Footer.footer
        ]


space : Int -> Html msg
space height =
    let
        heightContainer =
            536

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


content =
    """


Blog Posts
==========

* [2016/04/01 - Moving Back To Japan](/#writing/moving-back-to-japan)
* [2015/11/20 - What I Am Doing With My Life](/#writing/what-i-am-doing-with-my-life)

Japan

* [2013/02/15 - Nominated](https://braninjapan.wordpress.com/2013/02/15/nominated/)
* [2013/02/16 - Celebration](https://braninjapan.wordpress.com/2013/02/16/celebration/)
* [2013/03/22 - KGU Application Done](https://braninjapan.wordpress.com/2013/03/22/kgu-application-done/)
* [2013/03/23 - Predeparture Sesson](https://braninjapan.wordpress.com/2013/03/23/pre-departure-session/)
* [2013/05/07 - Accepted](https://braninjapan.wordpress.com/2013/05/07/accepted-for-real-this-time/)
* [2013/06/09 - Blisters, Bonfires, and Big Life Decisions](https://braninjapan.wordpress.com/2013/06/09/blisters-bonfires-and-big-life-decisions/)
* [2013/07/09 - What Should I Become](https://braninjapan.wordpress.com/2013/07/09/what-should-i-become/)
* [2013/08/20 - Goodbyes](https://braninjapan.wordpress.com/2013/08/20/goodbyes/)
* [2013/08/22 - Foolishly Fearless](https://braninjapan.wordpress.com/2013/08/22/day-1-august-22-foolishly-fearless/)
* [2013/08/23 - Me Time](https://braninjapan.wordpress.com/2013/08/23/day-2-august-23/)
* [2013/08/24 - Miscommunication](https://braninjapan.wordpress.com/2013/08/24/day-3-august-24-miscommunication/)
* [2013/08/25 - Stood Up?](https://braninjapan.wordpress.com/2013/08/25/day-4/)
* [2013/08/26 - Marathon](https://braninjapan.wordpress.com/2013/08/26/day-5-august-26/)
* [2013/08/27 - Segregation](https://braninjapan.wordpress.com/2013/08/27/day-6-august-27-segregation/)
* [2013/08/28 - Friends](https://braninjapan.wordpress.com/2013/08/28/day-7-august-28-friends/)
* [2013/08/29 - Fountain](https://braninjapan.wordpress.com/2013/08/29/day-8-august-29/)
* [2013/08/30 - Kyoto](https://braninjapan.wordpress.com/2013/08/30/day-9-august-30-kyoto/)
* [2013/08/31 - Osaka-shi](https://braninjapan.wordpress.com/2013/08/31/day-10-august-31-osaka-shi/)
* [2013/09/02 - Settling In](https://braninjapan.wordpress.com/2013/09/02/week-2-september-1-7/)
* [2013/09/08 - Bent Over](https://braninjapan.wordpress.com/2013/09/08/week-3-september-8-14/)
* [2013/09/14 - Takoyaki](https://braninjapan.wordpress.com/2013/09/14/week-4-september-15-21/)
* [2013/09/23 - Ambiguity](https://braninjapan.wordpress.com/2013/09/23/week-5-september-22-28-ballin-ambiguity/)
* [2013/09/29 - Child's Play](https://braninjapan.wordpress.com/2013/09/29/week-6-september-29-october-5-childs-play/)
* [2013/10/06 - Hiroshima](https://braninjapan.wordpress.com/2013/10/06/week-7-october-6-12-hiroshima/)
* [2013/10/20 - The Ordinary](https://braninjapan.wordpress.com/2013/10/20/week-8-october-13-19-the-ordinary/)
* [2013/10/21 - Honorific](https://braninjapan.wordpress.com/2013/10/21/week-9-october-20-26-honorific/)
* [2013/11/02 - Matsuri!](https://braninjapan.wordpress.com/2013/11/02/week-10-october-27-november-2/)
* TODO: Japan Conclusion
* TODO: A Case for Exchance


### Reviews

* [2013/07/12 - Cross Game](/#writing/cross-game)

"""



{-
   ### Picks

   - Nothing
-}
