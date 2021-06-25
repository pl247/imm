# https://intersight.com/an/settings/api-keys/
## Generate API key to obtain the API Key and PEM file

variable "api_key" {
    description = "API Key for Terraform Demo Account"
    type = string
    default = "59af0e11f11aa10001678016/59af0ceef11aa100016748f0/5fad6f147564612d3348b2cb"
}

variable "secretkey" {
    description = "Filename (PEM) that provides secret key for Terraform Demo Account"
    type = string
    default = "SecretKey.txt"
}

variable "endpoint" {
    description = "Intersight API endpoint"
    type = string
    default = "https://intersight.com"
}

variable "organization" {
    type = string
    default = "5ddeb24d6972652d3100cb82"
}

variable "mac_pool_moid" {
    type = string
    default = "609edfa36962752d30ce1434"
}

variable "ip_pool_moid" {
    type = string
    default = "60c3d28c6962752d30d3b964"
}

