# Linux and Shell setup script

This is a script that *automatically* executes the task after `installing Linux for the first time`.

## Task
1. Update ubuntu packages
1. Upgrade ubuntu packages
1. Install required packages
  * zsh
  * curl
  * git
  * vim
  * tree
  * ~ripgrep~
  * bat
  * python3
  * python3-venv
  * python3-pip
  * openssh-server
1. Change the `python3` command to `python`
1. Git global configure
1. Download and Install utils
  * autojump
  * fzf
  * oh-my-zsh
  * zplug
1. Change shell to zsh
1. Alias korean
  * l, ll, ls
  * cd

### Trouble shooting in Ubuntu20.04

Crash when installing `bat` and `ripgrep` on Ubuntu20.04. The packages can be forcibly installed

```bash
$ apt download ripgrep
$ sudo dpkg -i --force-overwrite ripgrep*.deb

or

$ apt download bat
$ sudo dpkg -i --force-overwrite bat*.deb
```
