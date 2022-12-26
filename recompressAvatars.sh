#! /usr/bin/bash -xe

PROGRAM=$(basename $0 .sh)
AVATAR_DIR=$HOME/live/public/system/cache/accounts/avatars
LAST_RUN=$HOME/etc/$PROGRAM.last
[ -d $HOME/etc ] || mkdir $HOME/etc

find $AVATAR_DIR -newer $LAST_RUN -name '*.jpg' -print0 | xargs -0 jpegoptim --verbose --preserve --threshold=1 --max=45
find $AVATAR_DIR -newer $LAST_RUN -name '*.jpeg' -print0 | xargs -0 jpegoptim --verbose --preserve --threshold=1 --max=45
find $AVATAR_DIR -newer $LAST_RUN -name '*.png' -print0 | xargs -0 pngquant --verbose --ext=.png --force --speed 10 --quality 45-50 --skip-if-larger

touch $LAST_RUN
