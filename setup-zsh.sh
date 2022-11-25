# Zsh config
echo "Adding configs on ZSH"
cat configs/posh-config >> ~/.zshrc

exec zsh
oh-my-posh font install Meslo

echo "Font installed."
echo "Remember to enable it in your terminal"