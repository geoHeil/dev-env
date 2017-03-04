# assuming arch based manjaro base installation

sudo pacman -S base-devel yaourt
sudo pacman-mirrors -g
sudo pacman -Syy

yaourt -Syuua --noconfirm

# fix high dpi as outlined
# https://www.youtube.com/watch?v=5Kz2E5Xy5tw
# add to firefox https://addons.mozilla.org/de/firefox/addon/autohidpi/
sudo pacman -S yaourt

yaourt google-chrome
# set zoom level to 150% https://www.cnet.com/how-to/how-to-adjust-chromes-default-zoom-settings/

sudo pacman -S dropbox
sudo pacman -S terminator

yaourt intellij-idea-ultimate-edition
yaourt pycharm-professional
yaourt webstorm

yaourt anaconda
export PATH="/opt/anaconda/bin:$PATH"" >> ~/.bash_profile in zsh rc defined below
conda update --all
conda create -n master-thesis python=3.6

sudo pacman -S keepassx
sudo pacman -S jdk8-openjdk 
yaourt gonepass

pacman -S zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
# set ZSH_THEME="kphoen"

yaourt sublime-text-nightly

sudo pacman -S maven
yaourt -S rstudio-desktop-bin
sudo pacman -S cuda
yaourt cudnn
sudo pacman -S r
yaourt -S openblas-lapack
sudo pacman -S gcc-fortran
yaourt franz
yaourt gitkraken
yaourt apache-spark
EXPORT SPART_HOME=/opt/apache-spark # into zshrc file
yaourt hadoop
sudo pacman -S sbt
sudo R CMD javareconf
yaourt apache-spark

source activate master-thesis
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
sudo pacman -S tmux mosh
yaourt virtualbox
yaourt kitematic
yaourt docker
yaourt docker-compose

yaourt -Syuua --noconfirm
# tastenanschlag, touchpad inversion
# set keyboard shortcut to tile window
TODO multi touch gestures show desktop, show all windows of an application

