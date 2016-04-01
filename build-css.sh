#! /bin/sh

# The script that builds the Elm-CSS files.
# When adding a new page, make sure the the script entry is added as well.
# Needs '&&' so that the script stops when it hits a compiler error.


elm-css src/shared/Style/Stylesheets.elm --output ./assets