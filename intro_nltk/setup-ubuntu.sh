#!/bin/bash

wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /tmp/Miniconda3-latest-Linux-x86_64.sh
bash /tmp/Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda
echo 'export PATH="$HOME/miniconda/bin:$PATH"' >> $HOME/.bashrc
export PATH="$HOME/miniconda/bin:$PATH"
. ~/.bashrc
conda install jupyter nltk numpy matplotlib
wget https://raw.githubusercontent.com/doylek1/NLTK/master/nltk-session-1-beginners-empty.ipynb -O $HOME/nltk-session-1-beginners-empty.ipynb
wget https://raw.githubusercontent.com/doylek1/NLTK/master/nltk-session-2-beginners-empty.ipynb -O $HOME/nltk-session-2-beginners-empty.ipynb

echo
echo 'SETUP COMPLETE.  ENJOY RESPLATTING!'
echo
