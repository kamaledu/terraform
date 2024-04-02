# Provider configuration
provider "aws" {
  region = "us-east-1"  # Replace with your desired region
}

# Include variable definitions


# Include other configuration files
module "variables" {
  source = "C:/terraform/variables.tf"
}
module "iam" {
  source = "C:/terraform/iam.tf"
}
module "s3" {
  source = "C:/terraform/s3.tf"
}





