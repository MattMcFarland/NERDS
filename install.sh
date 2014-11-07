#!bin/bash

cd ~ && mkdir .src && mkdir .local && cd .src

wget https://www.python.org/ftp/python/2.7.6/Python-2.7.6.tar.xz  && tar xzvf *.xz && cd Py*

./configure --prefix ~/.local && make && make install

cd ~/.src

wget http://nodejs.org/dist/v0.10.33/node-v0.10.33.tar.gz && tar xzvf node*.gz && cd node*

./configure --prefix ~/.local && make && make install

cd ~/.src

wget http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.4.tar.gz && tar xzvf ruby*.gz

./configure --prefix ~/.local && make && make install

echo export PATH=$PATH:~/.local/bin >> ~/.bashrc
echo export PATH=$PATH:~/.local/lib/bin >> ~/.bashrc

~/.local/lib/bin/npm install express grunt bower -g

echo NERS Installed! Please exit this terminal and return to finish.
