
Directions for using Terraform with IMM demo
--------------------------------------------

Create a file called SecretKey.txt file and put your secret key generated from Intersight there (see api_key below).

Edit variables.tf file and change the following variables/MOIDs to match yours:

organization - Your intersight account will have a default organization. One way to find the 
organization is to go to Gear>Settings>Organizations> and click the default org. Get the MOID 
of the default org from the URL. The MOID is 5ddeb24d6972652d3100cb82 if your URL is:
https://intersight.com/an/settings/organizations/5ddeb24d6972652d3100cb82/

mac_pool_moid - Create a MAC pool in Intersight and get the MOID by clicking on the pool 
in Intersight and copy the hex ID that comes after macpool. For example if this is the URL 
of your MAC pool in intersight, then the MOID is 609edfa36962752d30ce1434:
https://intersight.com/an/pool/pools/abstract/macpool/609edfa36962752d30ce1434/view/?$currentPage=1&$pageSize=10 

ip_pool_moid - Create an IP pool in Intersight and get the MOID by clicking on the pool 
in Intersight and copy the hex ID that comes after ippool. For example if this is the URL 
of your IP pool in intersight, then the MOID is 60c3d28c6962752d30d3b964:
https://intersight.com/an/pool/pools/abstract/ippool/60c3d28c6962752d30d3b964/view/?$currentPage=1&$pageSize=10

api_key - Generate an API key in your intersight Gear>Settings>API Keys>Generate API Key using version 2. 
After clicking Generate, you'll be presented with the API key and Secret Key. Put the Secret Key into the file SecretKey.txt
