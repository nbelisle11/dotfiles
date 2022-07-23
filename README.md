# dotfiles

#Install brew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

#Setup Iterm, oh-my-zsh, and dotfiles
```
brew install --cask iterm2
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
brew install chezmoi
brew install git-lfs
brew install --cask sublime-text
brew install --cask brave-browser
```

#Setup brave with last pass
#log into github
#[Setup github ssh](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

#Initialize chezmoi
```
chezmoi init git@github.com:nbelisle11/dotfiles.git
chezmoi diff
chezmoi apply
```

#Clone Machine Config and configure iterm

#Install app store only apps
```
brew install mas

mas install 1419945839 # Timestamp Converter
mas install 668208984 # GIPHY Capture. The GIF Maker
mas install 1510445899 # Meeter for Zoom, Teams & Co
mas install 441258766 # Magnet
mas install 569089415 # Hour - World Clock
mas install 497799835 # Xcode
```
#Install remaining apps
```
brew install --cask slack
brew install --cask google-drive
brew install --cask dropbox
brew install --cask tidal
brew install --cask boop
brew install --cask caffeine
brew install --cask unity-hub
brew install --cask sequel-ace
brew install --cask skitch
brew install --cask alfred
brew install --cask bluesnooze
brew install --cask calibre
brew install --cask discord
brew install --cask freedom
brew install --cask itsycal
brew install --cask jetbrains-toolbox
brew install --cask signal
brew install --cask notunes
brew install --cask vlc
brew install --cask zoom
brew install --cask diff-so-fancy
```

#Configure Alfred preferences and install powerpack from lifetime license in email "Your Alfred 5 Powerpack order"
