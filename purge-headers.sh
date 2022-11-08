#/bin/bash
for file in `find /home/mastodon/live/public/system/cache/accounts/headers -type f \( -iname \*.jpg -o -iname \*.jpeg -o -iname \*.png -o -iname \*.webp \) -type f`; do
  rm "$file"

  if [ "${file: -5}" == ".jpeg" ]
  then
    echo "This is a JPEG! $file"
    SOURCE="pixel.jpeg"
  fi

  if [ "${file: -4}" == ".jpg" ]
  then
    echo "This is a JPG! $file"
    SOURCE="pixel.jpg"
  fi

  if [ "${file: -4}" == ".png" ]
  then
    echo "This is a PNG! $file"
    SOURCE="pixel.png"
  fi

  if [ "${file: -5}" == ".webp" ]
  then
    echo "This is a webP! $file"
    SOURCE="pixel.webp"
  fi

  cp "$SOURCE" "$file"
done