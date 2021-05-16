variable "project_id" {
  default = "k8s-helm-challenge-edl"
  description = "The project ID to host the cluster in"
}
variable "cluster_name" {
  description = "The name for the GKE cluster"
  default     = "edl-challenge"
}
variable "env_name" {
  description = "The environment for the GKE cluster"
  default     = "dev"
}
variable "region" {
  description = "The region to host the cluster in"
  default     = "us-east1"
}
variable "network" {
  description = "The VPC network created to host the cluster in"
  default     = "gke-network-edl"
}
variable "subnetwork" {
  description = "The subnetwork created to host the cluster in"
  default     = "gke-subnet-edl"
}
variable "ip_range_pods_name" {
  description = "The secondary ip range to use for pods"
  default     = "ip-range-pods-edl"
}
variable "ip_range_services_name" {
  description = "The secondary ip range to use for services"
  default     = "ip-range-services-edl"
}
variable "instance_type" {
  description = "The type of instance used for the cluster"
  default     = "e2-small"
}
