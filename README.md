# Terraform module aws-ecs-fargate-cluster

This module deploys an ECS Fargate cluster in AWS.

Example:

```terraform
module "ecs_cluster" {
  source             = "github.com/danbarr/terraform-aws-ecs-fargate-cluster?ref=v0.9.1"
  cluster_name       = "example-cluster"
  container_insights = true
}
```

Example using Fargate Spot as the default capacity provider, for reduced costs with interrupt-tolerant workloads:

```terraform
module "ecs_cluster" {
  source            = "github.com/danbarr/terraform-aws-ecs-fargate-cluster?ref=v0.9.1"
  cluster_name      = "example-spot-cluster"
  capacity_provider = "FARGATE_SPOT"
}
```

(note, you can also supply FARGATE_SPOT as the capacity provider on a per-service basis)

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.2 |

## Resources

| Name | Type |
|------|------|
| [aws_ecs_cluster.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster) | resource |
| [aws_ecs_cluster_capacity_providers.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster_capacity_providers) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Name of the cluster (up to 255 letters, numbers, hyphens, and underscores). | `string` | n/a | yes |
| <a name="input_container_insights"></a> [container\_insights](#input\_container\_insights) | Whether to enable CloudWatch Container Insights. | `bool` | `false` | no |
| <a name="input_default_capacity_provider"></a> [default\_capacity\_provider](#input\_default\_capacity\_provider) | Capacity provider to use by default. Valid values are FARGATE and FARGATE\_SPOT. | `string` | `"FARGATE"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_arn"></a> [cluster\_arn](#output\_cluster\_arn) | ARN that identifies the cluster |
| <a name="output_cluster_name"></a> [cluster\_name](#output\_cluster\_name) | Name that identifies the cluster |
<!-- END_TF_DOCS -->