# Packages

## Apt packages

```bash
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

## Snap packages

```bash
sudo snap install slack
sudo snap install scrcpy
```

## Java

```bash
sudo apt-get install openjdk-8-jre
sudo apt-get install openjfx
```

## Playerctl v2.0.1

```bash
wget http://ftp.nl.debian.org/debian/pool/main/p/playerctl/libplayerctl2_2.0.1-1_amd64.deb
wget http://ftp.nl.debian.org/debian/pool/main/p/playerctl/playerctl_2.0.1-1_amd64.deb
sudo dpkg -i libplayerctl2_2.0.1-1_amd64.deb playerctl_2.0.1-1_amd64.deb
```

## Nvm v0.39.3

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
```

## Php

```bash
sudo apt install -y php libapache2-mod-php php-mysql
```

## Net Tools

```bash
sudo apt install -y net-tools
```

## Tex Live

```bash
sudo apt install texlive-full
sudo apt install texlive
```

## Postgres

```bash
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt update
sudo apt install postgresql postgresql-contrib
```

## Docker

```bash
sudo apt install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER
```
