# dotfiles

#Install homebrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

#Setup Iterm, oh-my-zsh, and dotfiles
```
/opt/homebrew/bin/brew install --cask iterm2
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
/opt/homebrew/bin/brew install chezmoi
/opt/homebrew/bin/brew install git-lfs
/opt/homebrew/bin/brew install --cask sublime-text
/opt/homebrew/bin/brew install --cask brave-browser
```

#Setup brave with last pass
#log into github
#[Setup github ssh](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

#Edit dotfiles
#find chezmoi install directory and prefix the following commands with the latest `bin` folder. Examples assume version 2.29.4
#get chezmoi environment variables, edit dotfile templates with new hostname
```
/opt/homebrew/Cellar/chezmoi/2.29.4/bin/chezmoi data
```

#Initialize chezmoi
```
chezmoi init git@github.com:nbelisle11/dotfiles.git
```

#Get the chezmoi config directory from chezmoi data and apply the chezmoi config before applying the rest of the repo
```
/opt/homebrew/Cellar/chezmoi/2.29.4/bin/chezmoi diff ~/.config/chezmoi/chezmoi.toml
/opt/homebrew/Cellar/chezmoi/2.29.4/bin/chezmoi apply ~/.config/chezmoi/chezmoi.toml
```

#Apply the rest of the chezmoi repo
```
/opt/homebrew/Cellar/chezmoi/2.29.4/bin/chezmoi diff
/opt/homebrew/Cellar/chezmoi/2.29.4/bin/chezmoi apply
```

#Clone Machine Config and configure iterm

#Install remaining apps
```
brew bundle
```






# Preferences / Config
Import iterm preferences
Configure Alfred preferences and install powerpack from lifetime license in email "Your Alfred 5 Powerpack order"
Generate a [Personal Token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token) for [intellij-settings and pycharm-settings](https://github.com/settings/tokens) repositories
Add IntelliJ plugins
Setup and launch `login items`
Configure ccmenu using [command line configuration](https://ccmenu.org/) by running command in `machine-config/preferences/ccmenu`
[Import Sequel Ace Preferences](http://stackoverflow.com/a/37145386)

#Passwords
```
security add-generic-password -a nbelisle -s Janus -w
```

#Apple Flags
```
defaults write com.apple.finder AppleShowAllFiles YES
```

#Ravenstore
#Finder->Go->Connect to Server
afp://192.168.1.32
#u/p from Lastpass
