# Scripts4AlpineLinux
MIsc scripts for use on Alpine Linux runnig in a VM (i.e. Virtualbox guest)

#jupyter-python-setup.sh
 Install Jupyter and Python Engine for use with following libraries on Alpine Linux 3.5:
 - Pandas
 - Numpy 
 - Scikit-Learn
 - pandas-datareader
 - mapplotlib
 - beautifulsoup4
 
 Usage:
 
  1. install Alpine Linux 3.5
  2. confirm network connectivity (i.e. > ping github.com)
  3. Run follow:
  >   wget https://raw.gitusercontent.com/nomadhermit/Scrpts4AlpineLinux/master/jupyter-python-setup.sh
  >   ash jupyter-python-setup.sh
     
  4. launch jupyter for remote access run:
  >   jupyter notebook --ip 0.0.0.0
     
  5. use a browser and connect to the url and token shown after jupyter launch
