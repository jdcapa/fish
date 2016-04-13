#!/usr/bin/env fish
function c42
    if [ command -v 'c4' > /dev/null 2>&1 ]
        watch -t -c -n10 "pwd && c4 -s OUT && echo '\nLast 10 lines of the OUTPUT file:\n' && tail -n10 OUT"
    else
        echo 'c4 is not installed, check https://github.com/jdcapa/CfourMonitoring'
    end
end