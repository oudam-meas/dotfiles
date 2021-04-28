cd 
mkdir -p .dotfiles && cd .dotfiles
git clone https://github.com/oudam-meas/dotfiles.git .
cd 

# install spacevim
curl -sLf https://spacevim.org/install.sh | bash
rm -rf ~/.SpaceVim.d
ln -s ~/.dotfiles/.SpaceVim.d ~/.SpaceVim.d
# cd ~/.Spacevim.d/ && rm -rf * && git clone https://github.com/oudam-meas/SpaceVim.d.git . 
