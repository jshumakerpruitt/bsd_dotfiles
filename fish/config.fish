if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_key_bindings fish_user_key_bindings
    alias gitc='git commit -m '
    alias gita='git add . '
    alias gits='git status'
    alias gitd='git diff'
    alias gitl='git log'
    alias vi='emacs'
    alias em='emacs'
    if test -f ~/.secret_aliases
        source ~/.secret_aliases
    end

    set -x GEM_HOME "/your/path/to/gems"
    set -x PATH "$GEM_HOME/bin" $PATH

    export PATH="$HOME/.local/bin:$PATH"
    export PATH="$HOME/.config/emacs/bin:$PATH"
end
