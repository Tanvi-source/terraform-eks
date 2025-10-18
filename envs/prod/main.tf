variable "region" { type = string }
variable "cluster_name" { type = string }
variable "subnet_ids" { type = list(string) }
variable "cluster_role_arn" { type = string }
variable "node_role_arn" { type = string }
variable "node_type" { type = string }
variable "desired_nodes" { type = number }
variable "min_nodes" { type = number }
variable "max_nodes" { type = number }

module "eks" {
  source           = "../../modules/eks"
  cluster_name     = var.cluster_name
  subnet_ids       = var.subnet_ids
  cluster_role_arn = var.cluster_role_arn
  node_role_arn    = var.node_role_arn
  node_type        = var.node_type
  desired_nodes    = var.desired_nodes
  min_nodes        = var.min_nodes
  max_nodes        = var.max_nodes
}
