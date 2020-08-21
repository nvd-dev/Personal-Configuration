# Settings

Created: Aug 21, 2020 12:33 PM

# Fresh Windows 10 Install

### Install Microsoft WSL 2 + Linux Distribution

### Install Windows Terminal
Winddows Terminal Themes 

https://allthings.how/windows-terminal-themes-light-dark-colorful/

Backup:

         {
            "colorScheme": "Monokai Seti Dark",
            "antialiasingMode": "grayscale",
            "closeOnExit": "graceful",
            "cursorShape": "bar",
            "fontFace": "Hack Nerd Font",
            "fontSize": 12,
            "hidden": false,
            "historySize": 9001,
            "padding": "8, 8, 8, 8",
            "snapOnInput": true,
            "altGrAliasing": true,
            "startingDirectory": "%USERPROFILE%",
            "useAcrylic": true,
            "acrylicOpacity": 0.9
        },

### Install essential programs:

1. VS Code
2. IDM
3. WinRAR
4. Web Torrent
5. 

# Configuring Terminal

## 1. Install ZSH

### Ubuntu:

sudo apt-get install zsh   

set your ZSH as default shell:

    chsh -s $(which zsh)

### MacOS

    brew install zsh

## 2. Install Oh-My-ZSH

https://ohmyz.sh/#install

    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

### Plug-ins

- zsh-autosuggestions

        git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

- zsh-syntax-highlighting

        git clone [https://github.com/zsh-users/zsh-syntax-highlighting.git](https://github.com/zsh-users/zsh-syntax-highlighting.git) $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

- zsh-z

        git clone [https://github.com/agkozak/zsh-z](https://github.com/agkozak/zsh-z) $ZSH_CUSTOM/plugins/zsh-z

## 3. Install Powerlevel10k

https://github.com/romkatv/powerlevel10k

    git clone --depth=1 [https://github.com/romkatv/powerlevel10k.git](https://github.com/romkatv/powerlevel10k.git) ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

## 4. Install Nerd fonts

https://www.nerdfonts.com/

## 5. Customize / restore `.zshrc`

# Extra packages, plug-ins, formulae,...

- python3
- lsd
- neovim