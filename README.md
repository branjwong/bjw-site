# Personal Website

## Development Environment Requirements

1. [npm](https://www.npmjs.com/) - [usage tutorial](https://www.youtube.com/watch?v=pU9Q6oiQNd0)
2. [elm](http://elm-lang.org/install) - [installation tutorial](http://alphydan.svbtle.com/elm-lang-on-ubuntu-14-04)
3. [grunt](http://gruntjs.com/) - [usage tutorial](https://www.youtube.com/watch?v=TMKj0BxzVgw)

## Setup

1. Make sure npm and elm are installed on your system.
2. Clone this to a directory of your choosing.
3. Run `npm install`.
4. Run `elm make`.
5. Run `grunt elm`.
6. Open `dist/html/index.html`.
7. ????
8. PROFIT!!!

## Content

- Teaching
	- teaching services advertising
	- 
- Programming
	- visual programming portfolio
	- latest blog about the making of this site
- Writing
	- blog
		- blogging about the making of this site
		- book talk
		- article share
	- guides on math topics (e.g. factoring trionimals, completing the square, learning style in general)
	- favourite quotes

- my own space?


## Design Decisions

#### Friend Feedback

- David: Color -> Bad
- Sam: Font -> Bad
- Both: daringfireball -> college kid feeling
- David: bootstrap.com -> more professional feeling

## Development Decisions

- purely client-side driven app
- elm to html/js compilation
- static css in .css stylesheet
- nginx server

## Version Numbers

Version numbers are essentially SemVer, except that I use semantic names, for the version roles, e.g. “[Breaking.Feature.Fix][1]” instead of “Major.Minor.Patch”.

[1] https://medium.com/javascript-scene/software-versions-are-broken-3d2dc0da0783#.qgkp9dimp