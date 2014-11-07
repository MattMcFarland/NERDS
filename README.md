NERS
====

Node Express Ruby Stack VM Boilerplate


NERS is a lightweight web application development stack to run in a linux environment.  Node, Express, and Ruby will run only under your user's home directory, so you won't have to deal with annoying sudo commands.  The stack will be installed in ~/.local to avoid any conflicts with your system or other users.

NERS only requires a barebones linux system with compiling tools installed.

### How to install

#### Make sure compiling tools are installed 

CentOS/RHEL
```bash
sudo yum install gcc gpp make gcc-c++ gcc-gpp git wget curl -y
```

Ubuntu/Debian
```bash
sudo apt-get gcc gpp make gcc-c++ gcc-gpp g++ git wget curl -y
```

#### Install NERS
```
curl -L https://raw.githubusercontent.com/MattMcFarland/NERS/master/install.sh | bash
```

#### Confirm Installation

```
node --version
npm --version
ruby --version
```

now get your dev on :)
