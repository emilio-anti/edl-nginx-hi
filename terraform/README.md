# Terraform Google Kubernetes Engine

This terraform creates a GKE with Terraform using a remote state in existing GCS bucket named _caylent-challenge-edl-remote-state_ and the network which creates a separate VPC dedicated to the cluster and subnet ranges for the pods and services.

### Requirements

Terraform v0.14.9

gcloud

Google Cloud account

  1. Enable the service compute.googleapis.com
  2. Enable the service container.googleapis.com

You can enable them with the following commands:
```
$ gcloud services enable compute.googleapis.com
$ gcloud services enable container.googleapis.com
```

To provision the infrastructure run:
```
terraform init
terraform plan
terraform apply
```
