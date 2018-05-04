# Terraform DigitalOcean

> Exercises with Terraform and DigitalOcean

## Usage example

```
export TF_VAR_do_token="$(lpass show --notes do_token)"
terraform init
terraform plan
terraform apply -auto-approve
terraform state show
curl -s -X GET -H "Content-Type: application/json" -H "Authorization: Bearer $(lpass show --notes do_token)" "https://api.digitalocean.com/v2/droplets?page=1&per_page=1" | jq '.droplets | length'
terraform destroy -force
```
