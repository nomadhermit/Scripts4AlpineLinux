# /bin/ash

# set shell env to execute...
# for debug change to -x to dryrun w/o execution change to -n
set -e

# confirm Alpin Linux 3.5

if [ -f /etc/alpine-release ]
    then
      if grep -q -i "3.5.0" /etc/alpine-release
        then
            echo "Alpine Linux 3.5.0 confirmed"
        else
            echo "Looks like Alpine Linux, but not the 3.5.0 version tested"
            echo "Let's continue and see what happens..."
      fi
    else
      echo  "This does not appear to be Alpine Linux \n"
      exit
fi


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
 libxslt \
 linux-headers \
 libcffi-dev \
 openssl-dev \
 cyrus-sasl-dev

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

virtualenv venv
. ./venv/bin/activate

pip install --upgrade setuptools pip

pip install superset

# next steps

echo '**run the following commands** \n
fabmanager create-admin --app superset
superset db upgrade
superset init
superset runserver -p 8088
'
