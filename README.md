# Neovim
Personal configuration to use Neovim as IDE.

## Steps macOS

1. Download the nvim project to `~/.config`.


2. All the plugins are included in `init.vim`.


3. Create or modify the `~/.bash_profile` to set vim as an alias for nvim.

4. Execute the following command to refresh the aliases without reboot the system:
```
source ~/.bash_profile
```

5. Install `vim-plug` to manage the plugins. *See [https://github.com/junegunn/vim-plug](https://github.com/junegunn/vim-plug) for more info.*

6. Install ack package to use the ack plugin. It is necessary to search files in a project. See: https://beyondgrep.com/install/
