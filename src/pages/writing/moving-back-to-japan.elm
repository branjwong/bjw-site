module MovingBackToJapan where

import Html exposing (..)
import Html.Attributes exposing (..)

import Markdown

import WritingLibrary

port title : String
port title =
  postTitle ++ " | BJW"


postTitle = "Moving Back To Japan"

main =
  WritingLibrary.post
    postTitle
    (WritingLibrary.Date 2016 4 1)
    (WritingLibrary.Time 11 13 "pm")
    [ Markdown.toHtml content ]


content = """

Fuck it, I am moving back to Japan.

もう良いです、日本には帰ります。

My flight leaves September 3rd! I have been secretly planning this for awhile. My plan is to find whatever freelance static web development jobs I can get, using my ability of writing English as my competitive advantage. With the money I have made from tutoring, I should be able to hold out on my own without income for about 5 months. If I really start to have any trouble, I am hoping my friends in Japan can bail me out. (Evan? Sayaka?* Haruna?) I am not sure how long I will be there for.

週発は９月３日です。しばらくの間、秘密で計画していました。英語の熟達でウェブプログラミングの仕事を見つけようと思っています。家庭教師のバイとのお金で、収入が五ヶ月なかっても大丈夫です。悩みが来たら、日本にいる友達は僕を助けると良いんですけどね。（エバン？さやか？＊はるな？）どのぐらい日本にいるかまだ分かりません。


* There's more than one, and you both know who you are.
* さやかは二人がいますね。お前たちが自分の事をしている。


There are lots of reasons as to why I am leaving. A big part of it is how expensive this city is. I have realized that if I want to live on my own, I am probably only going to be able to do that outside of Vancouver. I also miss Japan, as it is kind of my second home. I miss my friends, I miss being able to freely and inexpensively go out, and I miss speaking Japanese. Vancouver feels so soul sucking. I spend most of my days at home, with nothing to do and few to socialize with. I used to be a social butterfly back in Japan. Here, I am just a recluse.

ここから出る理由は多いです。子の街はすごく高いです。一人暮らししたいなら、バンクーバーから出るしかなさそうだし、二番目の出身みたいな日本を懐かしんでいるし、日本にいる友達と遊びたくて日本語で一緒に喋りたいなんです。僕にとってバンクーバーは何もないので僕の魂がいなくなりそうです。毎日友達と遊ばずに家にいます。日本にいつも友達といたんですが、ここは違います。


I chose September 3rd because summer is one of the few times of year that I actually find myself enjoying Vancouver. I missed out last year, being in Asia in June and July and all, and I afford to miss it again. I am going to end my time here with a bang of a summer! Make sure you guys let me know if you want to see me before I go, because once I am gone, who knows when I will be back!

バンクーバーの夏はバンクーバーのひとつの楽しい時間ですから、９月にしました。去年の夏、韓国と日本に旅行しましたし、この夏はバンクーバーです。これは最後なので、逃すわけがありません。この夏は「バーン」で終わります。バンクーバーの友達が僕を見て欲しがったら、行く前に呼べください。

Leave a comment below with any parting messages or plans to get together if you wish.

下でコメントおねがいします。

###### Last Edited: Friday, April 1st: 11:13pm

"""

