# Create framework in Code Editor

Step1: Open code editor

![image](https://github.com/user-attachments/assets/0490c83f-0d00-49bd-bbf6-082c681aaa8b)

Step2: Create a Folder in workspace and Create a modular folder

![image](https://github.com/user-attachments/assets/c1b4a144-108d-4193-b947-a45e6c42cf54)

Step3: Create 3 files.
main.tf, vars.tf, provider.tf

Step4: Update provider.tf

provider "oci" {
  region = var.region
}

![image](https://github.com/user-attachments/assets/d7b794b2-ae9d-4a4b-ba72-f846200b8007)

Update vars.tf

variable region { default = "us-ashburn-1"}

![image](https://github.com/user-attachments/assets/7f77ea5b-baa4-4ab1-8348-2807a354f6d4)

Update main.tf for an instance

resource "oci_core_instance" "example" {
    #
}

![image](https://github.com/user-attachments/assets/9e4d0adc-c0fb-43a3-9596-1671ead69f9d)

# Initialise terraform




