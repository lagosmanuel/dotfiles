# tmux plugin manager.
read -e -p "would you like to install tmux plugin manager? y/n: " -N 1
[ "$REPLY" = "y" ] \
    && git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm \
    && ~/.tmux/plugins/tpm/scripts/update_plugin.sh \
    && ~/.tmux/plugins/tpm/scripts/install_plugins.sh

# tmux theme.
read -e -p "would you like to install tmux snazzy theme? y/n: " -N 1
[ "$REPLY" = "y" ] \
    && curl -o ~/.tmux.snazzy.theme https://raw.githubusercontent.com/ivnvxd/tmux-snazzy/main/.tmux.snazzy.theme

# vim plugin manager.
read -e -p "would you like to install vim-plug plugin manager? y/n: " -N 1
[ "$REPLY" = "y" ] \
    && curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \
    && vim +PlugInstall +qall

# nvim plugin manager.
read -e -p "would you like to install packer.nvim plugin manager? y/n: " -N 1
[ "$REPLY" = "y" ] \
    && git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim \
    && nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

# jetbrains mono font
read -e -p "would you like to install the jetbrains mono font? y/n: " -N 1
[ "$REPLY" = "y" ] \
    && wget https://download.jetbrains.com/fonts/JetBrainsMono-2.304.zip \
    && unzip JetBrainsMono-2.304.zip -d ~/.local/share/fonts \
    && fc-cache -f -v \
    && rm JetBrainsMono-2.304.zip

# oh-my-zsh.
read -e -p "would you like to install oh-my-zsh? y/n: " -N 1
[ "$REPLY" = "y" ] \
    && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh) --unattended --keep-zshrc"

# zsh k plugin.
read -e -p "would you like to install zsh plugin k? y/n: " -N 1
[ "$REPLY" = "y" ] \
    && git clone https://github.com/supercrabtree/k ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/k

# zsh autosuggestions plugin.
read -e -p "would you like to install zsh plugin zsh-autosuggestions? y/n: " -N 1
[ "$REPLY" = "y" ] \
    && git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
