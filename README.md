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

<img width="966" alt="image" src="https://github.com/user-attachments/assets/04c87149-2f51-483a-8dd5-05a9f9394875" />


# Terraform_ 
1.Install terraform <br>
-brew install hashicorp/tap/terraform <br><br>

2.Make bastion host <br>
-Allow ssh from my IP <br><br>

3.Use custom ami to make 6 ec2  <br><br>

4.Make vpc module in main.tf <br><br>

5.add variables in variables.tf <br>
-custom ami <br>
-my ip <br><br>

5.Execute Terraform <br>
-terraform init <br>
-terraform plan <br>
-terraform apply<br>
<img width="505" alt="image" src="https://github.com/user-attachments/assets/e7c5621a-de63-4ec7-8a3b-3fb4b46d8244" />
