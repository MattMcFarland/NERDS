#!bin/bash

cd ~ && mkdir .src && mkdir .local && cd .src

wget https://www.python.org/ftp/python/2.7.6/Python-2.7.6.tar.xz  && tar xzvf *.xz && cd Py*

./configure --prefix ~/.local && make && make install

cd ~/.src

wget http://nodejs.org/dist/v0.10.33/node-v0.10.33.tar.gz && tar xzvf node*.gz && cd node*

./configure --prefix ~/.local && make && make install

cd ~/.src

wget http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.4.tar.gz && tar xzvf ruby*.gz && cd ruby*

./configure --prefix ~/.local && make && make install && cd ~

echo export PATH=$PATH:~/.local/bin >> ~/.ners_rc
echo export PATH=$PATH:~/.local/lib/bin >> ~/.ners_rc
echo node --version && npm --version && ruby --version >> ~/.ners_rc
echo source ~/.ners_rc >> ~/.bashrc
source ~/.bashrc

npm install express grunt bower -g

echo Welcome to NERS
