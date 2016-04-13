#!/usr/bin/env fish
function ssht
    ssh -ND 4612 -v $argv
end