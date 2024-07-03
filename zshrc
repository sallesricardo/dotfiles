# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/ricardo/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="crcandy"
ZSH_THEME="crunch"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

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
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR='vim'
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Automatically quote globs in URL and remote references
__remote_commands=(scp rsync)
autoload -U url-quote-magic
zle -N self-insert url-quote-magic
zstyle -e :urlglobber url-other-schema '[[ $__remote_commands[(i)$words[1]] -le ${#__remote_commands} ]] && reply=("*") || reply=(http https ftp)'

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias vim="nvim"
alias vi="nvim"
alias t='python ~/git/t/t.py --task-dir ~/tasks --list tasks'

export PATH=$PATH:/home/ricardo/.local/bin

# Paths to pyenv tools
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
# Path to flutter
export PATH=$PATH:/opt/flutter/bin
# Path to Go
export PATH=$PATH:/usr/local/go/bin
# Path to Android Studio
export PATH=$PATH:/opt/android-studio/bin
# Path to Cargo (rust)
export PATH=$PATH:~/.cargo/bin
# Paths to yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
# Path to a AppImages
export PATH="$PATH:/opt/AppImages"
# Path to bitward cli
export PATH="$PATH:/opt/bw"
# Path to NeoVim
export PATH=$PATH:/opt/nvim/bin
# Path to Flatpak programs
export PATH=$PATH:/var/lib/flatpak/exports/share:~/.local/share/flatpak/exports/share
# Path to Postman
export PATH=$PATH:/opt/postman
# Path to magalu cloud cli
export PATH=$PATH:/opt/magalu
# Path to .net-core
export PATH=$PATH:~/.dotnet/tools
# Path to Ruby
export PATH=$PATH:~/.rbenv/bin
eval "$(rbenv init - zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export ANDROID_HOME=/opt/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/ricardo/firebase/google-cloud-sdk/path.zsh.inc' ]; then . '/home/ricardo/firebase/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/ricardo/firebase/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/ricardo/firebase/google-cloud-sdk/completion.zsh.inc'; fi

