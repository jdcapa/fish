#!/usr/bin/env fish
function pdfc
    # Requires the pdf toolkit. This removes the nasty advertisement page 
    #  from a given pdf (scientific papers)
    pdftk $argv cat 2-end output temp0ax.pdf && mv temp0ax.pdf $argv
end