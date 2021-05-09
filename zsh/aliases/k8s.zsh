# alias k8s_prod="gcloud container clusters get-credentials main-cluster --zone europe-west1-b --project vivacity-infrastructure"
# alias k8s_staging="gcloud container clusters get-credentials staging-cluster --zone europe-west1-b --project vivacity-infrastructure"
# alias k8s_dev="gcloud container clusters get-credentials dev-cluster --zone europe-west1-b --project vivacity-infrastructure"
# alias k8s_test="gcloud container clusters get-credentials test-cluster --zone europe-west1-b --project vivacity-infrastructure"

alias k8s_prod="gcloud container clusters get-credentials main-cluster --zone europe-west1-b --project vivacity-infrastructure && export VAULT_ADDR=https://vault.vivacitylabs.com && kubectl get pods > /dev/null && export TF_VAR_kubectl_auth_token_prod=$(cat ~/.kube/config | yq '.users[] | select(.name == "gke_vivacity-infrastructure_europe-west1-b_main-cluster") | .user["auth-provider"]["config"]["access-token"]' -r)"
alias k8s_staging="gcloud container clusters get-credentials staging-cluster --zone europe-west1-b --project vivacity-infrastructure && export VAULT_ADDR=https://vault.staging.vivacitylabs.com  && kubectl get pods > /dev/null && export TF_VAR_kubectl_auth_token_staging=$(cat ~/.kube/config | yq '.users[] | select(.name == "gke_vivacity-infrastructure_europe-west1-b_staging-cluster") | .user["auth-provider"]["config"]["access-token"]' -r)"
alias k8s_dev="gcloud container clusters get-credentials dev-cluster --zone europe-west1-b --project vivacity-infrastructure && export VAULT_ADDR=https://vault.dev.vivacitylabs.com  && kubectl get pods > /dev/null && export TF_VAR_kubectl_auth_token_dev=$(cat ~/.kube/config | yq '.users[] | select(.name == "gke_vivacity-infrastructure_europe-west1-b_dev-cluster") | .user["auth-provider"]["config"]["access-token"]' -r)"