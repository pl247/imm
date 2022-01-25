# https://intersight.com/an/settings/api-keys/
## Generate API key to obtain the API Key and PEM file

variable "api_key" {
    description = "API Key for Intersight Account"
    type = string
    default = "59af0e11f11aa10001678016/59af0ceef11aa100016748f0/5fad6f147564612d3348b2cb"
}

variable "secretkey" {
    description = "Filename (PEM) that provides secret key for Intersight API"
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
    default = "default"
}

