# NERDS
Version 1.0.2

Node Express Ruby Development Stack 

The purpose of NERDS is to provide a non-conflicting and secure environment for Node JS and Ruby.  Node and Ruby will be installed to the user account, so you don't need to work with Node or Ruby as a super user.

The stack will be installed in ~/.local to avoid any conflicts with your system or other users.

NERDS only requires a barebones linux system with compiling tools installed.

### How to install

#### Full stack (Node, Ruby, and Dependencies)

The full stack will make and compile node, ruby, and python as a dependency.  This process can be time consuming, and for some environments a bit over-kill.  

```bash
curl -L https://raw.githubusercontent.com/MattMcFarland/NERDS/master/install.sh | bash
```

#### Node Only

For a fast install of just node for a local user, use the following:
```bash
curl -L https://raw.githubusercontent.com/MattMcFarland/NERDS/master/install-node.sh | bash
```

#### Make sure compiling tools are installed 

CentOS/RHEL
```bash
sudo yum install gcc gpp make gcc-c++ gcc-gpp git -y
```

Ubuntu/Debian
```bash
sudo apt-get install gcc gpp make gcc-gpp git -y
```

#### Confirm Installation

```
node --version
npm --version
ruby --version
```

now get your dev on :)


### Changelog
1.0.1 - fixes to installation instructions
