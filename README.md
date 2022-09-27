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
