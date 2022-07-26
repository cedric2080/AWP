#!/bin/sh

echo "Virtual environment setup"

# DEV, TEST, PROD
# By default DEV
envchosen=$1
if [ -z $envchosen ];
then
  appname="DEV"
fi

echo Setting-up virtual environment mode $envchosen
if [ $envchosen = "PROD" ];
then
  # TODO we will probably not use our scripts after so no need to spend time on this if branch
  sudo apt-get install python3-virtualenv
  # we take care to forget the password login for the next commands
  sudo -K
  #xargs -a requirements-system.txt sudo apt-get install
  #virtualenv --python=python3 --system-site-packages env 
else
  # it is faster for dev to rely on manual installation of virtualenv rather thant making it each time !
  virtualenv --python=python3.9 env
fi

if [ $envchosen = "DEV" ];
then
  # editable mode
  env/bin/pip3 install -r requirements.txt -e .
else
  env/bin/pip3 install -r requirements.txt
fi