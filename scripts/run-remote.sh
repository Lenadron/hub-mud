sudo apt-get update

# Install unzip, git, etc.
sudo apt-get -y install unzip
sudo apt-get -y install git

# Make directories and download and unzip Terraform and Packer
cd /home/
sudo mkdir terraform_0_6_14
sudo mkdir packer_0_10_0

# Install Terraform
cd terraform_0_6_14
sudo curl -O https://releases.hashicorp.com/terraform/0.6.14/terraform_0.6.14_linux_amd64.zip
sudo unzip terraform_0.6.14_linux_amd64.zip

# Install Packer
cd ../packer_0_10_0
sudo curl -O https://releases.hashicorp.com/packer/0.10.0/packer_0.10.0_linux_amd64.zip
sudo unzip packer_0.10.0_linux_amd64.zip
