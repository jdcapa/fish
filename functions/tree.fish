#!/usr/bin/env fish
function tree
    find -type d | sed -e "s/[^-][^\/]*\//  |/g" -e "s/|\([^ ]\)/|-\1/"
end