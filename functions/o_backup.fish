#!/usr/bin/env fish
function o_backup
    # Back-up the essential files from an Orca run to a remote side
    from=$argv[1]
    to=$argv[2]
    rsync -ralvPze ssh \
         --exclude="*tmp*" \
         --exclude="*atom*" \
         --include="*/" \
         --include="*.sh" \
         --include="*.inp" \
         --include="*.py" \
         --include="*.out" \
         --include="*.gbw" \
         --include="*.hess" \
         --include="*.opt" \
         --include="*.engrad" \
         --include="*.xyz" \
         --include="*.trj" \
         --include="*.job" \
         --exclude="*" "$from" "$to"
end