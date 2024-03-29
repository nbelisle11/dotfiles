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

7. Setup [github](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) and gitlab ssh
```
~/scripts/githubSshCreate.sh
```
```
~/scripts/gitlabSshCreate.sh
```

8. Migrate chezmoi to use ssh
```
chezmoi cd
git remote set-url origin git@github.com:nbelisle11/dotfiles.git
```

9. Update `machine-config/srcinit`, clone `machine-config` repo and other repos from srcinit

10. Initialize mac config via
```
~/.macos
```

11. Configure remaining manual items, iterm, alfred, etc from below

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

8. Configure nas connection to Ravenstore
#Finder->Go->Connect to Server
afp://192.168.1.32
#u/p from BitWarden

9. Lock mic input to built in mic
Setup macOS so it will never manually change the microphone from the built-in microphone. It also will not trigger your headphones to go into ‘call’ mode, and thus it won’t lower the quality.
- Open Audio MIDI Set-up. Then click on the + icon in the bottom left corner and add a new aggregated device. Then, in the menu select the Built-in microphone. Rename device to ‘Locked Microphone’.
<p align="center">
<img width="400" alt="Audio_Devices_and_Editing_dotfiles_README_md_at_main_·_nbelisle11_dotfiles" src="https://github.com/nbelisle11/dotfiles/assets/5873903/448dd431-e41c-4dca-a9c0-2b7f27b7e53a">
</p>
- Go to System Settings -> Sound, and select your new Locked Microphone as the system’s input device

