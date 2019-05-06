# my :heart: dotfiles

My personal dotfiles build from scratch!

## Back to the roots

After years of searching for the perfect shell, i'm switching back to good old `bash`.
After this commit, everything will be `bash` compatible.
If you are interested in the old configurations look back in the history of this repo.
([:fish: Fish](https://github.com/littldr/dotfiles/tree/05ce8e4d4df4fa6d8b5fea55e12fc9c0b7030832), [ZSH](https://github.com/littldr/dotfiles/tree/380d1ad3dea2ae6ab9c8f52e3c6b29ebaf5a4fcb))

## Install

1. Install `brew` (see: [Install Homebrew](http://brew.sh/))
2. Execute following commands to install the rest:
  ```
  brew install git
  git clone git@github.com:littldr/dotfiles.git ~/.dotfiles
  brew bundle --file=~/.dotfiles/Brewfile
  ln -s ~/.dotfiles/rcrc ~/.rcrc
  rcup
  ```

## Update

1. Update Repo
```
git -C ~/.dotfiles/ pull
```

2. Link new files
```
rcup
```

## Uninstall

```
rcdn
rm -Rf ~/.dotfiles
```
