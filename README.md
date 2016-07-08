# Paul's Server Provisioning Tools

## What goes in priv?

Priv should have:

* chef\_key.pem

These are pem-formatted private key files corresponding to your chef key and the ssh private key for provisioning new servers.

## How to deploy the wedding website

```
cd wedding_website/digital_ocean/prod
cp terraform.tfvars.sample terraform.tfvars ; $EDITOR terraform.tfvars # optional
terraform plan
terraform apply
```
