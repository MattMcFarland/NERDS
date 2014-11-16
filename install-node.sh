#!bin/bash
echo Rapid NodeJS Local-user install
# Make basic scaffold
cd $HOME
mkdir $HOME/.src && mkdir $HOME/.local && mkdir $HOME/.src/log && mkdir $HOME/.local/bin && mkdir $HOME/.local/lib/bin

# Set local bin right away
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/.local/lib/bin

# Install NodeJS
cd $HOME/.src
curl http://nodejs.org/dist/v0.10.33/node-v0.10.33.tar.gz > node-v0.10.33.tar.gz && tar -xzvf node*.gz && cd node*
./configure --prefix $HOME/.local && make && make install

# Setup PATH exports
echo Configuring PATH variables
echo export PATH=$PATH:~/.local/bin > ~/.ners_rc
echo export PATH=$PATH:~/.local/lib/bin >> ~/.ners_rc
echo source $HOME/.ners_rc >> ~/.bashrc
source $HOME/.bashrc

npm install express grunt grunt-cli bower -g
chmod -R 700 $HOME/.local

echo Node JS
