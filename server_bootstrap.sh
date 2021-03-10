#new erver
apt update
apt install docker.io -y
apt install docker-compose -y
apt install vim tree htop net-tools curl -y
curl -fsSL https://starship.rs/install.sh | bash

#install caddy
apt install -y debian-keyring debian-archive-keyring apt-transport-https
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' | sudo apt-key add -
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' | sudo tee -a /etc/apt/sources.list.d/caddy-stable.list
apt update
apt install caddy -:y

# at the end of bashrc
echo ""
tree /root -L 1 -d
echo ""
docker ps -a --format '{{.Names}}      - {{.Ports}}    ====>   {{.Status}}'
echo "---------------------------"
