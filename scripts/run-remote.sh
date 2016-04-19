wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'

# Install unzip, git, jenkins, etc.
sudo apt-get update
sudo apt-get -y install jenkins
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
