#!/bin/bash
for d in $(find $HOME/.vim/bundle -mindepth 1 -maxdepth 1 -type d | grep -v ^[.]$) ; do
  echo git clone --recursive $(cat $d/.git/config | grep -m 1 url | cut -c 8-) 
done

