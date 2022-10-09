# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/dotfiles/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="avit-da2k"

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
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

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
plugins=(git zsh-autosuggestions zsh-wakatime asdf)

source $ZSH/oh-my-zsh.sh

# User configuration

# Alias
alias please='sudo'
alias vim='nvim'
alias vi='vim'
alias update='yay -Syua && vim +PlugUpdate +qall && vim +CocUpdate +qall'
alias update-first='flatpak update -y && sudo snap refresh'
alias copy='rsync -a --stats --progress'
alias l='ls -lah --group-directories-first'
# Alias for localstack
alias awslocal='aws --endpoint-url=http://localhost:4566'
alias bat='batcat'
export BAT_THEME='OneHalfDark'


# Fly.io
alias flyctl='$HOME/.fly/bin/flyctl'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export TERM='screen-256color'

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi
export VISUAL='vim'
export EDITOR=$VISUAL

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Autojump
. /usr/share/autojump/autojump.zsh
export PROMP_COMMAND=$PROMPT_COMMAND"; history -a; history -n;"

# Cargo (Rust)
. "$HOME/.cargo/env"

# My GPG Key
export GPG_TTY=$(tty)

# My $PATH configs
export PATH=node_modules/.bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/bin:$PATH

# Add Yarn globals on $PATH
export PATH=$PATH:$(yarn global bin)

# Deno
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# Solana
export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"

# AVM (Anchor - Solana)
export PATH="$HOME/.avm/bin:$PATH"

# Histórico do iex
export ERL_AFLAGS="-kernel shell_history enabled"

# MXErgo Scroll Config
xinput set-prop pointer:"Logitech MX Ergo" "libinput Scroll Method Enabled" 0, 0, 1 && xinput set-prop pointer:"Logitech MX Ergo" "libinput Button Scrolling Button" 2

# My functions
function push () {
  git push origin $(git branch | grep \* | sed 's/\*\s//') $@
}

function pull () {
  git pull origin $(git branch | grep \* | sed 's/\*\s//') $@
}

function clone () {
  DIR=$(echo $1 | sed "s?^.*:\(.*\)/\(.*\).git?\1--\2?")
  git clone $1 $DIR
  cd $DIR
}

function copy-to-clipboard () {
  cat $1 | xclip -i -selection clipboard
}

function mktouch () {
  for p in $@; do
    mkdir -p $(dirname "$p")
  done

  touch $@
}

function mono () {
  case "$1" in
    "on")
      pacmd load-module module-remap-sink sink_name=mono master=alsa_output.usb-BEHRINGER_UMC404HD_192k-00.analog-surround-40 channels=2 channel_map=mono,mono 
      ;;
    "off")
      pacmd unload-module module-remap-sink 
      ;;
  esac
}

# Transformar vídeo ou audio para DaVinci Resolve
# Referência de uma outra forma de converter (outras opções do ffmpeg):
# https://alecaddd.com/davinci-resolve-ffmpeg-cheatsheet-for-linux/
function toresolve () {
  for f in *.*; do
    EXTENSION=${f##*.}

    case $EXTENSION in
      "mp4"|"mkv") DIST="mov" ;;
      "mp3") DIST="wav" ;;
    esac

    if [[ ! -z $DIST ]]; then
      mkdir $DIST
    fi

    case $DIST in
      "mov") 
        ffmpeg -i "$f" -vcodec mpeg4 -q:v 0 -acodec pcm_s16le "$DIST/${f%.*}.$DIST" 
        ;;
      "wav") 
        ffmpeg -i "$f" -acodec pcm_s16le "$DIST/${f%.*}.$DIST" 
        ;;
      *) 
        echo "Não existe configuração para arquivos com extensão $EXTENSION:u" >> error.log 
        ;;
    esac
  done
}

function fixvideo () {
  ffmpeg -i "$1" -map 0 -ignore_unknown -c copy "${1%.*}.fixed.${1##*.}"
}

function alsa-profile () {
  alsactl --file /media/storage/code/00-opensource/dotfiles/alsamixer-profiles/$1.state restore
}

# Deletar branches diferente de main, staging e dev
function delete-branches () {
  for i in $(git branch | grep -v -E -w '(main|staging|dev)$'); do
    git branch -D "$i"
  done
}


# Listar PRs no JS Ninja
function list-prs-jsninja () {
  gh pr list --search "is:open" --repo da2k/curso-javascript-ninja --limit 100
}

# Fechar PRs no JS Ninja
function close-prs-jsninja () {
  for id in $(gh pr list --search "is:open" --repo da2k/curso-javascript-ninja --limit 100 | awk '{print $1}'); do
    gh pr close $id --repo da2k/curso-javascript-ninja
  done
}

function cleanup-memory () {
  sudo sysctl -w vm.drop_caches=3
}

# get time in milisseconds
function ms () {
  TIMEFMT=%*E; time $@
}

function rescripts () {
  npm set-script rescript:dev "rescript build -w"
  npm set-script rescript:build rescript
  npm set-script rescript:clean "rescript clean"
}

# Cria novo projeto Node.js com TypeScript e Sucrase
# Uso: make-node <project-name>
function make-node () {
  echo "Creating project..."
  mkdir $1
  cd $1
  # Create package.json
  echo '{\n  "private": true,\n  "scripts": {\n    "dev": "nodemon --exec sucrase-node src/main.ts",\n    "type-check": "tsc --noEmit"\n  }\n}' >> package.json
  mkdir src
  # Create .editorconfig
  echo '# editorconfig.org\nroot = true\n\n[*]\nindent_size = 2\nindent_style = space\nend_of_line = lf\ncharset = utf-8\ntrim_trailing_whitespace = true\ninsert_final_newline = true\n\n[*.md]\ntrim_trailing_whitespace = false' >> .editorconfig
  # Create .gitignore
  echo "node_modules\ndist" >> .gitignore
  # Create tsconfig.json
  echo '{\n  "compilerOptions": {\n    "incremental": true,\n    "target": "ESNext",\n    "module": "commonjs",\n    "moduleResolution": "node",\n    "baseUrl": "./",\n    "paths": {\n      "@/*": ["./src/*"]\n    },\n    "outDir": "./dist",\n    "removeComments": true,\n    "esModuleInterop": true,\n    "forceConsistentCasingInFileNames": true,\n    "strict": true,\n    "skipLibCheck": true\n  },\n  "include": ["./src"]\n}' >> tsconfig.json
  # Crate src/main.ts
  echo "console.log('Yaay!')" >> src/main.ts
  echo "Installing dependencies..."
  yarn add --exact typescript >> /dev/null
  yarn add --dev --exact @types/node nodemon sucrase >> /dev/null
  yarn tsc --init >> /dev/null
  echo "Finished! Run yarn dev to start sucrase server."
}

# bun completions
[ -s "/home/fernando/.bun/_bun" ] && source "/home/fernando/.bun/_bun"

# bun
export BUN_INSTALL="/home/fernando/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
