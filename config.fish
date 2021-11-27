# Before using this, make sure to:
# 1. install Fisherman: https://github.com/fisherman/fisherman
# 2. make sure you have correct fishfile: ~/.config/fish/fishfile
# 3. run `fisher` to install all dependencies from fishfile

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/ky/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

set -x LANG "en_US.UTF-8"
set -x LC_COLLATE "POSIX"

# NVM:
export NVM_DIR="~/.nvm"

# Show date in the right side of the line
function fish_right_prompt
  set_color $fish_color_autosuggestion[1]
  date +"%a, %b %d [%H:%M:%S]"
  set_color normal
end

# Empty fish
function fish_greeting
end

###
###
###

function ber
  bundle exec rake $argv
end

function berails
  bundle exec rails s  -b 0.0.0.0
end

function gall
  git add --all .; git commit -m "$argv"
end

function gp
  git push origin master
end

function inst
  sudo apt-get install $argv
end

function upd
  sudo apt-get update
end

function upgr
  sudo apt-get update ; sudo apt-get upgrade
end

function xb
  echo 'Set Brightness from 0.0 to 1.0'
  xrandr --output HDMI-0 --brightness $argv
  xrandr --output DP-1 --brightness $argv
  xrandr --output HDMI-1 --brightness $argv
  xrandr --output DP-2 --brightness $argv
end

function py_forever -a path -a file
  cd $path
  conda activate tfg
  while true
    python $file
  end
end
