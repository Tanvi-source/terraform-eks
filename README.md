Terraform EKS - Prod-only starter
================================

This repository scaffold creates an EKS cluster in the `prod` environment using a reusable module.

Files you MUST update before running:
- envs/prod/backend.tf: set bucket and dynamodb_table to real names you create or bootstrap
- envs/prod/terraform.tfvars: set subnet IDs and IAM role ARNs
- .github/workflows/terraform-plan-apply.yml: ensure workflow and secrets set

Quick summary:
1. Create S3 bucket and DynamoDB table (or run bootstrap separately).
2. Add GitHub Secrets: AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY
3. Push repo; workflow runs on pushes to main (plan + apply on main).
4. Alternatively run locally: cd envs/prod && terraform init -reconfigure && terraform plan -var-file=terraform.tfvars

Placeholders to replace:
- REPLACE_WITH_YOUR_TFSTATE_BUCKET_prod
- REPLACE_WITH_YOUR_DYNAMODB_TABLE
- REPLACE_WITH_YOUR_ACCOUNT_ID
- subnet IDs and role ARNs in envs/prod/terraform.tfvars

Security notes:
- Use least privilege for the IAM user whose keys you store in GitHub Secrets.
- Consider using OIDC trust for GitHub Actions in production (no long-lived keys).

