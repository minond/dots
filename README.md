#### dots

these are configuration files to most of the tools I use day to day. feel free
to take anything you'd like.

what I typically do is clone this repo in my home directory by running
`cd; git clone http://github.com/minond/dots .dots` and make links between
files stored in here (this repo) and files stored through out my system (mostly
my home directory).

the `configure` script in the repo can be used to create those links. you can
run it without arguments to get a list of that it can link for you. once you're
ready to use a cofiguration, just run the script with the item name(s), like
so: `./configure vim tmux`

![screenshot](http://i.imgur.com/uoFp4gu.png)
