
# Creating servers in Intersight using Terraform open source

This simple terraform plan for Intersight creates the minimum required pools and policies so that it can also create a server profile template and a domain profile.

To keep the code simple and compact, it references an Intersight policy bundle here:
https://github.com/pl247/tf-intersight-policy-bundle

The plan does not currently create a storage policy, so you might need to build that to your needs and reference it in your template before deriving server profiles.

### Customize the code so it works for your Intersight

1. Go into Intersight and generate an API key `Gear>Settings>API Keys>Generate API Key` (type version 2)

2. Edit variables.tf file and change the `api_key` default value to the API key ID which you just generated in the step above

3. Create a file called `SecretKey.txt` and put the secret key generated from Intersight inside it

4. Make changes to the `main.tf` as appropriate to reflect your desired environment

### Run the code using Terraform

Execute your Terraform plan using the following commands:
   - terraform init
   - terraform plan
   - terraform apply

### Note about Terraform destroy

Before attempting a `terraform destroy`, you will need to remove the profiles that are using the pools and policies. For example, delete the domain profile manually first and possibly any server profiles before issuing the destroy command.

Also, if you wish to use Terraform Cloud for Business as opposed to the open source version, here is an exampe of that: https://github.com/pl247/imm-tfcb