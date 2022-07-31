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
sudo ./cloudron-setup
sleep 30s
sudo reboot
sleep 99999999999d
