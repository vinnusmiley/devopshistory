#!/usr/bin/env sh

set -e

# Install Terraform

echo "Downloading Terraform..."
sudo apt install unzip
terraform_version="1.1.4"
curl -LO "https://releases.hashicorp.com/terraform/${terraform_version}/terraform_${terraform_version}_linux_amd64.zip"
unzip terraform_${terraform_version}_linux_amd64.zip && rm -rf terraform_${terraform_version}_linux_amd64.zip
sudo mv ./terraform /usr/local/bin
echo "TERRAFORM_VERSION=$(terraform version)"
