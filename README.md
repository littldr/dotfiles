# my :heart: dotfiles

My personal dotfiles build from scratch!

## Back to the roots

After years of searching for the perfect shell, i'm switching back to good old `bash`.
After this commit, everything will be `bash` compatible.
If you are interested in the old configurations look back in the history of this repo.
([:fish: Fish](https://github.com/LAndreas/dotfiles/tree/05ce8e4d4df4fa6d8b5fea55e12fc9c0b7030832), [ZSH](https://github.com/LAndreas/dotfiles/tree/380d1ad3dea2ae6ab9c8f52e3c6b29ebaf5a4fcb))

## Requirements

1. Install `brew` (see: [Install Homebrew](http://brew.sh/))
2. Install `git`
  ```
  brew install git
  ```

3. Clone the Repo
  ```
  git clone git@github.com:littldr/dotfiles.git ~/.dotfiles
  ```

3. Install `rcm`:
  * Install `rcm` via `brew`
    ```
    brew tap thoughtbot/formulae
    brew install rcm
    ```
  * (Optional) Use [```Brewfile```](/Brewfile) to install everyhing (including `rcm`)
    ```
    brew bundle --file=~/.dotfiles/Brewfile
    ```

## Install

1. Link `.rcrc`
```
ln -s ~/.dotfiles/rcrc ~/.rcrc
```

2. Finally, set up the dotfiles:
```
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
