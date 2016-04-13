#!/usr/bin/env fish
function chromium_secure
    chromium-browser --proxy-server="socks5://localhost:4612" --host-resolver-rules="MAP * 0.0.0.0 , EXCLUDE localhost"
end