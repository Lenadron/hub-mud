gcloud compute ssh "hubmud" --zone "us-central1-b" --command "curl https://raw.githubusercontent.com/creationix/nvm/v0.25.0/install.sh | bash && nvm install stable && nvm alias default stable"
