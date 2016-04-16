sudo apt-get update
sudo apt-get install unzip
sudo apt-get -y install git

cd ~

# Create a move into directory.
mkdir terraform_0_6_14
mkdir packer_0_10_0

cd ~/terraform_0_6_14

# Download.
curl -O https://releases.hashicorp.com/terraform/0.6.14/terraform_0.6.14_linux_amd64.zip
# Unzip and install
unzip terraform_0.6.14_linux_amd64.zip

cd ~/packer_0_10_0

# Download.
curl -O https://releases.hashicorp.com/packer/0.10.0/packer_0.10.0_linux_amd64.zip
# Unzip and install
unzip packer_0.10.0_linux_amd64.zip

echo '
# Terraform & Packer Paths.
export PATH=~/terraform_0_6_14:~/packer_0_10_0/:$PATH
' >>~/.bashrc

source ~/.bashrc

# verify we're all set to terraform and packer.
terraform
packer