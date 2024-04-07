### Stuff to install
- iTerm
- homebrew
- zsh
- oh-my-zsh
- tmux
- tpm (for tmux)
- colorls
- neovim
- packer (for neovim)
- yabai and skhd

### To-do after installation
- Change zshrc path ```ln -s ~/.config/.zshrc ~/.zshrc```
- Setup ~/.zshrc
- Install tmux plugins (```<prefix>I```)
- Setup tmux-sessionizer
    - Install fzf ```brew install fzf```
    - Copy bash script and modify ```selected``` directories
- Install nvim plugins
    - Open nvim/lua/avrachimi/packer.lua
    - ```:so``` and ```:PackerSync```
    - ```:TSUpdate```
    - ```:Mason``` to install LSPs etc.
