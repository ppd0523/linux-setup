#!/bin/bash

# Package update upgrade
echo -e "\e[33m For package update and upgrade\e[0m"
apt update -y && \
apt upgrade -y

# Package install
apt install -y \
zsh \
curl \
git \
vim \
tree \
tmux \
bat \
#ripgrep \
#build-essential \
python3 \
python3-venv \
python3-doc \
python3-pip \
openssh-server && \
echo -e "\e[33m Package installed!\e[0m"

# python alias config
# Default python is python3
update-alternatives --install /usr/bin/python python /usr/bin/python3 20 && \
echo -e "\e[33m Set update-alternatives!\e[0m"


# git config
git config --global user.email "emma415g@gmail.com" && \
git config --global user.name "Park Donghyeon" && \
git config --global core.editor vim && \
echo -e "\e[33m Set git config!\e[0m"

# fzf
cd ~ && \
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && \
cd ~/.fzf && \
(echo "y";echo "y";echo "n")|./install && \
echo -e "\e[33m fzf installed!\e[0m"

# oh-my-zsh
cd ~ && \
git clone --depth 1 https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh && \
cp ~/linux-setup/.zshrc ~ && \
echo -e "\e[33m oh-my-zsh installed, zshrc copyed!\e[0m"

# oh-my-zsh
cd ~ && \
git clone --depth 1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k && \
echo -e "\e[33m powerlevel10k installed!\e[0m"

# tmux
cp ~/linux-setup/.tmux.conf ~ && \
echo -e "\e[33m .tmux.conf copyed!\e[0m"

# zplug
cd ~ && \
git clone --depth 1 https://github.com/zplug/zplug ~/.zplug && \
echo -e "\e[33m zplug installed!\e[0m"

# Change default shell to zsh
echo -e "\e[33m For Changing shell to zsh\e[0m"
chsh -s $(which zsh) && \
echo -e "\e[33m Changed shell to zsh!\e[0m"

echo ""
echo -e "\e[33m Finished My Initial Settings!\e[0m"
echo -e "\e[33m----------------------------------------\e[0m"
