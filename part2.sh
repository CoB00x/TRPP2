#!/bin/bash
mkdir ~/part2dir
cd ~/part2dir

sudo apt -y install python3 python3-pip python3-venv curl

wget --no-check-certificate https://www.dropbox.com/s/ija7ax3sj6ysb0p/blocknote-master.tar.gz
tar -xvf blocknote-master.tar.gz
cd blocknote-master
curl https://raw.githubusercontent.com/CoB00x/TRPP2/master/requirements.txt -o requirements.txt

python3 -m venv env
sourse env/bin/activate
pip install -r requirements.txt

python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver
