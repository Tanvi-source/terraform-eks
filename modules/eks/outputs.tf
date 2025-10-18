output "cluster_name" {
  description = "EKS cluster name"
  value       = aws_eks_cluster.this.name
}

output "cluster_endpoint" {
  description = "Cluster API endpoint"
  value       = aws_eks_cluster.this.endpoint
}

output "node_group_name" {
  description = "Node group name"
  value       = aws_eks_node_group.this.node_group_name
}
