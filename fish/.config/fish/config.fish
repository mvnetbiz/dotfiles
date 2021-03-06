set fish_greeting
set -gx EDITOR vim

set fish_function_path $fish_function_path "/usr/lib/python3.6/site-packages/powerline/bindings/fish"
powerline-setup

if not pgrep -fx "/usr/bin/python /usr/bin/powerline-daemon -q" 1>/dev/null
        powerline-daemon -q
end

abbr l "ls -lhgG --time-style='+' --color | tail +2 | cut -d ' ' -f 3-"
abbr r "/usr/share/vim/vim80/macros/less.sh"

