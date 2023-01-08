#/bin/sh

#ssh command to point to generic config file to bypass standard work ssh config. Used in gitconfig.

ssh -F ~/.ssh/custom_ssh_config "$@"