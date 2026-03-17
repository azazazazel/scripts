# /bin/bash
# full updater (apt), written by azazazazel

# Source - https://stackoverflow.com/a/18216122
# Posted by ptierno, modified by community. See post 'Timeline' for change history
# Retrieved 2026-03-17, License - CC BY-SA 4.0

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi


sudo apt update && sudo apt dist-upgrade -y && sudo apt autoremove -y