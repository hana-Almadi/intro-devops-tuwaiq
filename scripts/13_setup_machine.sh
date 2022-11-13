#!/bin/bash


function installPackages(){
echo "install homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
echo "install git"
brew install git
echo "install jdk"
brew install openjdk@8
}

function createShortcuts(){
echo 'alias show = "ls -a" ' >> ~/.zshrc
echo 'alias installPackages = "./13_setup_machine.sh" ' >> ~/.zshrc

}
installPackages
createShortcuts



