# Set default environment if not specified
env := "dev"

# Show help
help:
    @echo "Remote State Infrastructure Deployment"
    @echo ""
    @echo "Available commands:"
    @echo "  just init [env]           - Initialize Terraform"
    @echo "  just plan [env]           - Plan changes for environment"
    @echo "  just apply [env]          - Apply changes for environment"
    @echo "  just fmt                  - Format Terraform files"
    @echo ""
    @echo "env is one of [dev, test, prod]"
    @echo "Example: just plan dev"

init env="dev":
    export AWS_PROFILE='profile-{{env}}' && \
    terraform init -reconfigure -backend-config="backend-configs/backend.{{env}}.conf"

# Plan changes for specified environment
plan env="dev":
    terraform plan -var-file="tfvars/{{env}}.tfvars"

# Apply changes for specified environment
apply env="dev":
    terraform apply -var-file="tfvars/{{env}}.tfvars"

# Format Terraform files
fmt:
    terraform fmt -recursive
