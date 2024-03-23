# TerraformDeploy

## Basic commands

### Terraform init

```bash
terraform init -input=false -backend-config="./azure-backend.conf"
```

### Terraform plan

```bash
terraform plan -input=false -out=local.tfplan
```

### Terraform apply

```bash
terraform apply -input=false -auto-approve local.tfplan
```