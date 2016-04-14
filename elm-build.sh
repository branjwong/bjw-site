#! /bin/sh

# The script that builds the Elm files.
# When adding a new page, make sure the the script entry is added as well.
# Needs '&&' so that the script stops when it hits a compiler error.


# Programming
elm make src/pages/programming/bingo/Bingo.elm --output dist/js/programming/bingo/bingo.js &&

# Writing
elm make ./src/pages/writing/april-fools.elm --output ./dist/js/writing/april-fools.js &&
elm make ./src/pages/writing/moving-back-to-japan.elm --output ./dist/js/writing/moving-back-to-japan.js &&
elm make ./src/pages/writing/what-i-am-doing-with-my-life.elm --output ./dist/js/writing/what-i-am-doing-with-my-life.js &&
elm make ./src/pages/writing/cross-game.elm --output ./dist/js/writing/cross-game.js &&

# Teaching
elm make ./src/pages/teaching/trinomial-generator-worksheet.elm --output ./dist/js/teaching/trinomial-generator-worksheet.js &&
elm make ./src/pages/teaching/factoring-trinomials.elm --output ./dist/js/teaching/factoring-trinomials.js &&
elm make ./src/pages/teaching/tutor-plug.elm --output ./dist/js/teaching/tutor-plug.js &&

elm make ./src/pages/teaching/tutor-plug/japanese.elm --output ./dist/js/teaching/tutor-plug/japanese.js &&
elm make ./src/pages/teaching/tutor-plug/phys12.elm --output ./dist/js/teaching/tutor-plug/phys12.js &&
elm make ./src/pages/teaching/tutor-plug/phys11.elm --output ./dist/js/teaching/tutor-plug/phys11.js &&
elm make ./src/pages/teaching/tutor-plug/precalc11.elm --output ./dist/js/teaching/tutor-plug/precalc11.js &&
elm make ./src/pages/teaching/tutor-plug/precalc12.elm --output ./dist/js/teaching/tutor-plug/precalc12.js &&
elm make ./src/pages/teaching/tutor-plug/math11.elm --output ./dist/js/teaching/tutor-plug/math11.js &&
elm make ./src/pages/teaching/tutor-plug/math10.elm --output ./dist/js/teaching/tutor-plug/math10.js &&

# Main Pages
elm make ./src/pages/programming.elm --output ./dist/js/programming.js &&
elm make ./src/pages/writing.elm --output ./dist/js/writing.js &&
elm make ./src/pages/teaching.elm --output ./dist/js/teaching.js &&
elm make ./src/pages/home.elm --output ./dist/js/home.js