# my :heart: dotfiles

My personal dotfiles build from scratch!

## Requirements

1. Clone the Repo
```
git clone --recurse-submodules git@github.com:LAndreas/dotfiles.git ~/.dotfiles
```

2. Install :fish::
```
brew install fish
chsh -s /usr/local/bin/fish $USER
```

3. Install rcm:
```
brew tap thoughtbot/formulae
brew install rcm
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

3. (Optional) To use the provided [```Brewfile```](/Brewfile) install ```brew bundle```:
```
brew tap Homebrew/bundle
brew bundle
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
