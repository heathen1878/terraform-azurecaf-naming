# Terraform resource naming module example

## Usage

Init -> Apply

```shell
terraform init

terraform apply --auto-approve
```

```shell
# Example output

Apply complete! Resources: 12 added, 0 changed, 12 destroyed.

Outputs:

module = {
  "nw" = {
    "resource_name" = "nw-########################"
  }
  "rg" = {
    "resource_name" = "rg-########################"
  }
  "vm" = {
    "resource_name" = "vm-############"
  }
  "vm_disk" = {
    "resource_name" = "dsk-########################"
  }
  "vm_nic" = {
    "resource_name" = "nic-########################"
  }
  "vnet" = {
    "resource_name" = "vnet-########################"
  }
}
```
