# install a new mac - brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install --cask 1password
brew install --cask dropbox
brew install --cask iterm2 sublime-text
brew install --cask carbon-copy-cloner

# assumptions
# - dropbox setup and configured
# - little-snitch
# - homebrew
# - xcode
# - docker for mac
# - configure VPN TU Wien, L2TP over IPSec
#   shared secret vpn2tu
#   user tu wien
#   password - tu password
#   server address terminator.tuwien.ac.at
 
brew tap caskroom/cask
# brew tap homebrew/science
brew tap caskroom/driver
 
brew cask install iterm2 sublime-text
brew update
  
brew install --cask flux Rectangle
brew install --cask iina sourcetree intellij-idea pycharm datagrip
#brew install --cask java 
brew install openjdk@17
# jdk8 + 11 https://gist.github.com/alChaCC/ddb11542c9e6b6683bad80d9ca858bc5
# brew install --cask rstudio
#brew tap caskroom/versions
brew install --cask visual-studio-code
brew install --cask discord slack
brew install --cask microsoft-office
brew install jenv
# setup jenv
sudo ln -sfn /opt/homebrew/opt/openjdk@17/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-17.jdk
jenv add /Library/Java/JavaVirtualMachines/openjdk-17.jdk/Contents/Home/
jenv global 17.0

brew install git htop tree apache-spark gradle
#brenstall sbt maven packer
#brew install --cask xquartz
#brew install --cask mactex
#brew install --cask google-chrome
#brew install --cask kitematic virtualbox
#brew install gcc --without-multilib
#brew install openblas --with-openmp
brew install cmake
#brew install r --with-openblas
#brew cask install rambox
#brew cask install texpad
brew install cmake
brew install gnu-sed
#brew cask install kaleidoscope
brew install gradle
#brew install python3
brew install wget
brew install --cask little-snitch
#brew cask install xquartz
  
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
# set ZSH_THEME="kphoen"
# https://github.com/romkatv/powerlevel10k
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

# put into zshRC
#export LDFLAGS="-L/usr/local/opt/openblas/lib"
#export CPPFLAGS="-I/usr/local/opt/openblas/include"
#export CC=gcc-7
#export CXX=g++-7
#export SBT_OPTS="-Xmx8G -XX:+CMSClassUnloadingEnabled -Xss2M"

#export JAVA_HOME=/Library/Java/Home
echo export "JAVA_HOME=\$(/usr/libexec/java_home)" >> ~/.zshrc
#export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)" #<<< NOT this one, does not seem to work keep other one for R java installation, then switch back!!

#brew cleanup
#brew cask cleanup
 
# TODOS
# export PATH=~/anaconda3/bin:"$PATH"
# http://prodesigntools.com/adobe-cc-2017-direct-download-links.html
# fix passwords 1password multi tresors
# fix nvm
# install xgboost and lightgbm python packages from master branch, buld xgboost spark
# 
 
# fix paprika
 
# install python packages
#brew install micromamba
brew install mambaforge
conda init zsh

# in the security viewer (manually in the GUI) accept tne non signed binary
#/usr/local/bin/micromamba shell init -s zsh -p ~/micromamba
#brew cask install anaconda
#conda update --all
#conda update anaconda

#pip3 install --upgrade pip setuptools wheel
#pip3 install scipy
#pip3 install numpy
#pip3 install pandas
#pip3 install scikit-learn
#pip3 install matplotlib
#pip3 install seaborn
#pip3 install jupyter
#pip3 install jupyterthemes
#pip3 install pyfs
#pip3 install rpy2
#pip3 install bokeh
#pip3 install imbalanced-learn
#pip3 install fuzzywuzzy
#pip3 install python-levenshtein
#jt -t chesterish
 
# install jupyter R kernel https://github.com/IRkernel/IRkernel
# in R session
# install.packages(c('repr', 'IRdisplay', 'crayon', 'pbdZMQ', 'devtools', 'dplyr', 'stringr', 'reshape2'))
# install.packages(c('ggplot2', 'forecast', 'randomForest', 'lubridate'))
# devtools::install_github('IRkernel/IRkernel')
# IRkernel::installspec()
#R CMD javareconf JAVA_CPPFLAGS=-I/System/Library/Frameworks/JavaVM.framework/Headers
 
# install tensorflow
 
#pip3 install tensorflow-gpu # TODO compile
#pip3 install keras
#pip3 install dask
# assumes cudnn folder downloaded locally into ~/Downloads
# copy all to /usr/lib/cudnn respective directories
#sudo cp lib64/* /usr/local/cuda/lib64/
#sudo cp include/* /usr/local/cuda/include/
 
# fix tensorflow
 
# graph visualiztation tools
# Gephi.app, 
# copy other missing apps

#brew cask install cuda

# download cudnn, copy to
#sudo cp include/* /usr/local/cuda/include/
#sudo cp lib/* /usr/local/cuda/lib/
#sudo ln -sf /usr/local/cuda/lib/libcuda.dylib /usr/local/cuda/lib/libcuda.1.dylib
# finally test with python then import tensorflow

#brew cask install spotify
# osgeo gdal 2
# https://www.karambelkar.info/2016/10/gdal-2-on-mac-with-homebrew/
#brew tap osgeo/osgeo4mac && brew tap --repair
#brew install gdal2 --with-armadillo --with-complete --with-libkml --with-opencl --with-java --with-postgresql
#brew link gdal2 --force
#brew install osgeo/osgeo4mac/qgis2 --with-r --with-saga-gis --with-grass
#brew reinstall osgeo/osgeo4mac/gdal2-python --with-python3
#brew link --force osgeo/osgeo4mac/gdal2-python
#pip3 install geopandas
#brew linkapps qgis2
#brew tap-pin qgis/qgisdev
#brew install qgis/qgisdev/qgis3-dev --with-grass --with-oracle --with-r

# network
#brew cask install caskroom/cask/wireshark

# docker 
# https://github.com/docker/compose/issues/3419
# /etc/hosts
#127.0.0.1 localunixsocket.local

#brew install --cask jdownloader
install jdownloader form: https://jdownloader.org/download/index
#brew install apache-flink
#brew install nifi
#brew install hbase
#brew cask install datagrip
#brew cask install teamviewer skype

############
# custom build of tensorflow as osx gpu is no longer supported - follow along with https://www.tensorflow.org/install/install_sources
#git clone https://github.com/tensorflow/tensorflow
#cd tensorflow
#git checkout v1.2.0 <<branch>> # choosing here v1.2.0
#brew install bazel
#pip3 install dev
#brew install coreutils
# https://gist.github.com/Mistobaan/dd32287eeb6859c6668d and https://medium.com/@fabmilo/how-to-compile-tensorflow-with-cuda-support-on-osx-fd27108e27e1
# TODO continue 


brew install --cask adobe-creative-cloud
#############
# vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
###
# inside .vimrc
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
# then set .vimrc file from this repository
# then :PlugInstall from inside vim
###
#git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# https://github.com/VundleVim/Vundle.Vim

#############
# tmux
#cd ~/development 
#git clone https://github.com/samoshkin/tmux-config.git
#cd tmux-config
#./install.sh
