resource "aws_eks_cluster" "example" {
  name     = "my-eks-cluster"
  role_arn = "arn:aws:iam::029554872730:role/my-eks-cluster-role"
  version  = "1.27"

  vpc_config {
    subnet_ids = ["subnet-0a4e7d2a08365435f","subnet-0ce3f8d2cd95aa5c6","subnet-027117833526debee"]
  }
}