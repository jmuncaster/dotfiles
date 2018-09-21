# Install plugins/vimrc specified by this repo

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

set -v

# Download/clone plugins
mkdir -p ~/.vim/bundle
cd ~/.vim/bundle
bash $DIR/scripts/download.sh

# Copy update script
cp $DIR/scripts/update.sh ~/.vim/bundle

# Update .vimrc
cp $DIR/dotvimrc ~/.vimrc

