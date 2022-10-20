#!/usr/bin/bash

# install zsh
sudo apt install zsh

# clone and install ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# autosuggestions
sudo git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sed -i 's/plugins=(git)/plugins=(git\
zsh-autosuggestions\
)/' .zshrc
chsh -s $(which zsh)
clear

