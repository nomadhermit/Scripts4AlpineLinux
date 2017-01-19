# /bin/ash

# set shell env to execute...
# for debug change to -x to dryrun w/ execution change to -n
set -e

# uncomment community repo
sed -i '/3.5\/community/s/^#//g' /etc/apk/repositories

# refresh repositories
apk update

# install OS packages
apk add -u python \
 python-dev \
 py2-pip \
 build-base \
 gfortran \
 lapack \
 lapack-dev \
 cmake \
 freetype \
 freetype-dev \
 libxml2 \
 libxml2-dev \
 libxslt-dev \
 libxslt

# check for xlocale.h and if not exist create symlink to locale.h
if [ -f /usr/include/xlocale.h ]
  then
    echo "/usr/include/xlocale.h already exists"
  else
    ln -s /usr/include/locale.h /usr/include/xlocale.h
fi

# insall python apps and libraries
pip install --upgrade pip
pip install virtualenv
pip install pandas
pip install pandas-datareader
pip install matplotlib
pip install beautifulsoup4
pip install scipy
pip install lxml
pip install scikit-learn
pip install jupyter
