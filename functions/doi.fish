#!/usr/bin/env fish
function doi
    curl -sLH "Accept: text/bibliography; style=bibtex" https://doi.org/$argv | sed -r 's/[a-Z]*=/\n    &/g' | sed 's/}}/}\n}\n/g'
end
