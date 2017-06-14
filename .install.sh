# asta este un file pentru a instala pachete pe un nou sistem linux

git config --global credential.helper 'cache --timeout=86400'

PACKAGES = " tmux clang llvm neovim fish zsh tree ruby gem stack 
              haskell-platform cmake python-devel python3-develautomake gcc gcc-c++ kernel-devel
              gconf-editor gnome-tweak-tool"

FEDORA_INSTALL = " 

if $0 == ""
  echo " baga in plm numele package managerului si comanda "
  echo " exemplu : apt-get install"
else
  INSTALLER_CMD = $0
fi

# incepe instalarea
sudo $INSTALLER_CMD PACKAGES

sudo pip install --upgrade neovim
sudo pip install vim-vint cmakelint yamllint
