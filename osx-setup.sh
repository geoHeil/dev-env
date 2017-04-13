# install a new mac
# brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew cask install dropbox
# assumptions
# - sublime
# - dropbox setup and configured
# - little-snitch
# - homebrew
# - spectacle
# - flux
# - xcode
# - docker for mac
# - configure VPN TU Wien, L2TP over IPSec
#   shared secret vpn2tu
#   user tu wien
#   password - tu password
#   server address terminator.tuwien.ac.at
 
brew tap caskroom/cask
brew tap homebrew/science
 
brew cask install iterm2 sublime-text
brew update
 
brew cask install spectacle flux
brew cask install mplayerx mosh 1password anaconda sourcetree intellij-idea pycharm
brew cask install java rstudio
brew install git sbt maven htop tree apache-spark packer
brew cask install xquartz cuda
brew cask install mactex
brew cask install google-chrome
brew cask install kitematic virtualbox
brew install gcc --without-multilib
brew install r --with-openblas
brew cask install rambox
brew cask install texpad
brew install cmake
brew cask install kaleidoscope
brew install gradle
  
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
# set ZSH_THEME="kphoen"

brew cleanup
brew cask cleanup
 
# TODOS
# export PATH=~/anaconda3/bin:"$PATH"
# http://prodesigntools.com/adobe-cc-2017-direct-download-links.html
# fix passwords 1password multi tresors
# fix nvm
# install xgboost and lightgbm python packages from master branch, buld xgboost spark
# 
 
# fix paprika
 
# install python packages
conda update --all
conda update anaconda
 
pip install jupyterthemes
pip install pyfs
pip install rpy2
pip install imbalanced-learn
pip install fuzzywuzzy
jt -t chesterish
 
# install jupyter R kernel https://github.com/IRkernel/IRkernel
# in R session
# install.packages(c('repr', 'IRdisplay', 'crayon', 'pbdZMQ', 'devtools'))
# devtools::install_github('IRkernel/IRkernel')
# IRkernel::installspec()
 
# install tensorflow
 
pip install --upgrade tensorflow-gpu
pip install keras
# assumes cudnn folder downloaded locally into ~/Downloads
# copy all to /usr/lib/cudnn respective directories
sudo cp lib64/* /usr/local/cuda/lib64/
sudo cp include/* /usr/local/cuda/include/
 
# fix tensorflow
 
# graph visualiztation tools
# Gephi.app, 
# copy other missing apps
sudo ln -sf /usr/local/cuda/lib/libcuda.dylib /usr/local/cuda/lib/libcuda.1.dylib
# finally test with python then import tensorflow
