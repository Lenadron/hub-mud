sudo apt-get update
sudo apt-get install unzip
sudo apt-get -y install git

cd /home/

# Create a move into directory.
sudo mkdir terraform_0_6_14
sudo mkdir packer_0_10_0

cd terraform_0_6_14

# Download.
sudo curl -O https://releases.hashicorp.com/terraform/0.6.14/terraform_0.6.14_linux_amd64.zip
# Unzip and install
sudo unzip terraform_0.6.14_linux_amd64.zip

cd ../packer_0_10_0

# Download.
sudo curl -O https://releases.hashicorp.com/packer/0.10.0/packer_0.10.0_linux_amd64.zip
# Unzip and install
sudo unzip packer_0.10.0_linux_amd64.zip

#Install Node.js via nvm
cd ~

curl https://raw.githubusercontent.com/creationix/nvm/v0.25.0/install.sh | bash
nvm install stable
nvm alias default stable

sudo export PATH=/home/terraform_0_6_14:/home/packer_0_10_0/:$PATH

sudo shutdown -r now
