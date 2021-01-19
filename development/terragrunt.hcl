# Pull in the backend and provider configurations from a root terragrunt.hcl file that you include in each child terragrunt.hcl:
include {
  path = find_in_parent_folders()
}

# Set the source to an immutable released version of the infrastructure module being deployed:
terraform {
  source = "git::https://github.com/nclouds/doz-cloudprem-infrastructure.git//cloudprem?ref=v0.0.9"
}

# Configure input values for the specific environment being deployed:
inputs = {
  region = "us-west-2"

  vpc_cidr = "172.16.0.0/16"

  dozuki_license_parameter_name = "/cloudprem/dev/license"

  environment = "dev"
}