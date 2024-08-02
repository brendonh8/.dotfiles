export PATH="/opt/homebrew/bin:$PATH"

alias cx="compass"
alias cw="compass workspace"
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
export IGNORE_PYTHON_VERSION_REQUIREMENT="1"  ##compass5ea843
export GITROOT="/Users/brendon.happ/development"  ##compass5ea843
export PATH="$PATH:$HOME/Library/Python/3.9/bin:$PATH"  ##compass5ea843

alias ef="exec fish"
# environment variables, used by CLI tools like git
export EDITOR="hx"
export VISUAL="hx"
export GIT_EDITOR="hx"
export PAGER=less

export HELIX_RUNTIME=/usr/local/Cellar/helix/23.05
export NNN_FIFO="/tmp/nnn.fifo" NNN_PLUG='p:preview-tui;d:dragdrop'
neofetch
# check if fish is installed
if ! command -v fish &> /dev/null; then
  echo "Fish shell is not installed."
  return
fi

# check if the current shell is interactive
if [[ $- != *i* ]]; then
  return
fi

# get the name of the parent shell process
parent_shell=$(ps -p $PPID -o comm=)

# check if the parent shell is not fish or a subshell
if [[ "$parent_shell" != "fish" ]] && [[ "$parent_shell" != "bash" ]] && [[ "$parent_shell" != "zsh" ]]; then
  # check if the current shell is not fish or a subshell
  if [[ "$0" != "fish" ]] && [[ "$0" != "-fish" ]] && [[ "$0" != "/usr/bin/fish" ]] && [[ "$0" != "/opt/homebrew/bin/fish" ]]; then
    exec fish
  fi
fi
