rm -rf ~/Documents/*
rm -rf ~/Desktop/*
rm -rf ~/Downloads/*

#update xcode?

sudo chown gSchool:admin /usr/local
brew update

#Remove anaconda
sudo rm -rdf ~/anaconda

#Install conda.
curl -O https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/Anaconda2-2.4.1-MacOSX-x86_64.sh
bash Anaconda2-2.4.1-MacOSX-x86_64.sh

#Install psycopg2
yes | conda install psycopg2

#Remove sublime
rm /Applications/Sublime\ Text*app

#brew uninstall spark
brew uninstall apache-spark

#Install spark
curl -O http://d3kbcqa49mib13.cloudfront.net/spark-1.5.1-bin-hadoop1.tgz
tar -xzf spark-1.5.1-bin-hadoop1.tgz -C /usr/local/
ln -s /usr/local/spark-1.5.1-bin-hadoop1/ /usr/local/spark

#Get the correct .bash_profile
cp .bash_profile ~/.bash_profile
