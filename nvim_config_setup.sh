rm -rf $HOME/.config/nvim/lua/custom
echo 'delete'
mkdir -p $HOME/.config/nvim/lua/custom
cp -r $HOME/workspace/basic-terminal-setup/custom/* $HOME/.config/nvim/lua/custom/.
