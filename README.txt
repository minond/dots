These are configuration files to most of the tools I use day to day. Feel free to take anything you'd like.

What I typically do is clone this repo in my home directory and make links between the files stored in here (this repo) and files stored through out my system (mostly my home directory).

The `configure` script in the repo can be used to create those links. You can run it without arguments to get a list of that it can link for you. Once you're ready to use a cofiguration, just run the script with the item name(s).

  cd
  git clone http://github.com/minond/dots .dots
  ./configure --help
