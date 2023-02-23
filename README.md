# dotfiles
This repository serves as my way to help me setup and maintain my Macbooks. It takes the effort out of installing everything manually and allows me to centrally manage configuration differences between machines. This approach leverages [chezmoi](https://chezmoi.io/) to manage dotfiles and configs across multiple diverse machines. It also uses [Homebrew Bundle](https://github.com/Homebrew/homebrew-bundle) for installing all my preferred apps. 

Everything needed to install my preferred setup of macOS is detailed in this readme. Feel free to explore, learn and copy parts for your own dotfiles. Thanks!

Check out [here](https://dotfiles.github.io/inspiration/) for more dotfiles inspiration

# Initialize a new MacOS machine
1. Login to AppStore using Apple ID

2. Install homebrew and chezmoi
```
sudo xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
PATH="/usr/local/bin:$PATH"
brew install chezmoi
```

3. Edit dotfiles variables and brewfile for new machine
#Get chezmoi environment variables, edit dotfile templates with new hostname as needed
```
chezmoi data
```

4. Initialize chezmoi
```
chezmoi init git@github.com:nbelisle11/dotfiles.git
```

5. Install remaining apps
```
brew bundle --verbose --file=~/.config/homebrew/.Brewfile
```

6. [Setup github ssh](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
```
ssh-keygen -t ed25519 -C <email> -f ~/.ssh/github_ed25519
```

7. Clone Machine Config repo and configure iterm, alfred, etc.

#### Preferences / Config

Manual System Settings Config
- Set `Keyboard -> Keyboard Shortcuts... -> Accessibility -> Invert Colors` to Command - Q
- Unset all  `Keyboard -> Keyboard Shortcuts... -> Screenshots` (Use Skitch Instead)
- Set `General -> Login Items -> Open at Login` to include
	- Alfred
	- Bartender
	- Bluesnooze
	- Caffeine
	- Google Drive
	- Hour
	- Itsycal
	- Jetbrains Toolbox
	- NordVPN
	- noTunes
	- Skitch
	- TimestampConverter
- Set `General -> Login Items -> Allow in the Background` to include
	- Bartender
	- Google Updater
	- Jetbrains
	- NordVPN
	- Skitch

2. Install Alfed powerpack from lifetime license in email "Your Alfred 5 Powerpack order"

3. Generate a [Personal Token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token) for [intellij-settings and pycharm-settings](https://github.com/settings/tokens) repositories

4. Add IntelliJ plugins

5. Setup and launch `login items`

6. Configure ccmenu using [command line configuration](https://ccmenu.org/) by running command in `machine-config/preferences/ccmenu`

7. [Import Sequel Ace Preferences](http://stackoverflow.com/a/37145386)

8. Set Apple Flags
```
defaults write com.apple.finder AppleShowAllFiles YES
```

9. Configure nas connection to Ravenstore
#Finder->Go->Connect to Server
afp://192.168.1.32
#u/p from Lastpass
