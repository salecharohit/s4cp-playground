variable "clustername" {
  description = "Cluster Name"
  type        = string
}

variable "eks_version" {
  description = "AWS EKS Kubernetes Version"
  type        = string
}

variable "environment" {
  description = "Current Environment"
  type        = string
}

variable "private_subnets" {
  description = "AWS Private Subnets"
  type        = list(any)
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "instance_types" {
  description = "Instance Types for Deploying the k8s environment"
  type        = list(string)
}

variable "aws_auth_roles" {
  description = "List of IAM roles for AWS auth"
  type = list(object({
    rolearn  = string
    username = string
    groups   = list(string)
  }))
}

variable "kms_key_arn" {
  description = "KMS Key ARN"
  type        = string
}