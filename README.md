# Paul's Server Provisioning Tools

## What goes in priv?

Priv should have 2 files:

* chef\_key.pem

These are pem-formatted private key files corresponding to your chef key and the ssh private key for provisioning new servers.

## How to deploy plm\_website

```
cd plm-website/production/rackspace_public_cloud
cp terraform.tfvars.sample terraform.tfvars ; $EDITOR terraform.tfvars # optional
terraform plan
terraform apply
```
