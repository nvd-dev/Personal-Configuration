# ***An General Purpose Portable Development Environment***

# MacOS

This guide is meant for setting up a development environment on windows using WSL2. While details guide on mac will come later, this repo is still a valid guideline since every components remain basically the same.

# Windows 11

## Install Microsoft [ WSL2 ](https://docs.microsoft.com/en-us/windows/wsl/install) + Linux Distribution

quick start:

    wsl --install

## Windows Terminal
### Settings

Go to settings, open JSON file, and replace with this [ settings.json ](https://github.com/nvd-dev/Personal-Configuration/blob/master/settings.json)


# Setting up developement environment via Terminal

Quick Start:

    git clone https://github.com/nvd-dev/Personal-Configuration ~/GitHub/Personal-Configuration

<ol>

## <li>Install ZSH</li>

### Ubuntu:

    sudo apt install zsh

## <li>Install [ oh-my-zsh ](https://ohmyz.sh/#install)</li>

    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

### Plug-ins
<ul>

<li> zsh-autosuggestions </li>

    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

<li> zsh-syntax-highlighting </li>

    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

<li> zsh-z </li>

    git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z

<li> zsh-nvm (optional) </li>

Install nvm as a zsh plugin. Install zsh-nvm and run `nvm upgrade` to upgrade.
        
    git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm

<li> git-open (optional) </li>

    https://github.com/paulirish/git-open
        
</ul>

## <li>Install [ Powerlevel10k ](https://github.com/romkatv/powerlevel10k)</li>

    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

## <li>Install [ Nerd Fonts ](https://www.nerdfonts.com/)</li>

For best features please consider using:

    VictorMono Nerd Font

## <li>Install [ lsd ](https://github.com/Peltoche/lsd)</li>

Download the latest .deb package from the [release page](https://github.com/Peltoche/lsd/releases) and install it via:

    sudo dpkg -i lsd_0.20.1_amd64.deb # adapt version number and architecture

## <li>Install [ Zoxide ](https://github.com/ajeetdsouza/zoxide) (optional)</li>

    apt install zoxide

## <li>Customize / clone `.zshrc` from this GitHub [ repo ](https://github.com/kl14n/Personal-Configuration-Backup)</li>

</ol>

# Neovim

<ul>
<li> (optional) Remove the current version of NeoVim </li>

        sudo apt-remove neovim

<li> Download the latest `nvim.appimage` from GitHub:</li>

        https://github.com/neovim/neovim   

<li> Make it executable for your user</li>
        
        chmod u+x ./nvim.appimage

<li> Move it to a folder that's indexed in your PATH env var so your computer knows what you mean when you type `nvim`.</li>

    - You can check the folders in your current path by typing `echo $PATH` which will show you something like this: /usr/local/bin:/usr/bin... 

<li> To move it there you'll need to use sudo: </li>

        sudo mv nvim.appimage /usr/local/bin/nvim

<li> When you type `nvim` it should work</li>

    - Bonus: add this to ~/.zshrc etc to create an alias in case you accidentally type vi (I always type it by mistake): alias vi=nvim

    - Bonus: Also in your bashrc/zshrc etc set your EDITOR env var so various programs know what editor you prefer to use: EDITOR=/usr/local/bin/nvim

<li> To update, download the latest `nvim.appimage` and `mv` it to `/nvim`</li>
</ul>

# Extras

## VScode settings

you can set theme for intergrated terminal
e.g This set Matrix-01 theme to Vscode terminal:

<details>   
<summary>Matrix-01</summary>

    "workbench.colorCustomizations": {
            "terminal.foreground": "#ddc49a",
            "terminal.background": "#191e28",
            "terminal.ansiBlack": "#ddc49a",
            "terminal.ansiBrightBlack": "#808076",
            "terminal.ansiBlue": "#314f6f",
            "terminal.ansiBrightBlue": "#1f3855",
            "terminal.ansiCyan": "#058b8c",
            "terminal.ansiBrightCyan": "#0f4c64",
            "terminal.ansiGreen": "#61993b",
            "terminal.ansiBrightGreen": "#3c7460",
            "terminal.ansiMagenta": "#651e38",
            "terminal.ansiBrightMagenta": "#8d3c4b",
            "terminal.ansiRed": "#ab273c",
            "terminal.ansiBrightRed": "#c73f4a",
            "terminal.ansiWhite": "#f1ece1",
            "terminal.ansiBrightWhite": "#ecece7",
            "terminal.ansiYellow": "#da6e00",
            "terminal.ansiBrightYellow": "#ffb200"
    }
</details>

## Essential programs:

<ol>
    <li> VS Code </li>
    <li> IDM </li>
    <li> WinRAR </li>
    <li> PicoTorrent </li>
    <li> KMPlayer </li>
    <li> Tor </li>
    <li> Via </li>
</ol>
