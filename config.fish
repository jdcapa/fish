

set LOCAL /usr/local
set PYTHON_LOC $HOME/.local

set -g -x PATH ~/bin $PATH
set -g -x PATH ~/.local/bin $PATH
set fish_function_path $fish_function_path "$PYTHON_LOC/lib/python2.7/site-packages/powerline/bindings/fish"
powerline-setup

# This is a region where non-standard programs are used. We should test before.
# sudo fixes for apt-get (check if we have sudo rights and if apt-get exists)
if "groups $USER | grep &>/dev/null '\bsudo\b'"
    if test -e /usr/bin/apt-get
        alias install      'sudo apt-get install'
        alias remove       'sudo apt-get remove'
        alias update       'sudo apt-get update'
        alias upgrade      'sudo apt-get upgrade'
        alias dist-upgrade 'sudo apt-get dist-upgrade'
    end
end


# # fish git prompt
# set __fish_git_prompt_showdirtystate 'yes'
# set __fish_git_prompt_showstashstate 'yes'
# set __fish_git_prompt_showupstream 'yes'
# set __fish_git_prompt_color_branch yellow
#
# # Status Chars
# set __fish_git_prompt_char_dirtystate '⚡'
# set __fish_git_prompt_char_stagedstate '→'
# set __fish_git_prompt_char_stashstate '↩'
# set __fish_git_prompt_char_upstream_ahead '↑'
# set __fish_git_prompt_char_upstream_behind '↓'

#
#function fish_prompt
#        set last_status $status
#        set_color $fish_color_cwd
#        printf '%s' (prompt_pwd)
#        set_color normal
#        printf '%s ' (__fish_git_prompt)
#       set_color normal
#end
