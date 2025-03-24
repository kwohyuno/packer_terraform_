# packer_to_make_ami 
1.Download Packer <br>
brew tap hashicorp/tap   <br>
brew install hashicorp/tap/packer  <br>


2.Make Json Template (amazon-linux-docker.pkr.json) <br>
-go with Amazon Linux <br>
-include Docker <br>


3.Inject environment variable <br>
export AWS_ACCESS_KEY_ID=your_access_key  <br>
export AWS_SECRET_ACCESS_KEY=your_secret_key <br>
export AWS_ACCESS_TOKEN=your_access_token <br>


4.Run with command  <br>
packer init amazon-linux-docker.pkr.json <br>
packer validate amazon-linux-docker.pkr.json <br>
packer build amazon-linux-docker.pkr.json <br>

# Terraform_


