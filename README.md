# Scripts4AlpineLinux
Misc scripts for use on Alpine Linux runnig in a VM (i.e. Virtualbox guest)

#jupyter-python-setup.sh
 Install Jupyter and Python Engine for use with following libraries on Alpine Linux 3.5:
 - Pandas
 - Numpy
 - Scikit-Learn
 - pandas-datareader
 - matplotlibiut
 - beautifulsoup4

 Usage:

  1. install Alpine Linux 3.5
  2. eject install media (i.e. cdrom iso)
  3. reboot
  4. login
  5. confirm network connectivity (i.e. > ping github.com)
  6. update wget (default wget does not appear to support https connections) with certs
  >   apk add -u wget
  >
  >   apk add -u ca-certificates

  6. Run follow to download and run the script:
  >   wget https://raw.githubusercontent.com/nomadhermit/Scripts4AlpineLinux/master/jupyter-python-setup.sh
  >   
  >   ash jupyter-python-setup.sh

  7. launch jupyter for remote access via:
  >   jupyter notebook --ip 0.0.0.0

  8. use a browser and connect to the url and token shown after jupyter launch
  9. create python2 notebook and confirm desired libraries are working.
