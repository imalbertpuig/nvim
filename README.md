# Neovim
Personal configuration to use Neovim as my favourite IDE!

## Setps
1. Download the nvim project to ~/.config
2. Create or modify your ~/.bash_aliases to put vim as nvim alias (~/.bash_profile for mac).
3. Execute the next command to refresh the aliases without reboot the system:
```
source ~/.bash_aliases
```
4. Install vim-plug to manage the plugins. See: https://github.com/junegunn/vim-plug
5. The UltiSnips is a plugin included in the repo. It requires py >= 2.7 or any py3. Install:
* https://stackoverflow.com/questions/6587507/how-to-install-pip-with-python-3
* https://github.com/neovim/neovim/issues/2906
6. Install ack package to use the ack plugin. It is necessary to search files in a project. See: https://beyondgrep.com/install/
