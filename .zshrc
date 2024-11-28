export ZSH="$HOME/.oh-my-zsh"
export CDPATH=".:$HOME/git:$HOME/git/Cirrus"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

GPG_TTY=$(tty)
export GPG_TTY

export RAVENDB_IMAGE=ravendb/ravendb:6.0.0-ubuntu.22.04-arm64v8

alias ddb="docker compose up -d --build -V sql sql_migrations ravendb database_seeder"
alias awsdaily="python3 ~/.aws/refreshMFA.py"
export LANG=en_US.UTF-8
export LANG=en_US.UTF-8
source <(fzf --zsh)

alias cfigpull="~/git/dev-ex-config/config-sync.sh pull"
alias cfigpush="~/git/dev-ex-config/config-sync.sh push"
alias tmuxdev="~/git/dev-ex-config/dev-tmux.sh"

# Run CC BE stuff
alias devscript="dotnet run --project src/Scripts/Scripts --launch-profile Scripts.Scripts.Dev"
alias prodscript="dotnet run --project src/Scripts/Scripts --launch-profile Scripts.Scripts.Prod"

alias localrun="dotnet run --project CC.API --launch-profile Local-Docker-CC.API"
alias devrun="dotnet run --project CC.API --launch-profile Dev-CC.API"

eval "$(starship init zsh)"
