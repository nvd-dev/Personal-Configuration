# Oh-my-zsh Plug-ins
## zsh-autosuggestions 
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

## zsh-syntax-highlighting 
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

## zsh-z 
    git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z

## Powerlevel10k
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

## lsd
    sudo dpkg -i ./lsd/lsd_0.20.1_amd64.deb

# Hard link main config files
    ln -f .p10k.zsh ~/.p10k.zsh
    ln -f .zshrc ~/.zshrc

exec zsh