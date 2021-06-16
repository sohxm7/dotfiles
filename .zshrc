export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="/home/soham/.oh-my-zsh"
export MANPAGER="nvim -c 'set ft=man' -"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions fast-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

### VIM
alias v='nvim'
alias sv='sudo nvim'
alias vzh='nvim $HOME/.zshrc'
alias vi3='nvim $HOME/.config/i3/config'
alias vbs='nvim $HOME/.config/bspwm/bspwmrc'
alias vsx='nvim $HOME/.config/sxhkd/sxhkdrc'
alias vrc='nvim $HOME/.config/nvim/init.vim'
alias vpb='nvim $HOME/.config/polybar/config'
alias val='nvim $HOME/.config/alacritty/alacritty.yml'

### COLOR
alias xat='lolcat'
alias ls='ls --color=auto'
alias cat='highlight -O ansi --force'
alias grep='grep --color'
alias nef='neofetch | lolcat'
alias ccat='pygmentize -g'

### GAME
alias zero='prime-run 0ad'

### ANDROID
alias droid_list='simple-mtpfs -l'
alias droid_connect='simple-mtpfs --device 1 Mobile/'
alias droid_disconnect='fusermount -u Mobile'

### NAVIGATION
alias dow='cd $HOME/Downloads'
alias pic='cd $HOME/Pictures'
alias vid='cd $HOME/Videos'

### OTHER
alias c='clear'
alias py='python'
alias rng='ranger'
alias clc='calcurse'
alias cls='clear && ls'
alias timer='termdown'
alias pac='sudo pacman'
alias sxi='sxiv * -t'
alias crpt='curl rate.sx'
alias dragon='dragon-drag-and-drop'
alias winec='cd $HOME/.wine/drive_c/'
alias wifix='sudo systemctl restart NetworkManager'
alias ffrec='ffmpeg -y -f x11grab -s 1920x1080 -i :0.0'

### PDF
alias grokking='zathura ~/Downloads/grokking.pdf & disown'
alias handbook='zathura ~/Downloads/book.pdf & disown'
alias advanced='zathura ~/Downloads/clrs.pdf & disown'

stty stop undef	
autoload -U colors && colors	
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt

fpath+=$HOME/.zsh/pure

PROMPT="%F{27}%~%f%F{red} $ %f"
#(cat ~/.cache/wal/sequences &)
echo ""
