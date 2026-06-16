# Simulated infrastructure file for Git version control practice.
# This project does not deploy real cloud resources.

resource "aws_s3_bucket" "secure_logs" {
  bucket = "company-secure-logs-demo"

  tags = {
    Environment = "dev"
    Owner       = "cloud-security"
    Project     = "gitops-version-control-lab"
    Security    = "enabled"
    Compliance  = "logging"
  }
}
