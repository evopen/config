export http_proxy=http://127.0.0.1:1087
export https_proxy=http://127.0.0.1:1087
export GIT_AUTHOR_EMAIL=520dhh@gmail.com
source /usr/local/miniconda3/etc/fish/conf.d/conda.fish
alias em="emacsclient -c"
alias vm="nvim"
export GPG_TTY=(tty)

if not test -n "$TMUX"
    source ~/.profile
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
