terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

terraform {
 backend "s3" {
   bucket         = "welltech-terraform-state-file"
   key            = "terraform.tfstate"
   region         = "us-east-1"
   encrypt        = true
 }
}

provider "aws" {
  region = "us-east-1"  # Set your desired AWS region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "well-tech-tf-cicd"  # Set your desired bucket name
  acl    = "private"  # Set the access control list (ACL), options are private, public-read, public-read-write, or authenticated-read

  # Optional: Configure versioning
  versioning {
    enabled = true
  }

  # Optional: Configure bucket tags
  tags = {
    Name = "MyBucket"
    Environment = "Development"
  }
}

resource "aws_s3_bucket" "new_bucket" {
  bucket = "well-tech-tf-cicd-new"  # Set your desired bucket name
  acl    = "private"  # Set the access control list (ACL), options are private, public-read, public-read-write, or authenticated-read

  # Optional: Configure versioning
  versioning {
    enabled = true
  }

  # Optional: Configure bucket tags
  tags = {
    Name = "MyBucket"
    Environment = "Development"
  }
}

resource "aws_s3_bucket" "samsung" {
  bucket = "well-tech-jenkins-samsung"  # Set your desired bucket name
  acl    = "private"  # Set the access control list (ACL), options are private, public-read, public-read-write, or authenticated-read

  # Optional: Configure versioning
  versioning {
    enabled = true
  }

  # Optional: Configure bucket tags
  tags = {
    Name = "MyBucket"
    Environment = "Development"
  }
}
