# .bashrc


# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi


# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

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

# Created by `pipx` on 2025-08-04 08:08:39
export PATH="$PATH:/home/maxou/.local/bin"
