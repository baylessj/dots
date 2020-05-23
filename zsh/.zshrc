# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/bayle/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="spaceship"
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

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git, common-aliases, web-search, wd)
plugins=(wd)
source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim
export PATH="$HOME/sp-cli/:$PATH"

prompt_zsh_showStatus () {
  local color='238'
  state=`exec sp current`;
  if [ $state = "Error: Spotify is not running." ]; then
	echo -n "%F{grey27}test";
  else
    artist=`sp current | grep "^Artist" | cut -d ' ' -f 8-`;
    track=`sp current | grep "^Title" | cut -d ' ' -f 9-`;

      echo -n "%F{red}\uf230   %F{red}$artist - $track " ;

  fi
}
POWERLEVEL9K_MODE='nerdfont-fontconfig'
POWERLEVEL9K_CUSTOM_NOW_PLAYING='~/.nowplaying'
POWERLEVEL9K_CUSTOM_NOW_PLAYING_BACKGROUND='064'
POWERLEVEL9K_CUSTOM_NOW_PLAYING_FOREGROUND='000'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(ram)
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='000'
POWERLEVEL9K_DIR_HOME_BACKGROUND='064'
POWERLEVEL9K_DIR_HOME_FOREGROUND='000'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='064'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='000'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='064'
POWERLEVEL9K_RAM_BACKGROUND='238'
POWERLEVEL9K_RAM_FOREGROUND='203'
POWERLEVEL9K_OS_ICON_FOREGROUND='203'
POWERLEVEL9K_OS_ICON_BACKGROUND='238'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='064'

alias prosu="sudo chmod a+rw /dev/ttyACM0"
export PATH="$PATH:~/arcanist/bin"
export PATH="$PATH:/home/bayle/.local/bin"
alias cd_vex="cd /mnt/c/Users/Jonathan/vexRepos"
alias undo_arc="git reset --hard origin/HEAD"
build_okapi() {
	mkdir cmake-build-debug
	cd cmake-build-debug
	cmake -DCMAKE_BUILD_TYPE=Debug -G "CodeBlocks - Unix Makefiles" ..
	cmake --build . --target OkapiLibV5 -- -j 2
}
export EDITOR=vim
alias s="git status"
alias docs_dep="make && echo "copying" && cp -a ./build/* ../pros-website/"
# Install Ruby Gems to ~/gems
export GEM_HOME=$HOME/gems
export PATH=$HOME/gems/bin:$PATH

init_docs() {
        sudo apt-get install ruby-full
        sudo gem install sass
        sudo apt-get install nodejs
        sudo apt-get install npm
        sudo npm install -g bower grunt-cli
        sudo npm install
        sudo ln -s /usr/bin/nodejs /usr/bin/node
        sudo apt-get install --reinstall xdg-utils
        sudo ln -s start xdg-open
        sudo apt-get install w3m
        xdg-settings set default-web-browser w3m.desktop
}
alias cdg="cd ~/Documents/git/"
alias b="git branch"
alias 'git merge'='git merge --no-ff'
[[ -s /home/bayle/.autojump/etc/profile.d/autojump.sh ]] && source /home/bayle/.autojump/etc/profile.d/autojump.sh

autoload -U compinit && compinit -u
alias faps_hot='arm-none-eabi-addr2line -e ./bin/hot.package.elf -faps'
alias faps_cold='arm-none-eabi-addr2line -e ./bin/cold.package.elf -faps'
#exec stty -ixon # prevent ctrl+S from locking keyboard
alias transparent="xprop -id 0x2400001 -format _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY 0xFFFFFFFF"
jack_start() {
	pulseaudio --kill
	jack_control  start
}
jack_stop() {
	jack_control exit
	pulseaudio --start
}
export PATH="$PATH:/home/bayle/flutter/bin"
export PATH="$PATH:/home/bayle/Documents/android-studio-ide-183.5522156-linux/android-studio/jre/jre/bin"
alias lsh="ls -ld .?*"
alias flutter-keygen="keytool -genkey -v -keystore ~/key.jks -keyalg RSA -keysize 2048 -validity 9999 -alias autodo"
# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"
export PATH=$PATH:/home/bayle/gcc-arm-none-eabi-8-2019-q3-update/bin/
export JAVA_HOME=/home/bayle/Documents/android-studio/jre/

# added by travis gem
[ -f /home/bayle/.travis/travis.sh ] && source /home/bayle/.travis/travis.sh
export PATH=$PATH:/home/bayle/Documents/onefetch_linux_x86-64
export PATH=$PATH:/home/bayle/Documents/android-studio/jre/bin/
export PATH=$PATH:$HOME/flutter/.pub-cache/bin
alias flutter_codecov="flutter test -j 4 --coverage && genhtml coverage/lcov.info --output=coverage"
export PATH=~/.npm-global/bin:$PATH
export PATH="$PATH:/usr/lib/dart/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"
alias flutter_drive="flutter drive --target=test_driver/app.dart"

export PATH="$PATH:/home/bayle/.cargo/bin"

alias localize="flutter pub run json_intl -d lib/generated/localization.dart"
alias extract_pubspec="flutter pub run pubspec_extract -d lib/generated/pubspec.dart"
alias venv_start="source ./venv/bin/activate"
alias docker_attach="docker exec -it $(docker ps | awk 'NR > 1 {print $1; exit}') bash"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
