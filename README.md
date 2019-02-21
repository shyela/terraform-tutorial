# terraform-tutorial

## First Time

1. clone repo and cd into it
1. `terraform init`
1. `terraform providers`

If you see `provider.aws ~> 1.36`, you are good to go!

## Applying Changes

* See what should happen: `terraform plan -var current_user_name=<YOUR USER NAME>`
* Make the changes: `terraform apply -var current_user_name=<YOUR USER NAME>`
