for d in $(find -mindepth 1 -maxdepth 1 -type d) ; do
  cd $d
  git pull
  cd -
done
