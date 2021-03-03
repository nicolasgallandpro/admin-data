#new erver
apt update
apt install docker.io -y
apt install docker-compose -y
apt install vim tree htop net-tools curl -y
curl -fsSL https://starship.rs/install.sh | bash

#install caddy
echo "deb [trusted=yes] https://apt.fury.io/caddy/ /" | sudo tee -a /etc/apt/sources.list.d/cad
dy-fury.list
apt install caddy -y

# at the end of bashrc
echo ""
tree /root -L 1 -d
echo ""
docker ps -a --format '{{.Names}}      - {{.Ports}}    ====>   {{.Status}}'
echo "---------------------------"
