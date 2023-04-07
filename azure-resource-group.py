import subprocess
import os

# Set working directory
os.chdir("C:/terraform")

# Terraform configuration file
config_file = "main.tf"

# Set environment variables for authentication
os.environ["ARM_SUBSCRIPTION_ID"] = "SUBSCRIPTION_ID"
os.environ["ARM_CLIENT_ID"] =  "CLIENT_ID"
os.environ["ARM_CLIENT_SECRET"] = "CLIENT_SECRET"
os.environ["ARM_TENANT_ID"] = "TENANT_ID"

# Initialize Terraform workspace
subprocess.run(["terraform", "init"])

# Import existing resource group into Terraform state
subprocess.run(["terraform", "import", "azurerm_resource_group.example", "/subscriptions/<SUBSCRIPTION_ID>/resourceGroups/example-resource-group"])

# Plan Terraform configuration
subprocess.run(["terraform", "plan", "-out", "-input=false", "-no-color", "-var", "resource_group_name=example-resource-group", config_file])

# Apply Terraform configuration
subprocess.run(["terraform", "apply", "-auto-approve", "-no-color"])
