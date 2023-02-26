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

3. Get chezmoi environment variables, get new machine hostname, then edit dotfile templates with new hostname as needed
```
chezmoi data
scutil --get ComputerName
```

4. Initialize chezmoi and validate config is as expected
```
chezmoi init nbelisle11
chezmoi cat-config
```

5. Get latest chezmoi changes and run apply
```
chezmoi update
```

6. Install remaining apps (should happen as part of the previous step)
```
brew bundle --verbose --file=~/.config/homebrew/.Brewfile
```

7. Setup github and gitlab ssh
```
~/scripts/githubSshCreate.sh
```
```
~/scripts/gitlabSshCreate.sh
```

8. Update `machine-config/srcinit`, clone `machine-config` repo and other repos from srcinit

9. Initialize mac config via
```
~/.macos
```

10. Configure remaining manual items, iterm, alfred, etc from below

#### Preferences / Config

1. Configure `System Settings` that need to be manual 
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

6. Configure ccmenu using [command line configuration](https://ccmenu.org/) by running command in `machine-config/preferences/ccmenu`

7. [Import Sequel Ace Preferences](http://stackoverflow.com/a/37145386)

9. Configure nas connection to Ravenstore
#Finder->Go->Connect to Server
afp://192.168.1.32
#u/p from Lastpass
