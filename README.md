# packer_to_make_ami 
1.Download Packer 
brew tap hashicorp/tap
brew install hashicorp/tap/packer


2.Make Json Template (amazon-linux-docker.pkr.json)
-go with Amazon Linux
-include Docker


3.Inject environment variable 
export AWS_ACCESS_KEY_ID=your_access_key
export AWS_SECRET_ACCESS_KEY=your_secret_key
export AWS_ACCESS_TOKEN=your_access_token


4.Run with command 
packer init amazon-linux-docker.pkr.json
packer validate amazon-linux-docker.pkr.json
packer build amazon-linux-docker.pkr.json

# Terraform_


