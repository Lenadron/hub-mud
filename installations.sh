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

sudo echo '
# Terraform & Packer Paths.
export PATH=/home/terraform_0_6_14:/home/packer_0_10_0/:$PATH
' >>/home/adron/.bashrc

source /home/adron/.bashrc

# verify we're all set to terraform and packer.
terraform
packer