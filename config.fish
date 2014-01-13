set fish_path $HOME/.oh-my-fish
set -x LANG "en_US.UTF-8"
set -x LC_COLLATE "POSIX"

# styling
set fish_theme bobthefish

. $fish_path/oh-my-fish.fish

function fish_right_prompt
  set_color $fish_color_autosuggestion[1]
  date +"%a, %b %d [%I:%M]"
  set_color normal
end

function fish_greeting
  
end

# plugins
#set fish_plugins rake

# rubymotion functions
function ripad
  rake device_family=ipad
end

function rdebug
  rake debug=1 no_continue=1
end

function rtf
  rake testflight notes="$argv"
end

# git functions
function ga
  git add .; git commit -m "$argv"
end

function gall
  git add --all .; git commit -m "$argv"
end

function gp
  git push origin master
end

# other stuff
function v
  vim
end

function p3
  python3
end

# PATH vars
set PATH usr/local/bin $PATH

# Android
set PATH /Applications/AndroidSDK/sdk/tools $PATH
set PATH /Applications/AndroidSDK/sdk/platform-tools $PATH

# rbenv shims
set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1
