for d in (ls -1 ~/.vim/bundle) ; echo git clone (cat ~/.vim/bundle/$d/.git/config | grep -m 1 url | cut -c 8-) ; end > download.sh
