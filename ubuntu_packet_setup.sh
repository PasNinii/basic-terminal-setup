sudo apt-get install ripgrep -y

sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim

rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim

git config --global core.editor "vim"

git clone https://github.com/github/copilot.vim.git \
  ~/.vim/pack/github/start/copilot.vim

git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

sudo apt-get install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
