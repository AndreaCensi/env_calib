#!/bin/bash
set -e
set -x

pinstall()
{
  spwd=$PWD
  echo "Installing $1"
  if [ -d $1 ]; then 
    cd $1
    python setup.py develop
    cd $spwd    
  else
    echo "Couldn't find package"
  fi
}

packages="contracts compmake conf_tools geometry  latex_gen  procgraph  reprep cbc"
cd src
for p in $packages; do
  pinstall $p
done


