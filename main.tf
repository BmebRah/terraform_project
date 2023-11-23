
terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 5.0"
        }
    }
        backend "s3" {
        bucket = "bm-tfstate-bucket"
        key    = "bm.tfstate"
        region = "eu-west-2"
    }
}

provider "aws" {
region = "eu-west-2"
}

