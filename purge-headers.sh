#/bin/bash

for i in `find ./test -type f \( -iname \*.jpg -o -iname \*.jpeg -o -iname \*.png \) -type f`; do
    echo "$i"
done