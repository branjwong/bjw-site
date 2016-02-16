Personal Website
================

bjw-site is a site for Brandon J Wong built primarily with Elm.

Installation
------------

## Environment Requirements

1. [elm](http://elm-lang.org/install) - [installation tutorial](http://alphydan.svbtle.com/elm-lang-on-ubuntu-14-04)
1. [npm](https://www.npmjs.com/) - [usage tutorial](https://www.youtube.com/watch?v=pU9Q6oiQNd0)

#### Using git (recommended)

```sh
git clone https://github.com/branjwong/bjw-site.git
sh install.sh
```

Usage
-----

```sh
sh build-elm.sh
sh run-backend.sh
```

Content
-------

##### Teaching

- teaching services advertising

##### Programming

- visual programming portfolio
- latest blog about the making of this site

##### Writing

- blog
	- blogging about the making of this site
	- book talk
	- article share
- guides on math topics (e.g. factoring trionimals, completing the square, learning style in general)
- favourite quotes

Design Decisions
----------------

##### Friend Feedback

- David: Color -> Bad
- Sam: Font -> Bad
- Both: daringfireball -> college kid feeling
- David: bootstrap.com -> more professional feeling

##### Development Decisions

- purely client-side driven app
- elm to html/js compilation
- static css in .css stylesheet
- nginx server

## Version Numbers

Version numbers are essentially SemVer, except that I use semantic names, for the version roles, e.g. “[Breaking.Feature.Fix][ver]” instead of “Major.Minor.Patch”.

[ver]: https://medium.com/javascript-scene/software-versions-are-broken-3d2dc0da0783#.qgkp9dimp

TODO
----

1. Finish Teaching Page
  - Prices?
  - Related Experience: Years teaching that course.
  - School grade in that course.
  - My SFU Transcript
1. Finish Home Page
1. Search Engine Optimization
1. Update Elm Version
1. Create a Backend
1. Routing
1. Forms - Contact Me
1. Logo
  - Similar to Evan's Elm Logo - Tangrams
  - Maybe use Origami instead.
  - Make a B shape out of them for Brandon related stuff.
  - Make a T shape for teaching related stuff.

License
-------

[MIT](LICENSE)

Author
------

Brandon J Wong
