######### add to zshrc
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/$USER/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  
  #! TERMINAL/FILE-TREE MANIPULATION ###########################
  autojump

  #! GIT AND STUFF #############################################
  git
  git-hubflow
  # git-flow
  # gitfast # git autocompletion but faster
  # git-flow-avh
  git-auto-fetch
  git-escape-magic # auto escapes characters when typing a git command
  git-extras
  #! REMEMBER THAT THE GIT FLOW TOOL HAS TO BE INSTALLED SEPARATELY

  #! RANDOM STUFF AND TOOLS I THINK ARE COOL ###################
  # bundler     # not using, but might look into in the future,
  vscode        # give some nice aliases for command line use of vscode

  #! AUTOCOMPLETION AND STUFF ##################################
  zsh-autosuggestions
    # in order to use zsh-autosuggestions, you gotta run the thingy below
    # git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    # alternatively, i cloned it into $ZSH/plugins/zsh-autosuggestions and it worked just fine.
  npm
  yarn
  aws
  heroku
  node
  nvm
  # docker
  docker-compose
  
  #! MEH #######################################################
  dotenv

  #! UTILS #####################################################
   aliases # list aliases
  alias-finder
  tmux
  fzf
  command-not-found
  compleat # this should add autocompletion to pretty much any command
  copybuffer # adds <C-o> to copy current command
  zsh-interactive-cd # fzf like for cd<Tab>
  
  #! PRETTY ####################################################
  zsh-syntax-highlighting
  colored-man-pages
  colorize # this needs ZSH_COLORIZE_TOOL to be set up
  git-prompt

  #! VIM INTEGRATION
  # vi-mode
  # zsh-vi-mode
)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

########### FROM wsl_setup.sh #############################################################################

### my zsh settings ############################################################
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell" # default theme
# ZSH_THEME="avit"
# ZSH_THEME="bira"

# autojump
. /usr/share/autojump/autojump.sh

. $HOME/.zshopts.zsh

export XDG_CONFIG_HOME="$HOME/.config"

# set up nvm (not needed if you're using the nvm plugin)
# export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

source $ZSH/oh-my-zsh.sh

# add yarn to global
# export PATH="$PATH:`yarn global bin`"

# python needs this??
export PATH="$PATH:$HOME/.local/bin"

# which command to use to run vs code (used for git editor config)
export VSCODE_EDITOR="code-insiders"

# if using nvim, set it as global editor
if command -v nvim &> /dev/null; then
  export EDITOR="nvim"
fi

# setup for colorize plugin
ZSH_COLORIZE_TOOL="pygmentize"
ZSH_COLORIZE_CHROMA_FORMATTER="terminal256"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# set DISPLAY variable to the IP automatically assigned to WSL2
# export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0

[ -f "/$HOME/.ghcup/env" ] && source "/$HOME/.ghcup/env" # ghcup-env

# add custom commands to path
export PATH="$PATH:$HOME/commands"

# Add current path to PATH
export PATH="$PATH:."

### Add Aliases
ALIASFILE=~/.aliasesrc
if [ -f "$ALIASFILE" ]; then
  source "$ALIASFILE"
fi

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

## If 't' exists (my tmux alias), run it
if alias t &> /dev/null; then
  t
fi

#
# MODE_INDICATOR="%F{white}N %f"
# INSERT_MODE_INDICATOR="%F{yellow}I %f"
# PROMPT="$PROMPT\$(vi_mode_prompt_info)"
# # VISUAL='vi'
#
# TRAPINT() { 
#   if [[ "${KEYMAP}" = "viins" || "${KEYMAP}" = "main" ]]; then
#     zle vi-cmd-mode
#     # zle reset-prompt
#   else
#     return ${128+$1}
#   fi
# }


eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
