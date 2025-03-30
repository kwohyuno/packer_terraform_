# Updates for Assignment10, Ansible Practice(Mar 30th) <br>

1. Fixed ec2_instance.tf<br>
-making 3 ubuntu instance and 3 another Amazon Linux instance<br>
-1 ansible controller instance<br>
<br>
2. bastion.tf<br>
associate_public_ip_address = true<br>
-> this enables access to bastion host instance (grant public ip)
<br><br>
3. variables.tf<br>
-added pre-built ubuntu_ami and amazon_ami<br>
<br>
4.install ansible <br>
-brew install ansible<br>
<br>
5.added inventory.ini<br>
-add jump host by
[all:vars]
ansible_ssh_common_args=-o ProxyCommand="ssh -W %h:%p -q -i /Users/hyunohkwon/Downloads/kwohyuno-key-pair.pem ec2-user@ec2-54-167-98-182.compute-1.amazonaws.com" -o StrictHostKeyChecking=no

<br>
<br>
6.added playbook.yml<br>
-Update and upgrade the packages (if needed)<br>
-Verify we are running the latest docker<br>
-Report the disk usage for each ec2 instance<br>
<br>
7. run<br>
ansible-playbook -i inventory.ini playbook.yml --private-key /Users/hyunohkwon/Downloads/kwohyuno-key-pair.pem<br>
(you need to change key location and key name to use your key)
<br>
p.s. I ran the ansible at local server, using jump host, 


<br><br><br>

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
