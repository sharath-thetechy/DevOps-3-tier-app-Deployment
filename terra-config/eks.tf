
# Create the EKS Cluster
resource "aws_eks_cluster" "eks_cluster" {
  name = "Three-tier-cloud"

  role_arn = aws_iam_role.cluster_role.arn

  vpc_config {
    subnet_ids = [
      "subnet-097fbc464371145d4",
      "subnet-0d05f656e4bcfb0c2"
  }
  depends_on = [
    aws_iam_role_policy_attachment.cluster_AmazonEKSClusterPolicy,
  ]
}
