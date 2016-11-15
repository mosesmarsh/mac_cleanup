xcode-select --install

# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

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
curl -L https://repo.continuum.io/archive/Anaconda2-4.2.0-MacOSX-x86_64.sh > anaconda_script.sh
bash anaconda_script.sh

rm ~/Desktop/Launcher.app

source ~/.bash_profile

conda install --yes statsmodels

