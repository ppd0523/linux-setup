# Linux and Shell setup script

This is a script that **automatically** executes *the TASK* after installing **Linux for the first time**.

## Quick Start
```bash
$ sudo sh startup.sh
```

## The TASK
1. Update ubuntu packages
1. Upgrade ubuntu packages
1. Install required packages
    * zsh
    * curl
    * git
    * vim
    * tree
    * tmux
    * *ripgrep*
    * *bat*
    * python3
    * python3-venv
    * python3-pip
    * openssh-server
1. Change the `python3` command to `python`
    ```bash
    $ /usr/bin/python -> /usr/bin/python3
    ```
1. Git global configure
1. Download and Install utils
    * fzf
    * oh-my-zsh
    * zplug
1. Copy `.zshrc` to $HOME
1. Copy `.tmux.conf` to $HOME
1. Change shell to zsh

---
### Trouble shooting in Ubuntu20.04

2021-05-25:  
 Crash when installing *bat* and *ripgrep* on **Ubuntu20.04**. The packages can be forcibly installed.

```bash
$ apt download ripgrep
$ sudo dpkg -i --force-overwrite ripgrep*.deb

 or

$ apt download bat
$ sudo dpkg -i --force-overwrite bat*.deb
```
