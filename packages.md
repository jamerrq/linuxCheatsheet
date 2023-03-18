## Packages

### Apt packages
```
sudo apt install -y git
sudo apt install -y i3
sudo apt install -y htop
sudo apt install -y feh
sudo apt install -y curl
sudo apt install -y vlc
sudo apt install -y shutter
sudo apt install -y calibre
sudo apt install -y kolourpaint
```

### Snap packages
```
sudo snap install slack
sudo snap install scrcpy
```

### Java
```
sudo apt-get install openjdk-8-jre
sudo apt-get install openjfx
```

### Playerctl v2.0.1
```
wget http://ftp.nl.debian.org/debian/pool/main/p/playerctl/libplayerctl2_2.0.1-1_amd64.deb
wget http://ftp.nl.debian.org/debian/pool/main/p/playerctl/playerctl_2.0.1-1_amd64.deb
sudo dpkg -i libplayerctl2_2.0.1-1_amd64.deb playerctl_2.0.1-1_amd64.deb
```


### Nvm v0.39.3
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
```

### Php
```
sudo apt install -y php libapache2-mod-php php-mysql
```