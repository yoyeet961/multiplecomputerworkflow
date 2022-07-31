sleep 20s
sudo wget https://cloudron.io/cloudron-setup
sudo chmod +x ./cloudron-setup
sudo apt-get purge -y nginx nginx-common
sudo apt-get purge -y docker docker-engine docker.io docker-ce
sudo rm -rf /var/lib/docker /etc/docker
sudo rm /etc/apparmor.d/docker
sudo groupdel docker
sudo rm -rf /var/run/docker.sock
sudo apt purge -y --auto-remove nodejs
sudo apt-get purge nginx nginx-common

sudo apt-get autoremove
sudo apt-get remove nginx* --purge
sudo apt-get purge -y docker-engine docker docker.io docker-ce docker-ce-cli
sudo apt-get autoremove -y --purge docker-engine docker docker.io docker-ce
sudo apt-get purge --auto-remove nodejs
sudo apt-get purge nodejs
sleep 5s
sudo ./cloudron-setup
sleep 20s
sudo reboot
