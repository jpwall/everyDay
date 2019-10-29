# Day 5:
## flip

This is a shell script designed to emulate a flipbook. It takes two arguments, the first being the directory of numbered files to use for each of the pages. Next, it is the amount of time in seconds between each frame.

For example `./flip.sh /home/foo/pages 1` would go through the files named 1, 2, 3, etc. until there are no more with one second intervals between printing.

This script has an effect that I like to call cascading frames where the top line of each frame file is left unchanged as it goes through the files. I did not have enough time to add options to add or take a way this effect but it can be the jumping off point for another program on another day and possibly in another language.