#!/bin/bash
echo "Clean up time!"
echo "Clearing out Documents"
rm -rf ~/Documents/*
echo "Clearing out Desktop"
rm -rf ~/Desktop/*
echo "Clearing Downloads"
rm -rf ~/Downloads/*
echo "Clearing mongodb data"
sudo rm -rf /data/db
echo "Clean up home directory"
shopt -s extglob
cd ~
mv .bash_profile .backup_bash_profile
touch .bash_profile
sudo rm -rdf !(Applications|Library|Desktop|Documents|Downloads|Pictures|Public|mac_cleanup)
cd -

echo "Update shell"
chsh -s /bin/bash

xcode-select --install

# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#update brew
echo "Updating brew"
brew update

brew tap caskroom/cask
brew install brew-cask

brew cask install google-chrome
brew cask install iterm2
brew cask install atom
brew cask install sublime-text
brew install wget

#postgres
brew cask install postgres
echo 'export PATH="~/Applications/Postgres.app/Contents/Versions/latest/bin/:$PATH"' >> ~/.bash_profile

# installing anaconda
curl -L https://repo.continuum.io/archive/Anaconda2-4.3.0-MacOSX-x86_64.sh > anaconda_script.sh
bash anaconda_script.sh -b

rm ~/Desktop/Launcher.app

source ~/.bash_profile

conda install --yes statsmodel

#Install psycopg2
echo "Install psycopg2"
yes | conda install psycopg2

#brew uninstall spark
echo "Uninstall spark"
brew uninstall apache-spark
sudo rm -rf /usr/local/spark*

#Install spark
echo "Fresh install spark"
brew install hadoop
brew install apache-spark

# Add Spark to the path
echo 'export SPARK_HOME=`brew info apache-spark | grep /usr | tail -n 1 | cut -f 1 -d " "`/libexec' >> ~/.bash_profile
echo 'export PYTHONPATH=$SPARK_HOME/python:$PYTHONPATH' >> ~/.bash_profile
echo 'export HADOOP_HOME=`brew info hadoop | grep /usr | head -n 1 | cut -f 1 -d " "`/libexec' >> ~/.bash_profile
echo 'export LD_LIBRARY_PATH=$HADOOP_HOME/lib/native/:$LD_LIBRARY_PATH' >> ~/.bash_profile

