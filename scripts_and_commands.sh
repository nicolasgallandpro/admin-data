
#install nodejs
curl -sL https://deb.nodesource.com/setup_15.x | bash -
apt-get install -y nodejs

# update nodejs et npm
npm install -g n
n latest

#misc
df -h
df -h -t ext4  #taille et place restante
du -h -s *   #qu'est-ce qui prend de la place dans un dossier
sudo -i

