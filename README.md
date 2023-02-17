# dotfiles

#Login to AppStore using Apple ID

#Install homebrew and chezmoi
```
sudo xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
PATH="/usr/local/bin:$PATH"
brew install chezmoi
```

#Edit dotfiles
#Get chezmoi environment variables, edit dotfile templates with new hostname as needed
```
chezmoi data
```

#Initialize chezmoi
```
chezmoi init git@github.com:nbelisle11/dotfiles.git
```

#Install remaining apps
```
brew bundle --verbose --file=~/.config/homebrew/.Brewfile
```

#[Setup github ssh](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
```
ssh-keygen -t ed25519 -C <email> -f ~/.ssh/github_ed25519
```

#Clone Machine Config and configure iterm, alfred, etc.







# Preferences / Config
Import iterm preferences
Configure Alfred preferences and install powerpack from lifetime license in email "Your Alfred 5 Powerpack order"
Generate a [Personal Token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token) for [intellij-settings and pycharm-settings](https://github.com/settings/tokens) repositories
Add IntelliJ plugins
Setup and launch `login items`
Configure ccmenu using [command line configuration](https://ccmenu.org/) by running command in `machine-config/preferences/ccmenu`
[Import Sequel Ace Preferences](http://stackoverflow.com/a/37145386)

#Apple Flags
```
defaults write com.apple.finder AppleShowAllFiles YES
```

#Ravenstore
#Finder->Go->Connect to Server
afp://192.168.1.32
#u/p from Lastpass
