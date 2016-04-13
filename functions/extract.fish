#!/usr/bin/env fish
function extract
    if test -e $argv
        switch $argv
            case '*.tar.bz2'
               tar xvjf $argv
            case '*.tar.gz'
                tar xvzf $argv
            case '*.tar.xz'
                tar xvJf $argv
            case '*.bz2'
                bunzip2 $argv
            case '*.rar'
                unrar x $argv
            case '*.gz'
                gunzip $argv
            case '*.tar'
                tar xvf $argv
            case '*.tbz2'
                tar xvjf $argv
            case '*.tgz'
                tar xvzf $argv
            case '*.zip'
                unzip $argv
            case '*.Z'
                uncompress $argv
            case '*.7z'
                7z x $argv
            case '*'
                echo "'$argv' cannot be extracted via >extract<"
        end
    else
        echo "'$argv' is not a valid file"
    end
end
