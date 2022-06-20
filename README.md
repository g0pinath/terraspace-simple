# Enterprise App IAC

## Prerequisite

1. Recommend to use linux during provisioning. if you use windows, you can use linux subsystem with ubuntu-20.04.

2. You need to set ENV variables follow these names `ARM_SUBSCRIPTION_ID`, `ARM_CLIENT_SECRET`, `ARM_TENANT_ID`, `ARM_CLIENT_ID`, `ARM_LOCATION` which is a service principal, because terraspace uses it to access the subscription and create resources.
   `ARM_LOCATION` is used for selecting location that resouces will be located.

3. Install ruby 3.x + , azure-cli 2.33.x +, terraform-cli 1.1.x +,terraspace 1.1.7 + \
   <https://terraspace.cloud/docs/install/standalone/ubuntu/>

   for Ubuntu

   ```bash
   sudo su
   echo "deb https://apt.boltops.com stable main" > /etc/apt/sources.list.d/boltops.list
   curl -s https://apt.boltops.com/boltops-key.public | apt-key add -
   apt-get update
   apt-get install -y terraspace
   ```

4. Provision Backend Storage Account (This step is required only first time deploy)
   There are 2 files you need to concern `0_storage_state_dev.tfvars` and `0_storage_state_prd.tfvars`. If you want to provision in dev env, you need to add arg `-var-file` when use terraform apply

   ```bash
   cd config/init_backend
   terraform apply -var-file 0_storage_state_dev.tfvars
   ```

## Create / Modify resources

`app/modules` => this folder contains core modules. This uses git-submodule to import.

`app/stack` => this folder contains stack modules that contains algorithm and group of core modules that are relavent to business domain.

`app/stack/<stack-name>/tfvars/<location>/<env>.tfvars` => these folder contain stack parameters which selected by `ENV` and `ARM_LOCATION` matched by name of the files.

## Deployment

1. Use `terraspace` cmd to handle deployment stack like this.

   ```bash
   terraspace up 1_rg_appspoke #ENV=dev by default.
   ```

   ```bash
   ENV=prd terraspace up 1_rg_appspoke #This will apply with prd environment. `prd` must be match with tfvars file in each stack.
   ```
