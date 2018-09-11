# AWS ALB Terraform module

Terraform module which creates ALB resources on AWS.

## Usage

```hcl
module "Demo-backend-dev-alb"
{
    source = "git@github.com:sharath-yml/terraform-modules.git//modules//alb?ref=v0.35"
    alb_name                  = "demo-backend-dev-alb"
    vpc_id                    = "vpc-60191319"
    alb_subnet_ids            = ["subnet-2ac2ae53", "subnet-5eaa2315"]
    certificate_arn           = "arn:aws:acm:us-west-2:827014229206:certificate/0a573472-aa83-4063-b204-ec1f355286c6"
    ip_address_type           = "dualstack"
    targets = ["backend-dev, 7300,  /health", "backend-integration-tg, 8300, /health"]
}
```
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| alb_name | Name of the Application  Load Balancer | string | - | yes |
| alb_subnet_ids | List of subnets which should have min 2 subnet groups | list | - | yes |
| vpc_id | VPC id where the load balancer and other resources will be deployed | list | - | yes |
| targets | A list of maps containing key/value pairs that define the target groups to be created. Order of these maps is important and the index of these are to be referenced in listener definitions. Required key/values: name, backend_protocol, backend_port. Optional key/values are in the target_groups_defaults variable. | string | - | no |
| certificate_arn |  To use an HTTPS listener, the ARN of an SSL certificate is required | string | - | yes |
| ip_address_type |  The type of IP addresses used by the subnets for your load balancer. The possible values are ipv4 and dualstack. | string | - | yes |
| additional_tags |  Additional tags for the application load balancer | map | [ ] | no |
| additional_tags |  Additional tags for the application load balancer | map | [ ] | no |
| allow_http | Allow http access from ipv6  | string | 0 | no |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Outputs

| Name | Description |
|------|-------------|
| alb_id | The ID of the load balancer. |
| alb_sg_id | The Security group ID of the load balancer. |
| alb_tg_id | The Target groups ID of the load balancer. |
| alb_dns_name | The DNS name of the load balancer. |
| alb_zone_id | The Zone ID of the load balancer. |
| alb_https_listener_arn | The Listener ARN of the load balancer. |
