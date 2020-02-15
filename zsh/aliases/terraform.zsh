alias terraform11="/usr/local/opt/terraform@0.11/bin/terraform"
alias terraform11_init="terraform11 init -backend-config=\"encryption_key=$TF_VAR_terraform_state_encryption_key\""

export GOOGLE_APPLICATION_CREDENTIALS="/Users/martin/secrets/atrocity-management-aeb0acfe12ac.json"
export TF_VAR_terraform_state_encryption_key="$(cat /Users/martin/secrets/tfstate_secret.key)"
