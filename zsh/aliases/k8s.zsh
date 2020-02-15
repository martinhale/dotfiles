alias prod="gcloud container clusters get-credentials main-cluster --zone europe-west1-b --project vivacity-infrastructure"
alias staging="gcloud container clusters get-credentials staging-cluster --zone europe-west1-b --project vivacity-infrastructure"
alias dev="gcloud container clusters get-credentials dev-cluster --zone europe-west1-b --project vivacity-infrastructure"

alias helm_staging="helm --tls --tls-ca-cert=/Users/martin/Developer/Vivacity/atrocity/vivacity-infrastructure/k8s-staging/helm_certs/ca.helm.cert.pem --tls-cert=/Users/martin/Developer/Vivacity/atrocity/vivacity-infrastructure/k8s-staging/helm_certs/helm.cert.pem --tls-key=/Users/martin/Developer/Vivacity/atrocity/vivacity-infrastructure/k8s-staging/helm_certs/helm.key.pem"
alias helm_prod="helm --tls --tls-ca-cert=/Users/martin/Developer/Vivacity/atrocity/vivacity-infrastructure/k8s/helm_certs/ca.helm.cert.pem --tls-cert=/Users/martin/Developer/Vivacity/atrocity/vivacity-infrastructure/k8s/helm_certs/helm.cert.pem --tls-key=/Users/martin/Developer/Vivacity/atrocity/vivacity-infrastructure/k8s/helm_certs/helm.key.pem"
