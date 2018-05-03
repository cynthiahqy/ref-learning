#!/bin/bash

curl https://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh --output /tmp/Miniconda3-latest-MacOSX-x86_64.sh
bash /tmp/Miniconda3-latest-MacOSX-x86_64.sh -b -p $HOME/miniconda
echo 'export PATH="$HOME/miniconda/bin:$PATH"' >> $HOME/.bash_profile
export PATH="$HOME/miniconda/bin:$PATH"
. ~/.bash_profile
conda install jupyter nltk numpy matplotlib
curl https://raw.githubusercontent.com/doylek1/NLTK/master/nltk-session-1-beginners-empty.ipynb --output $HOME/nltk-session-1-beginners-empty.ipynb

curl https://raw.githubusercontent.com/doylek1/NLTK/master/nltk-session-2-beginners-empty.ipynb --output $HOME/nltk-session-2-beginners-empty.ipynb

echo
echo 'SETUP COMPLETE.  ENJOY RESPLATTING!'
echo
