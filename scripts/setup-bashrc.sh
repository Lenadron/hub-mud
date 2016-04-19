gcloud compute ssh "hubmud" --zone "us-central1-b" --command "echo \"
export PATH=/home/terraform_0_6_14:/home/packer_0_10_0/:$PATH
\" >> ~/.bashrc"

gcloud compute ssh "hubmud" --zone "us-central1-b" --command "source ~/.bashrc"
