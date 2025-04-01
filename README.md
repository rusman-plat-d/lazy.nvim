# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

```bash
echo $XDG_SESSION_TYPE
echo $WAYLAND_DISPLAY
# For X11
sudo apt install xclip
# For Wayland
sudo apt install wl-clipboard

sudo apt install build-essential clangd codeblocks gdb manpages-dev python3 python3-pip ripgrep valgrind w3m

sudo snap install nvim --classic
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.2/install.sh | bash
npm install -g eslint intelephense prettier pyright stylelint stylelint-config-standard typescript typescript-language-server 
npm install -g @tailwindcss/language-server @angular/language-server vls vscode-langservers-extracted

sudo snap install go --classic
go install golang.org/x/tools/gopls@latest
go install github.com/jesseduffield/lazygit@latest
go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup component add rust-analyzer
pip install debugpy ueberzug
composer global require friendsofphp/php-cs-fixer
```
