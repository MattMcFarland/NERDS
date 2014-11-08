#!bin/bash

# Make basic scaffold
cd $HOME
mkdir $HOME/.src && mkdir $HOME/.local && mkdir $HOME/.src/log && mkdir $HOME/.local/bin && mkdir $HOME/.local/lib/bin

# Set local bin right away
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/.local/lib/bin

# Install Python 2.7.6
cd $HOME/.src
wget https://www.python.org/ftp/python/2.7.6/Python-2.7.6.tar.xz && tar -xJvf *.xz && cd Py*
./configure --prefix $HOME/.local 
echo Installing Python 2.7.6 ... (Process may take 10-30 mins)
make > $HOME/.src/log/Python-2.7.6.log && make install >> $HOME/.src/log/Python-2.7.6.log

# Install NodeJS
cd $HOME/.src
wget http://nodejs.org/dist/v0.10.33/node-v0.10.33.tar.gz && tar -xzvf node*.gz && cd node*
./configure --prefix $HOME/.local 
echo Installing NodeJS 0.10.33 ... (Process may take 10-30 mins)
make > $HOME/.src/log/node-v0.10.33.log && make install >> $HOME/.src/log/node-v0.10.33.log

# Install Ruby
cd $HOME/.src
wget http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.4.tar.gz && tar -xzvf ruby-2.1.4.tar.gz && cd ruby-2.1.4
./configure --prefix $HOME/.local 
echo Installing Ruby 2.1.4 ... (Process may take 10-30 mins)
make > $HOME/.src/log/ruby-2.1.4.log && make install >> $HOME/.src/log/ruby-2.1.4.log

# Setup PATH exports
echo Configuring PATH variables
echo export PATH=$PATH:~/.local/bin > ~/.ners_rc
echo export PATH=$PATH:~/.local/lib/bin >> ~/.ners_rc
echo source $HOME/.ners_rc >> ~/.bashrc
source $HOME/.bashrc

npm install express grunt bower -g
chmod -R 700 $HOME/.local

echo Welcome to NERS
echo NodeJS
node --version
echo Ruby
ruby --version
echo Ruby Gem
gem --version
echo Python
python --version
