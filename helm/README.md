# Nginx-hello Custom image deployment to GKE

Using Helmfile create a multi-stage deployment. Using the following commands, you will be able to deploy the same image, with different configs and settings to the same cluster.

● helmfile -e dev apply

● helmfile -e stage apply

### Requirements
1. Helm
2. Helm-secrets
  * golang
  * Sops
3. Helmfile
  * Plugins:
    * helm-diff
4. A Google kms already created used to encrypt and decrypt

## Content
The repository contains a helm chart which deploys a custom image of nginx-hello uploaded to Docker Hub following basic configurations and adds Environment variables to suffice the requirement:

*You’ll need to modify the image to add the following additional information*

● *The environment (e.g. dev or stage)*

● *A secret value*

Helm-secrets was implemented to suffice the following requirement:

*To securely add the secret to the helm charts please use Helm secrets.
In order to call the task done, you will be expected to deploy the final working Kubernetes environment to the Google Cloud project you were given permissions to.*

Helmfile was used to declare specifications for deploying multiple environments in a single yaml file with Helm charts.
