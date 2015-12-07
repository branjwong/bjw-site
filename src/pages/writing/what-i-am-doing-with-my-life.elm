module WhatAmIDoingWithMyLife where

import Html exposing (..)
import Html.Attributes exposing (..)

import Markdown

import WritingLibrary


port title : String
port title =
  postTitle ++ " | BJW"


postTitle = "What Am I Doing With My Life"

main =
  WritingLibrary.post
    postTitle
    (WritingLibrary.Date 2015 11 20)
    (WritingLibrary.Time 12 25 "pm")
    [ Markdown.toHtml content ]


content = """

Earlier this September, I had my plan down. Having recently returned from Japan with all of my co-op prerequisites done, I was intending to take a semester off from school to find a co-op placement, while still teaching at Oxford Learning in order to keep a roof over my head. The idea was that I could get a feel for what the tech industry in Vancouver has to offer, while still getting paid for it. 

It's now the end of November, and I still don't have a job. When boiled down, there are three reasons for this.

1. I am a junior programmer with little to no technical experience.
2. Though my conceptual understanding of areas within Computing Science is strong, I do not have confidence in the programming languages/technologies required of me to get a job in Vancouver. 
3. I have little desire to learn **these** technologies on my own accord.

Though my foundations in C, C++, and Java are fairly strong, I don't have any experience with a sizeable code base using these languages, and I am a bit rusty with all of them. For jobs in web development, I have little to no desire to learn the current front-end web development technologies currently used in production, as the current paradigm is (supposedly) kind of a headache, and I have absolutely no experience with anything back-end related. Though earlier in September I felt that trying everything out would be for the best, now I am not so sure. I underestimated the time investment involved to try to get jobs that I am not immediately hire-able for. Does it make sense for an employer to hire me into an industry that I am not even sure about? I am not so sure. When I am told that I need to brush up on my skills with technologies that I am not really all too fond of, is it worth it for me?

I guess all of this doesn't make sense if you don't know about the alternative that I have been looking at. Since February, I have been looking into a new programming language called [Elm](http://elm-lang.org). Without diving into the technicalities of what Elm is and how it pairs against other currently existing languages and technologies out there, know that besides when I was ActionScript way back in high school in Mr. Yeung-Meadows' Computer Programming 11 and 12 class, this is the first language that has gotten me really excited about using programming as a means to solve real world problems. When I think about the languages I learned about in university, I have no idea how I can use those languages to build awesome user interfaces that people can interact with in order to solve real world problems that they have. I had been learning how to do all of the underlying business logic that would manipulate data, though I was still without any experience building interfaces that obtain that data in the first place. With Elm, that hasn't been the case. I have been able to use Elm (and [Bootstrap](http://getbootstrap.com/)) to build this website, and I have been able to code in a way that I have found extremely enjoyable. 

And while that has been phenomenal and all, the problem is that Elm is still young, and there is no company that I know in Vancouver that using it. This means that I am investing my time in learning a language that, as of right now, won't get me hired by anyone local to me. 

> An awesome company that builds software for grammar and writing skills called [NoRedInk](https://www.noredink.com/) in San Francisco is, but they are currently one of the only companies in the world that are willing to yolo and give Elm a shot in a professional setting. I know you guys are hiring right now, so if you're in the market for some fresh young blood, give me a holler!

One thing that has been productive about this trimester is that I am a lot more sure about what I want my end goals to be. I am still sure that at the end of the day, I want to be improving the lives of everyday people in an aspect of life (probably education) that is close to me through software, and to be mostly autonomous in how I conduct my career. Whereas before I wanted to try everything to see what I liked, I was overlooking that outside of application development, **everything** doesn't necessarily fall under the category of my end goals. 

So where does that leave me? Well, I think Elm is keeping me on the right track. Since Elm compiles to JavaScript, I am able to use it to build web applications. I am also able to quickly spin up static web pages for clients if I ever decide to start doing freelance work. I am also able to both learn Elm and advertise my teaching services in the area by way of this website, and use tutoring as a means to keep a roof over my head.

The main problem is that I only have time for so much. Currently, my weekdays go as follows:

 1. Wake up.
 2. Eat Breakfast.
 3. Code in Elm, building this site.
 4. Eat Lunch.
 5. Code in Elm, building this site.
 6. Head to Oxford Learning, teach.
 7. Come home, eat dinner.
 8. Possibly work a bit more on my site, otherwise chill out.
 9. Sleep.

Within that schedule, I don't make time for things like applying for jobs, going in for interviews, and brushing up on C++. I think I could be juggling all of it, but it would mean less time on this site, and making less progress towards me privately tutoring again. 

For now, I think I am going to keep an eye out for jobs that I think would be super cool, while not necessarily exhausting over finding just any co-op job. 

... I could also be waking up a fair bit earlier too.  
  
  
###### Last Edited: Friday, December 7th 2015: 2:15pm

"""

takenout = "Game development, while cool, is not an industry that I think would be as fulfilling to me in that regard as web or native application development."
