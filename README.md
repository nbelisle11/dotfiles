# dotfiles

#Install homebrew
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

#Edit dotfiles
#get chezmoi environment variables, edit dotfile templates with new hostname
```
chezmoi data
```

#Initialize chezmoi
```
chezmoi init git@github.com:nbelisle11/dotfiles.git
chezmoi diff
chezmoi apply
```

#Clone Machine Config and configure iterm

#Install remaining apps
```
brew bundle
```

#Configure Alfred preferences and install powerpack from lifetime license in email "Your Alfred 5 Powerpack order"

#Generate a [Personal Token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token) for [intellij-settings and pycharm-settings](https://github.com/settings/tokens) repositories

#Apple Flags
```
defaults write com.apple.finder AppleShowAllFiles YES
```

#Ravenstore
#Finder->Go->Connect to Server
afp://192.168.1.32
#u/p from Lastpass
