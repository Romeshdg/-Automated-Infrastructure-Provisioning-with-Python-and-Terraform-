# Terraform-file-Automation-Using-Python-Script



## Prerequisites:-
Azure account and subscription
Azure CLI installed
Terraform installed
Python 3.x installed
An editor or IDE for Python, such as Visual Studio Code

## Steps:-

01. Click "Azure Active Directory" in the left navigation pane.
02. Click on "App registrations" in the left menu.
03.Click on "+ New registration" button.
04. Enter a name for your application in the "Name" field. This name should be unique within your Azure AD tenant.
05. Go to the "Certificates & Secrets" section of your Azure AD application in the Azure portal.
06.Click on "+ New client secret".


![image](https://user-images.githubusercontent.com/113555417/230560306-21511cb0-3279-4e37-8782-d875806f762c.png)

![image](https://user-images.githubusercontent.com/113555417/230560463-015912c9-0c72-4c0d-b1ab-5d22da652b6f.png)

![image](https://user-images.githubusercontent.com/113555417/230560836-430c034b-18c7-47fe-98db-933f129cd737.png)


## Steps:-

01. I am using VS Code to create a new file called main.tf . 
02. Open main.tf in a text editor and define the resources.
03. create using the Terraform configuration language. 
04. Save and close main.tf.
05. Install the Azure CLI and authenticate with your Azure account.

## Here's an example:

![image](https://user-images.githubusercontent.com/113555417/230561398-0c1281e5-a374-4aeb-a9e4-23fc4f086b3e.png)


06. To automate the process using a Python script, you can use the python-terraform library. Install it using pip: "pip install python-terraform".
07. Create a new Python script called azure-resource-group.py in the same directory as main.tf.
08. In azure-resource-group.py, import the terraform module.

## Here's an example:

![image](https://user-images.githubusercontent.com/113555417/230562131-c3b74348-f148-4256-872d-c0dbe3a400cc.png)


*The script sets the working directory to "C:/terraform" using os.chdir().

*The name of the Terraform configuration file, "main.tf", is stored in the variable config_file.

*The script sets environment variables for authentication with Azure, using os.environ[].

## The "terraform init" command is executed using subprocess.run(), which initializes the Terraform workspace in the current directory.

![image](https://user-images.githubusercontent.com/113555417/230563800-e699c6af-f2b0-49cb-bc2c-010872279ef9.png)


## The "terraform import" command is executed using subprocess.run(). This command imports an existing resource group from Azure into the Terraform state file.
## The "terraform plan" command is executed using subprocess.run(), which generates a Terraform execution plan based on the configuration file and the imported resource group. The -out flag is used to store the execution plan in a file, and the -var flag is used to pass a variable to the configuration file.

![image](https://user-images.githubusercontent.com/113555417/230564094-68d57ec2-58fe-414b-8116-446fe1978dad.png)

![image](https://user-images.githubusercontent.com/113555417/230564299-f02aee4a-7a8c-4648-b66a-6968aa3357de.png)
![image](https://user-images.githubusercontent.com/113555417/230564725-4c7cc8a1-4c13-4091-a0b2-dd5a144fdb7a.png)

## The "terraform apply" command is executed using subprocess.run(), which applies the Terraform execution plan to create or modify the resources specified in the configuration file. The -auto-approve flag is used to automatically approve any prompts during the apply process.

![image](https://user-images.githubusercontent.com/113555417/230565075-1611d98c-9d2b-4f50-90fe-8ce535757e1d.png)

## Overall, this script automates the process of initializing a Terraform workspace, importing an existing resource group into the Terraform state, generating an execution plan, and applying that plan to create or modify resources in Azure.

## Overview of all the resources
#1
![image](https://user-images.githubusercontent.com/113555417/230565540-14eba4fd-5252-4f79-b40e-55b2c750caad.png)

#2
![image](https://user-images.githubusercontent.com/113555417/230565840-f85d1124-d732-4248-b010-185c7200db82.png)

#3
![image](https://user-images.githubusercontent.com/113555417/230566065-ad2d816f-71ca-42a9-b0f2-3181f4d62659.png)

#4
![image](https://user-images.githubusercontent.com/113555417/230566361-b6c0c31c-6341-44d7-acf2-310ece9e167e.png)

## Logs
![image](https://user-images.githubusercontent.com/113555417/230566841-c987204b-fc78-4a2e-9433-9baef63bf231.png)












