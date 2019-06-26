# CCE Cluster

Configuration in this directory creates a CCE cluster with 3 nodes.

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example may create resources which can cost money. Run `terraform destroy` when you don't need these resources.

## Outputs

| Name | Description |
|------|-------------|
| cce\_id | The ID of the CCE cluster. |
| cce\_internal\_network | The network address of the CCE internal cluster network. |
| cce\_external\_network | The network address of the CCE external cluster network. |
| cce\_external\_otc | The endpoint of the cluster to be accessed through API Gateway. |
| cce\_node\_private\_ips | The private IP's of the CCE nodes. |
