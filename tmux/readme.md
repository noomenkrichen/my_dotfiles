# Installation

## Step 1
```bash
git clone https://github.com/noomenkrichen/my_dotfiles.git "${XDG_CONFIG_HOME:-$HOME}/temp"
```
## Step 2
```bash
mv ${XDG_CONFIG_HOME:-$HOME}/temp/tmux/.tmux.conf ${XDG_CONFIG_HOME:-$HOME}/
```
## Step 3
```bash
sudo rm -r ${XDG_CONFIG_HOME:-$HOME}/temp
```
