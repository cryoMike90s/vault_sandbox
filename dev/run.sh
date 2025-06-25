#!/bin/bash
# load-env.sh
set -a
source .env
set +a

export TF_VAR_vault_server=$VAULT_SERVER
export TF_VAR_root_token=$ROOT_TOKEN

terraform init
terraform plan

if [[ "$1" == "-a" && "$2" == "yes" ]]; then
  echo "Applying Terraform configuration..."
  terraform apply -auto-approve
else
  echo "Plan completed. Use '$0 -a yes' to apply changes."
fi
