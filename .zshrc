echo ""
echo "Hello Netanel!"
echo ""

eval "$(starship init zsh)"

export EDITOR='code'

export ANDROID_HOME=/Users/netanelmizrahi/Library/Android/sdk
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/tools/bin:$PATH
export PATH="$HOME/.fastlane/bin:$PATH"

# -------
# Aliases
# -------
alias ..='cd ..'
alias ll='ls -lt'
alias lla='ls -la'
alias ls='ls -F'
alias me='cd ~/netanel'
alias prj='cd ~/projects'
alias wrk='cd ~/work'


# ----------------------
# Apps Aliases
# ----------------------
alias sss='scrcpy'
alias ncdu='ncdu'
alias yt='yt-dlp -f "bv*+ba/b"'
alias adb9090='adb reverse tcp:9090 tcp:9090'
alias dev='npm run dev'
alias ed='APP_VARIANT=development npx expo'

# ----------------------
# Git Aliases
# ----------------------
alias ga='git add .'
alias gap='git add --patch'
alias gb='git branch'
alias gc='git checkout'
alias gdb='git branch -d'
alias gm='git commit -m'
alias gnb='git checkout -b'
alias gpd='git pull origin new-design-dev'
alias gl='git log --oneline --graph --decorate'
alias gs='git status'

# bun completions
[ -s "/Users/netanelmizrahi/.bun/_bun" ] && source "/Users/netanelmizrahi/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin" 




export NVM_DIR="$HOME/.nvm"
. "/opt/homebrew/opt/nvm/nvm.sh"

export PATH=$PATH:$HOME/.maestro/bin

# place this after nvm initialization!
autoload -U add-zsh-hook

load-nvmrc() {
  local nvmrc_path
  nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version
    nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$(nvm version)" ]; then
      nvm use
    fi
  elif [ -n "$(PWD=$OLDPWD nvm_find_nvmrc)" ] && [ "$(nvm version)" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}

add-zsh-hook chpwd load-nvmrc
load-nvmrc

PATH=~/.console-ninja/.bin:$PATH
# Added by Windsurf
export PATH="/Users/netanelmizrahi/.codeium/windsurf/bin:$PATH"
