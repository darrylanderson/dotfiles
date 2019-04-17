A constantly changing set of my home dir configuration files.


### Prerequisites

In order to use, GNU stow is required.

    sudo apt-get install stow

Other packages that are configured by this repo:

    sudo apt-get install bash google-chrome conky mc tilix tmux


### Installation

After cloning the repo, use GNU stow to create the necessary symlinks.

    git clone git@github.com:darrylanderson/dotfiles.git ~/.dotfiles
    cd ~/.dotfiles
    stow bash chrome conky fonts mc tilix tmux  # Or whatever packages you want


