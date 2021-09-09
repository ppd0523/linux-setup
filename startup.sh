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
python3-pip \
openssh-server && \
echo -e "\e[33m Package installed!\e[0m"

wget https://github.com/sharkdp/bat/releases/download/v0.18.3/bat_0.18.3_amd64.deb
wget https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb

# python alias config
# Default python is python3
update-alternatives --install /usr/bin/python python /usr/bin/python3 20 && \
echo -e "\e[33m Set update-alternatives!\e[0m"

# font download
 mkdir /usr/share/fonts/truetype/MesloLGS_NF && \
wget -O /usr/share/fonts/truetype/MesloLGS_NF/MesloLGS%20NF%20Regular.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf && \
wget -O /usr/share/fonts/truetype/MesloLGS_NF/MesloLGS%20NF%20Bold.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf && \
wget -O /usr/share/fonts/truetype/MesloLGS_NF/MesloLGS%20NF%20Italic.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf && \
wget -O /usr/share/fonts/truetype/MesloLGS_NF/MesloLGS%20NF%20Bold%20Italic.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf && \
echo -e "\e[33m Downloads MesloLGS Nerd Font!\e[0m"


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

# autojump
git clone --depth 1 https://github.com/wting/autojump.git ~ && \
cd ~/autojump && \
./install.py

# oh-my-zsh
cd ~ && \
git clone --depth 1 https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh && \
cp .zshrc ~ && \
echo -e "\e[33m oh-my-zsh installed, zshrc copyed!\e[0m"

# powerlevel10k theme
cd ~ && \
git clone --depth 1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k && \
echo -e "\e[33m powerlevel10k installed!\e[0m"

# tmux
cp $OLDPWD/.tmux.conf $HOME
echo -e "\e[33m .tmux.conf copyed!\e[0m"

# zplug
git clone --depth 1 https://github.com/zplug/zplug ~/.zplug
cp $OLDPWD/.zshrc $HOME
echo -e "\e[33m zplug installed!\e[0m"

# Change default shell to zsh
echo -e "\e[33m For Changing shell to zsh\e[0m"
chsh -s $(which zsh) && \
echo -e "\e[33m Changed shell to zsh!\e[0m"

echo ""
echo -e "\e[33m Finished My Initial Settings!\e[0m"
echo -e "\e[33m----------------------------------------\e[0m"
