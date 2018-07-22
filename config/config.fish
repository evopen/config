export http_proxy=http://127.0.0.1:12333
export https_proxy=http://127.0.0.1:12333
export GIT_AUTHOR_EMAIL=520dhh@gmail.com
alias em="emacsclient -c"
alias vm="nvim"
export GPG_TTY=(tty)

if not test -n "$TMUX"
    source ~/.profile
    tmux a; or tmux
end

# emacs ansi-term support
if test -n "$EMACS"
    set -x TERM eterm-color
end

# this function may be required
function fish_title
    true
end

set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
