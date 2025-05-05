# Terraform IaC skeleton for dev/test/prod w account separation

To bootstrap this first deploy the state bucket with the backend in providers commented out. Then once the state bucket exists uncomment it and deploy again, terraform will offer to migrate local tfstate to the s3 bucket.
