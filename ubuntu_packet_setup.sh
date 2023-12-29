current_path=$(pwd)

sudo apt install ripgrep zsh tmux curl -y

rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo source $current_path/term_config >> $HOME/.zshrc
cp $current_path/tmux.conf $HOME/.tmux.conf
