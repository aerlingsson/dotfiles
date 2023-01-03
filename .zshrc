# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
bindkey -v # VI mode
export PS1="%n:%~%# " # Prompt string
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/aerlingsson/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

##### Custom things #####
# Editor and git
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
export EDITOR='nvim'

# asdf auto-complete
. $HOME/.asdf/asdf.sh
#. $HOME/.asdf/completions/asdf.bash

# kitty
## ssh shell
if [ "$TERM" = "xterm-kitty" ]; then
  alias ssh="kitty +kitten ssh"
fi

### ssh-agent
if [ -f ~/.ssh/agent.env ] ; then
    . ~/.ssh/agent.env > /dev/null
    if ! kill -0 $SSH_AGENT_PID > /dev/null 2>&1; then
        echo "Stale agent file found. Spawning a new agent. "
        eval `ssh-agent | tee ~/.ssh/agent.env`
        ssh-add
    fi
else
    echo "Starting ssh-agent"
    eval `ssh-agent | tee ~/.ssh/agent.env`
    ssh-add
fi

## images - icat
alias icat="kitty +kitten icat"

# curl with times
curltime() {
    curl -so /dev/null -w "\
   namelookup:  %{time_namelookup}s\n\
      connect:  %{time_connect}s\n\
   appconnect:  %{time_appconnect}s\n\
  pretransfer:  %{time_pretransfer}s\n\
     redirect:  %{time_redirect}s\n\
starttransfer:  %{time_starttransfer}s\n\
-------------------------\n\
        total:  %{time_total}s\n" "$@"
}

# Exports
export DOTNET_ROOT=/snap/dotnet-sdk/current
export FZF_DEFAULT_COMMAND="fdfind --exclude={.git,.idea,.vscode,.sass-cache,node_modules,build,tmp} --type f"
PATH=$PATH:$HOME/.local/bin
