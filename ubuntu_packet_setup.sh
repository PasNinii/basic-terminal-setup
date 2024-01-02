current_path=$(pwd)

sudo apt install ripgrep zsh tmux curl -y

rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth 1 "https://github.com/zsh-users/zsh-syntax-highlighting.git" $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone --depth 1 "https://github.com/zsh-users/zsh-autosuggestions.git" $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone --depth 1 "https://github.com/marlonrichert/zsh-autocomplete.git" $HOME/.oh-my-zsh/custom/plugins/zsh-autocomplete
git clone --depth 1 "https://github.com/zsh-users/zsh-history-substring-search" $HOME/.oh-my-zsh/custom/plugins/zsh-history-substring-search

echo source $current_path/term_config.sh >> $HOME/.zshrc
cp $current_path/tmux.conf $HOME/.tmux.conf
