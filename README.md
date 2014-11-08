# NERS
Version 1.0.0

Node Express Ruby Stack 

The purpose of NERS is to provide a non-conflicting and secure environment for Node JS and Ruby.  Node and Ruby will be installed to the user account, so you don't need to work with Node or Ruby as a super user.

The stack will be installed in ~/.local to avoid any conflicts with your system or other users.

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
