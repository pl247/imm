
# Creating servers in Intersight using Terraform open source

This simple terraform plan for Intersight creates the minimum required pools and policies so that it can also create a server profile template and a domain profile.

To keep the code simple and compact, it references an Intersight policy bundle here:
https://github.com/pl247/tf-intersight-policy-bundle

The plan does not currently create a storage policy, so you will need to build that to your needs and reference it in your template.

### Directions to customize the code

1. Go into Intersight and generate an API key `Gear>Settings>API Keys>Generate API Key` (type version 2)

2. Edit variables.tf file and change the `api_key` to that which you just generated in step 1

3. Create a file called `SecretKey.txt` and put the secret key generated from Intersight inside it

### Directions to run the code using Terraform

Execute your Terraform plan using the following commands:
   - terraform init
   - terraform plan
   - terraform apply