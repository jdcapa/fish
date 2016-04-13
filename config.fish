#!/usr/bin/env fish
set fish_greeting ""




# if [ -d $HOME/.bashrc.d ]; then
#     for x in $HOME/.bashrc.d/* ; do
#         if [[ "${x##*/}" != "bashrc.init" ]]; then
#             test -f "$x" || continue
#             test -x "$x" || continue
#             . "$x"
#         fi
#     done
# fi

















set LOCAL /usr/local
set PYTHON_LOC $HOME/.local

set -g -x PATH ~/bin $PATH
set -g -x PATH ~/.local/bin $PATH


set fish_function_path $fish_function_path "$PYTHON_LOC/lib/python2.7/site-packages/powerline/bindings/fish"
powerline-setup




# sudo fixes for apt-get (check if we have sudo rights and if apt-get exists)
if id -nG "$USER" | grep -qw sudo
    if test -e /usr/bin/apt-get
        alias install      'sudo apt-get install'
        alias remove       'sudo apt-get remove'
        alias update       'sudo apt-get update'
        alias upgrade      'sudo apt-get upgrade'
        alias dist-upgrade 'sudo apt-get dist-upgrade'
    end
end

