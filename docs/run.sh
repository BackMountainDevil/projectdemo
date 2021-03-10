#!/bin/bash
# FileName: run.sh
# Daec: Dect the version of python and star a web server for docsify
#       if theie is no python, it will try docsify

PY_VERSION=`python -V 2>&1|awk '{print $2}'|awk -F '.' '{print $1}'`
echo "Your Python Version: " $PY_VERSION

echo "Trying to turn on a web server."
if (( $PY_VERSION == 3 ))
then
    python -m http.server 3000
elif (( $PY_VERSION == 2 ))
then
    python -m SimpleHTTPServer 3000
else
    echo "Fail to get the version of your pyhon. Trying it with docsify"
    docsify serve docs
fi