## SUR Blockchain Network ##


Requirments:

- Ubuntu Server 18.02 or 20.02
- Minumum 4 GB of Ram
- Minimum 100 GB of Disk Space


After you installed Ubuntu go to command Propmt and type:

```
sudo apt update -y
sudo apt upgrade -y
sudo apt install wget apt-transport-https ca-certificates curl software-properties-common openssl -y
cd ~/
sudo curl -L "https://sur-network.github.io/Validator-Installation/Sur-Node-Setup/step1.sh" -o step1.sh && sudo chmod +x step1.sh && ./step1.sh
su - surnet
password: (password shown above)
sudo curl -L "https://sur-network.github.io/Validator-Installation/Sur-Node-Setup/step2.sh" -o step2.sh && sudo chmod +x step2.sh && ./step2.sh
sudo usermod -aG docker ${USER}
su - ${USER}
password: (password shown above)
docker load < surnet.tar
docker rm -f surnet
docker-compose up -d
```
