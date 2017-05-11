# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

echo "Sourcing ~/.config/fish.config"
set -x EDITOR /usr/local/bin/vim
set -x PATH $HOME/bin $PATH /Developer/NVIDIA/CUDA-8.0/bin /Library/Frameworks/GDAL.framework/Headers
set -x HOMEBREW_GITHUB_API_TOKEN b27a9bdc6fcdad8674b1b210382cb4b36fc456fb
fish_vi_mode

set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

