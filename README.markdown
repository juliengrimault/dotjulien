# ~julien

Contains the custom configuration for my [Oh My ZSH](https://github.com/robbyrussell/oh-my-zsh). install. The dot files are based on [Ryan Bates](http://github.com/ryanb/dotfiles)

## Environment

I am running on Mac OS X, but it will likely work on Linux as well with minor fiddling. You'll need to switch to ZSH with the following command:

    $ chsh -s /bin/zsh

## Installation

Clone the repo

    $ cd ~
    $ git clone git@github.com:juliengrimault/dotjulien.git ./.dotjulien
    $ cd .dotjulien

Install [Oh My ZSH](https://github.com/robbyrussell/oh-my-zsh).

    $ curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

You will then need to symlink the __custom__ directory in your oh-my-zsh install to the __oh-my-zsh-custom__ directory in the __dotjulien__ directory.

    $ rm -rf ~/.oh-my-zsh/custom
    $ ln -s ~/.dotjulien/oh-my-zsh-custom ~/.oh-my-zsh/custom

Install the dotfiles

    $ rake install

## And Now?

Enjoy.