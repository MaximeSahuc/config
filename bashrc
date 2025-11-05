# .bashrc


# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi


# User specific environment
export PATH="$HOME/.local/bin:$HOME/bin:/snap/bin/:$HOME/opt/zig-0.15.1/:$PATH"

# Import aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Custom exports
if [ -f ~/.exports ]; then
    . ~/.exports
fi

# User specific aliases and functions
if [ -d ~/.custom/bashrc.d ]; then
    for rc in ~/.custom/bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
  tmux attach-session -t default || tmux new-session -s default
fi
