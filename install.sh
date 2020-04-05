linux-install (){
  if [[ $1 = "-h" ]]
  then
    echo 'To show this help write "linux-install -h"'
    echo 'To install a package write "linux-install -i http://example.com/src-of-the-package-in-internet/file.deb"'
    echo 'To install a package from a local .deb file, write "linux-install -l /path/to/he/local/file"'
  else
    if [[ $1 == "-i"]]
    then 
      wget wget -O file.deb $2
      sudo dpkg -i file.deb
      apt --fix-broken install
      rm -i file.deb
    fi
    if [[ $1 == "-l"]]
    then
      sudo dpkg -i $2
      apt --fix-broken install
      rm -i $2
     fi
  fi
