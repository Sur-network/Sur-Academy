#!binbash
#sudo apt update -y
#sudo apt install wget openssl -y

if id 'surnet' &devnull; then
    echo 'user surnet found, deleting home directory and recreating user'
    sudo pkill -KILL -u surnet
    sudo deluser --remove-home surnet
#    sudo delgroup surnet
else
    echo 'creating user surnet'
fi

SURNET_USER_PASSWORD=$(tr -cd '[alnum]'  devurandom  fold -w30  head -n1)

sudo useradd --shell binbash -m -p $(openssl passwd -1 $SURNET_USER_PASSWORD) surnet
sudo usermod -aG sudo surnet
echo created user surnet with password $SURNET_USER_PASSWORD
echo ATTENTION keep the password above in safe and secure place
