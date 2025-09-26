# Example Project

Example project showing how to use the reusable Terraform workflows.

## Structure

```
example-project/
├── .github/workflows/
│   ├── terraform.yml          # Main Terraform workflow
│   └── terraform-destroy.yml  # Destroy workflow
├── environments/
│   └── prod/
│       ├── main.tf
│       ├── variables.tf
│       └── terraform.tfvars
└── modules/
    └── s3/
        ├── main.tf
        └── variables.tf
```

## Usage

1. **Plan**: Push to main or create PR - automatically runs plan
2. **Apply**: Manual trigger with action=apply
3. **Destroy**: Manual trigger using destroy workflow

## Setup

1. Configure GitHub secrets:
   - `AWS_ACCESS_KEY_ID`
   - `AWS_SECRET_ACCESS_KEY`
2. Configure GitHub variables:
   - `AWS_REGION`
3. Create `production` environment in GitHub settings for approvals

## Workflows

- Uses `your-org/reusable-workflows` for standardized Terraform operations
- Automatically discovers targets in `environments/` directory
- Supports matrix execution for multiple environments