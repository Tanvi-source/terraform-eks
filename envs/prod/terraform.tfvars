region = "ap-south-1"
cluster_name = "prod-eks-cluster"
# Replace below subnet IDs with real private subnet IDs in your VPC
subnet_ids = ["subnet-0123456789abcdef0", "subnet-0123456789abcdef1"]
# Replace with real role ARNs (create these in IAM or via separate module)
cluster_role_arn = "arn:aws:iam::REPLACE_WITH_YOUR_ACCOUNT_ID:role/EKSClusterRole"
node_role_arn    = "arn:aws:iam::REPLACE_WITH_YOUR_ACCOUNT_ID:role/EKSNodeRole"
node_type = "t3.large"
desired_nodes = 3
min_nodes = 2
max_nodes = 5
