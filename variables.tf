variable "tfe_org" {
  description = "Name of TFE organization which has workspace containing vpc to use."
}

# Assumes that each workspace tracking resource groups has a unique region
variable "vpc_workspace" {
  description = "Name of TFE workspace managing deployment of vpc to use."
}
variable "tags" {
  type = "map"

  default = {
    Owner = "Stenio Ferreira"
    TTL = "48"
    Environment = "dev"
  }
}