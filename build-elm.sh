#! /bin/sh

# The script that builds the Elm files.
# When adding a new page, make sure the the script entry is added as well.

# CSS
elm-css src/shared/Style/Stylesheets.elm --output ./assets

# Programming
elm make src/pages/programming/bingo/Bingo.elm --output dist/js/programming/bingo/bingo.js

# Writing
elm make ./src/pages/writing/what-i-am-doing-with-my-life.elm --output ./dist/js/writing/what-i-am-doing-with-my-life.js
elm make ./src/pages/writing/cross-game.elm --output ./dist/js/writing/cross-game.js
elm make ./src/pages/writing/factoring-trinomials.elm --output ./dist/js/writing/factoring-trinomials.js

# Teaching
elm make ./src/pages/teaching/japanese.elm --output ./dist/js/teaching/japanese.js
elm make ./src/pages/teaching/phys12.elm --output ./dist/js/teaching/phys12.js
elm make ./src/pages/teaching/phys11.elm --output ./dist/js/teaching/phys11.js
elm make ./src/pages/teaching/precalc11.elm --output ./dist/js/teaching/precalc11.js
elm make ./src/pages/teaching/math11.elm --output ./dist/js/teaching/math11.js
elm make ./src/pages/teaching/math10.elm --output ./dist/js/teaching/math10.js

# Main Pages
elm make ./src/pages/programming.elm --output ./dist/js/programming.js
elm make ./src/pages/writing.elm --output ./dist/js/writing.js
elm make ./src/pages/teaching.elm --output ./dist/js/teaching.js
elm make ./src/pages/home.elm --output ./dist/js/home.js 