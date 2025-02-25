# Donot modify anything here
# Kubernetes provider to execute kubernetes workloads
provider "kubernetes" {
  host                   = module.eks.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)
  exec {
    api_version = "client.authentication.k8s.io/v1beta1"
    command     = "aws"
    args = [
      "eks",
      "get-token",
      "--role-arn",
      local.assume_role_arn,
      "--cluster-name",
      module.eks.cluster_name
    ]
  }
}

# Helm provider to apply helm charts
provider "helm" {
  kubernetes {
    host                   = module.eks.cluster_endpoint
    cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)
    exec {
      api_version = "client.authentication.k8s.io/v1beta1"
      command     = "aws"
      args = [
        "eks",
        "get-token",
        "--role-arn",
        local.assume_role_arn,
        "--cluster-name",
        module.eks.cluster_name
      ]
    }
  }
}

# Kubectl provider to apply kubernetes manifest files as is
provider "kubectl" {
  host                   = module.eks.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)
  load_config_file       = false
  exec {
    api_version = "client.authentication.k8s.io/v1alpha1"
    command     = "aws"
    args = [
      "eks",
      "get-token",
      "--role-arn",
      local.assume_role_arn,
      "--cluster-name",
      module.eks.cluster_name
    ]
  }
}