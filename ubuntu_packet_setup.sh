sudo apt-get install ripgrep -y

sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --config editor

rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim

git config --global core.editor "vim"

git clone https://github.com/github/copilot.vim.git \
  ~/.vim/pack/github/start/copilot.vim

git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
