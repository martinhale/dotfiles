export GOOGLE_APPLICATION_CREDENTIALS="/Users/martin/secrets/atrocity-management-aeb0acfe12ac.json"
export TF_VAR_terraform_state_encryption_key="$(cat /Users/martin/secrets/tfstate_secret.key)"
alias tfinit="terraform init -backend-config=\"encryption_key=$TF_VAR_terraform_state_encryption_key\""
