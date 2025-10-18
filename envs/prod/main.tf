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
