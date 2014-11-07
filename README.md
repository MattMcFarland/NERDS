NERS
====

Node Express Ruby Stack VM Boilerplate


NERS is a lightweight web application development stack to run in a linux environment.  It is designed to work locally only on a per user service.

Node, Express, and Ruby will run only under your user's home directory, so you won't have to deal with annoying sudo commands.

NERS only requires a barebones linux system, with only compiling tools installed.

### How to install

1. Login to your machine via ssh
2. Make sure compiling tools are installed 

```bash
sudo yum/apt-get install gcc gpp make gcc-c++ gcc-gpp git -y
cd ~

curl -L https://raw.githubusercontent.com/MattMcFarland/NERS/master/install.
sh | bash
```

3. Confirm your installation

```
node --version
npm --version
rvm --version
```

now get your dev on :)
