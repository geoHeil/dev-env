# install a new mac - brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew cask install dropbox
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
brew tap homebrew/science
brew tap caskroom/driver
 
brew cask install iterm2 sublime-text
brew install caskroom/cask/1password
brew update
  
brew cask install spectacle flux
brew cask install mplayerx mosh sourcetree intellij-idea pycharm
brew cask install java rstudio
brew install git sbt maven htop tree apache-spark packer
brew cask install xquartz cuda
brew cask install mactex
brew cask install google-chrome
brew cask install kitematic virtualbox
brew install gcc --without-multilib
brew install openblas --with-openmp
brew install r --with-openblas
brew cask install rambox
brew cask install texpad
brew install cmake
brew cask install kaleidoscope
brew install gradle
brew install python3
brew install wget
  
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
# set ZSH_THEME="kphoen"

# put into zshRC
#export LDFLAGS="-L/usr/local/opt/openblas/lib"
#export CPPFLAGS="-I/usr/local/opt/openblas/include"
export CC=gcc-7
export CXX=g++-7
export SBT_OPTS="-Xmx8G -XX:+CMSClassUnloadingEnabled -Xss2M"

export JAVA_HOME=/Library/Java/Home
#export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)" #<<< NOT this one, does not seem to work keep other one for R java installation, then switch back!!

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
brew cask install anaconda
conda update --all
conda update anaconda

pip3 install --upgrade pip setuptools wheel
pip3 install scipy
pip3 install numpy
pip3 install pandas
pip3 install scikit-learn
pip3 install matplotlib
pip3 install seaborn
pip3 install jupyter
pip3 install jupyterthemes
pip3 install pyfs
pip3 install rpy2
pip3 install bokeh
pip3 install imbalanced-learn
pip3 install fuzzywuzzy
pip3 install python-levenshtein
pip3 install --upgrade jupyter
jt -t chesterish
 
# install jupyter R kernel https://github.com/IRkernel/IRkernel
# in R session
# install.packages(c('repr', 'IRdisplay', 'crayon', 'pbdZMQ', 'devtools'))
# devtools::install_github('IRkernel/IRkernel')
# IRkernel::installspec()
 
# install tensorflow
 
#pip3 install tensorflow-gpu # TODO compile
pip3 install keras
pip3 install dask
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


# osgeo gdal 2
# https://www.karambelkar.info/2016/10/gdal-2-on-mac-with-homebrew/
brew tap osgeo/osgeo4mac && brew tap --repair
brew install gdal2 --with-armadillo --with-complete --with-libkml --with-opencl --with-postgresql --with-java
brew link gdal2 --force
brew install osgeo/osgeo4mac/qgis2 --with-r --with-saga-gis --with-grass
brew reinstall osgeo/osgeo4mac/gdal2-python --with-python3
brew link --force osgeo/osgeo4mac/gdal2-python
pip3 install geopandas

# network
brew cask install caskroom/cask/wireshark

# docker 
# https://github.com/docker/compose/issues/3419
# /etc/hosts
127.0.0.1 localunixsocket.local

# R java configuration !! TODO
brew cask install jdownloader

############
# custom build of tensorflow as osx gpu is no longer supported - follow along with https://www.tensorflow.org/install/install_sources
git clone https://github.com/tensorflow/tensorflow
cd tensorflow
git checkout v1.2.0 <<branch>> # choosing here v1.2.0
brew install bazel
pip3 install dev
brew install coreutils
# https://gist.github.com/Mistobaan/dd32287eeb6859c6668d and https://medium.com/@fabmilo/how-to-compile-tensorflow-with-cuda-support-on-osx-fd27108e27e1
# TODO continue 
