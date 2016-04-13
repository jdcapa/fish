#!/usr/bin/env fish
function doi
    curl -sLH "Accept: text/bibliography; style=bibtex" http://dx.doi.org/$argv | sed -r 's/[a-Z]*=/\n    &/g' | sed 's/}}/}\n}\n/g'
end