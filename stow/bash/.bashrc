# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export FZF_DEFAULT_OPS="--height 40% --layout reverse --info inline --border --cycle --reverse --color=bg+:343d46,gutter:-1"
export FZF_DEFAULT_COMMAND="fd --type f"

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--reverse --preview 'bat --color=always --line-range :50 {}'"

export FZF_ALT_C_COMMAND="fd --type d ."
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -50'"

export FZF_TMUX=1

# byobu
[ -r /home/jorringe/.byobu/prompt ] && . /home/jorringe/.byobu/prompt   #byobu-prompt#
