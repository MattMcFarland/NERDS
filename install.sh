#!bin/bash
echo NERS Installer v1.0.0  - This process will take up to 45 minutes.
# Make basic scaffold
cd $HOME
mkdir $HOME/.src && mkdir $HOME/.local && mkdir $HOME/.src/log && mkdir $HOME/.local/bin && mkdir $HOME/.local/lib/bin

# Set local bin right away
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/.local/lib/bin

# Install Python 2.7.6
cd $HOME/.src
curl https://www.python.org/ftp/python/2.7.6/Python-2.7.6.tar.xz > Python-2.7.6.tar.xz && tar -xJvf *.xz && cd Py*
./configure --prefix $HOME/.local && make && make install 

# Install NodeJS
cd $HOME/.src
curl http://nodejs.org/dist/v0.10.33/node-v0.10.33.tar.gz > node-v0.10.33.tar.gz && tar -xzvf node*.gz && cd node*
./configure --prefix $HOME/.local && make && make install

# Install Ruby
cd $HOME/.src
curl http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.4.tar.gz > ruby-2.1.4.tar.gz && tar -xzvf ruby-2.1.4.tar.gz && cd ruby-2.1.4
./configure --prefix $HOME/.local && make && make install

# Setup PATH exports
echo Configuring PATH variables
echo export PATH=$PATH:~/.local/bin > ~/.ners_rc
echo export PATH=$PATH:~/.local/lib/bin >> ~/.ners_rc
echo source $HOME/.ners_rc >> ~/.bashrc
source $HOME/.bashrc

npm install express grunt bower -g
chmod -R 700 $HOME/.local

echo Welcome to NERS
