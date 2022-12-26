# Mastodon Cache buster

Tested on Mastodon 3.5.3

It trims downs the undeletable cache assets for Avatars and Headers.

## Context

There's no buil-in method to purge the remote Avatars and Headers from Mastodon. The disk space used just keeps on growing with no way to delete those unlike Media and Previews which can be deleted daily with a cronjob.

## Do you need headers?

I do not need to see other user's headers. When I go to their profile I look at the posts, not the header.

You could even argue the same thing for the avatars. For now, the avatars will stay as they are.

## Solution

The script here is an attempt to lower the disk usage by replacing all the assets with a 1px minuscule file.

No files will be removed, just replaced with a smaller version with the same name.

The idea is that Mastodon wouldn't know the difference.

## Paths

`/home/mastodon/live/public/system/cache/accounts/headers`

## How to run

1. Change the permissions of the script
   1. `chmod u+x purge-headers.sh`
2. Run it:
   1. `./purge-headers.sh`

## How to develop

1. Duplicate the `original` files to a new `home` folder:
   1. `cp -R original home`
2. Run the script
   1. `sh purge-headers.sh`
