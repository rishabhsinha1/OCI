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

![image](https://github.com/user-attachments/assets/e98b84b7-d7b2-41f5-8549-e72acf999f8f)

Update vars.tf

variable region { default = "us-ashburn-1"}

![image](https://github.com/user-attachments/assets/13aca0f7-321a-4391-a4d1-56c1dbf85a6f)

Update main.tf for an instance

resource "oci_core_instance" "example" {
    #
}

![image](https://github.com/user-attachments/assets/3fed34a9-bb23-43dd-9fcc-0e188af402d0)

# Initialise terraform




