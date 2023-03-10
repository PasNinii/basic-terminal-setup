sudo apt-get update -y
sudo add-apt-repository ppa:neovim-ppa/unstable -y

sudo apt-get install curl -y
sudo apt-get install build-essential -y
sudo apt-get install software-properties-common -y
sudo apt-get install neovim -y
sudo apt-get install vim-gtk -y
sudo apt-get install ripgrep -y

sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --config editor

git config --global core.editor "vim"

git clone https://github.com/github/copilot.vim.git \
  ~/.vim/pack/github/start/copilot.vim

sudo apt-get install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
