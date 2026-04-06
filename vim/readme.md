# Instructions

```bash
git clone https://github.com/noomenkrichen/my_dotfiles.git "${XDG_CONFIG_HOME:-$HOME}/temp"
```
or
```
git clone git@github.com:noomenkrichen/my_dotfiles.git "${XDG_CONFIG_HOME:-$HOME}/temp"
```

Navigate to ~/temp/vim and copy or move every thing to the ~/ directory
```bash
cd ~/temp/vim
mv * ~/
```

After that yyou can delete the temp folder
```bash
sudo rm -r ${XDG_CONFIG_HOME:-$HOME}/temp
```
