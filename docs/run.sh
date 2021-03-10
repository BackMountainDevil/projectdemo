#!/bin/bash
# FileName: run.sh
# Daec: Dect the version of python and star a web server for docsify
#       if theie is no python, it will try docsify

PY_VERSION=`python -V 2>&1|awk '{print $2}'|awk -F '.' '{print $1}'`

if (( $PY_VERSION == 3 ))
then
    echo "Your Python Version: " $PY_VERSION
    python -m http.server 3000
elif (( $PY_VERSION == 2 ))
then
    echo "Your Python Version: " $PY_VERSION
    python -m SimpleHTTPServer 3000
else
    echo "Fail to get the version of your python!"
    echo "Maybe you could install python like this: ' apt install python '"
    echo "Trying with docsify now"

    DS_VERSION=`docsify -v 2>&1 | sed -e 's/docsify-cli version://' | awk -F '.' '{print $1}'`
    
    if (( $DS_VERSION == 4 || $DS_VERSION == 5))
    then
        echo "Your docsify's major Version: " $DS_VERSION
        docsify serve docs
    else
        echo "Fail to get the version of docsify!"
        echo "Maybe you could install it like this: ' npm i docsify-cli -g ' "
    fi
fi
echo $DS_VERSION