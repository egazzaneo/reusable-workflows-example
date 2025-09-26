terraform {
  backend "s3" {
    bucket = "my-s3-bucket-edg-2024"
    key    = "terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true
    workspace_key_prefix = "terraform/IaC/714415538775"
  }
}
