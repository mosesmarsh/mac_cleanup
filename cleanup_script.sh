echo "Clean up time!"
echo "Clearing out Documents"
rm -rf ~/Documents/*
echo "Clearing out Desktop"
rm -rf ~/Desktop/*
echo "Clearing Downloads"
rm -rf ~/Downloads/*

#update xcode?

echo "Updating brew"
sudo chown gSchool:admin /usr/local
brew update

#Remove anaconda
echo "Removing anaconda"
sudo rm -rdf ~/anaconda

#Install conda.
echo "Fresly installing anaconda"
curl -O https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/Anaconda2-2.4.1-MacOSX-x86_64.sh
bash Anaconda2-2.4.1-MacOSX-x86_64.sh

#Install psycopg2
echo "Install psycopg2"
yes | conda install psycopg2

#Remove sublime
echo "Removing sublime."
rm -rf /Applications/Sublime\ Text*app

#brew uninstall spark
echo "Uninstall spark"
brew uninstall apache-spark

#Install spark
echo "Fresh install spark"
curl -O http://d3kbcqa49mib13.cloudfront.net/spark-1.5.1-bin-hadoop1.tgz
tar -xzf spark-1.5.1-bin-hadoop1.tgz -C /usr/local/
ln -s /usr/local/spark-1.5.1-bin-hadoop1/ /usr/local/spark

#Get the correct .bash_profile
echo "Updating .bash_profile"
cp .bash_profile ~/.bash_profile
