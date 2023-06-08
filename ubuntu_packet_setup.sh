sudo apt install ripgrep zsh tmux curl -y

rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
