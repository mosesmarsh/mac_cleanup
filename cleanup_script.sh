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
sudo rm -rdf !(Applications|Library|Desktop|Documents|Downloads|Pictures|Public|mac_cleanup)
cd -

#update brew
echo "Updating brew"
sudo chown gSchool:admin /usr/local
brew update

echo "Update shell"
chsh -s /usr/local/bin/bash

#Install conda.
echo "Fresly installing anaconda"
curl -O https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/Anaconda2-2.4.1-MacOSX-x86_64.sh
bash Anaconda2-2.4.1-MacOSX-x86_64.sh -b -p ~/anaconda2

#Get the correct .bash_profile
echo "Updating .bash_profile"
sudo cp .bash_profile ~/.bash_profile

#source bash_profile
source ~/.bash_profile

#Install psycopg2
echo "Install psycopg2"
yes | conda install psycopg2

#Remove sublime
echo "Removing sublime."
rm -rf /Applications/Sublime\ Text*app

#brew uninstall spark
echo "Uninstall spark"
brew uninstall apache-spark
sudo rm -rf /usr/local/spark*

#Install spark
echo "Fresh install spark"
curl -O http://d3kbcqa49mib13.cloudfront.net/spark-1.5.1-bin-hadoop1.tgz
tar -xzf spark-1.5.1-bin-hadoop1.tgz -C /usr/local/
ln -s /usr/local/spark-1.5.1-bin-hadoop1/ /usr/local/spark

#get prepped for statsmodels
xcode-select --install
