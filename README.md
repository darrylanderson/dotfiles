A constantly changing set of my home dir configuration files.


## Prerequisites

In order to use, GNU stow is required.

    sudo apt-get install stow

Other packages that are configured by this repo:

    sudo apt-get install bash google-chrome conky mc tilix tmux vim


## Installation

After cloning the repo, use GNU stow to create the necessary symlinks.

    git clone git@github.com:darrylanderson/dotfiles.git ~/.dotfiles
    cd ~/.dotfiles
    stow bash chrome conky fonts mc tilix tmux  # Or whatever packages you want


## My primary (Linux) terminal toolchain

For my shell, I use bash. [Bash-it](https://github.com/Bash-it/bash-it) adds a bunch of useful aliases, autocompletion, and other scripts, and [Pureline](https://github.com/chris-marsh/pureline) provides a nice clean informational prompt. [Fasd](https://github.com/clvv/fasd) helps with quick access to recently used files and directories.

For a tiling terminal I use [Tilix](https://gnunn1.github.io/tilix-web/).

For terminal multiplexing I use [tmux](https://github.com/tmux/tmux/wiki). Why not use tmux instead of Tilix for all tiling? Mainly because of the scrollback buffer. Pressing "ctrl-b [" to start scrolling still isn't part of my muscle memory like shift-pgup. But resumable sessions (especially with ssh) are a must-have, so tmux still has a place here.

And for file management, [Midnight Commander](https://midnight-commander.org/). After all these years, orthodox file managers are still the most efficient way I've found to manage files.

All colors are based off of the JetBrains Darcula color palette.


## My work (OSX) terminal toolchain

At work, I use OSX. My terminal is iTerm2, along with zsh. I also use Hammerspoon to help out with window management and launching apps. For Hammerspoon to work, I use Karabiner to bind the CAPSLOCK key to act as though command-option-control-shift are all pressed at once. Then I can just do things like CAPSLOCK+rightarrow to snap a window to the right. 

