# Terraform DigitalOcean

> Exercises with Terraform and DigitalOcean

## Links

* https://www.yworks.com/yed-live/

## Usage example

```
ssh-keygen -q -b 2048 -t rsa -N '' -f id_rsa
export TF_VAR_do_token="$(lpass show --notes do_token)"
terraform init
terraform plan
terraform apply -auto-approve
terraform state show digitalocean_droplet.web
ip=$(terraform state show digitalocean_droplet.web | awk '/ipv4_address/ { print $NF }')
ssh-keyscan $ip >> ~/.ssh/known_hosts
ssh -i id_rsa root@$ip echo hello world
terraform destroy -force
```
