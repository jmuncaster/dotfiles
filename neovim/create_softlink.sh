SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
CONFIG_DIR=$HOME/.config/nvim

SRC_INIT_VIM=$SCRIPT_DIR/init.vim
DST_INIT_VIM=$CONFIG_DIR/init.vim

if [ ! -e $CONFIG_DIR ] ; then
  echo "mkdir -p $CONFIG_DIR"
  mkdir -p $CONFIG_DIR
fi

if [ -e $DST_INIT_VIM ] ; then
  echo "backup $DST_INIT_VIM to: ${DST_INIT_VIM}.bak"
  mv ${DST_INIT_VIM} ${DST_INIT_VIM}.bak
fi

echo "creating softlink: $DST_INIT_VIM"
cd $CONFIG_DIR
ln -s $SRC_INIT_VIM

