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

![image](https://github.com/user-attachments/assets/5906c8ff-453b-4fde-bb5b-19edd457c4b0)

Run "terraform init"

![image](https://github.com/user-attachments/assets/0e28b2b1-d3cc-4661-83a2-f4cf2a228712)

# Copy the OCID of the compute resource

![image](https://github.com/user-attachments/assets/f72cb91b-8ab6-4c89-b02c-ef6de4567589)

# Execute the import command

terraform import oci_core_instance.example ocid1.instance.oc1.iad.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa

![image](https://github.com/user-attachments/assets/ff8605a1-394a-4cdc-9c95-ee670b2687b8)

Now run , "terraform state list"

![image](https://github.com/user-attachments/assets/8d273ab6-b73c-44e5-b4df-8de946e62f91)

Now run "terraform state show oci_core_instance.example"

![image](https://github.com/user-attachments/assets/9e595e51-1a3d-4421-b4b8-2b39bbea1bf2)

# Update the output into the terraform file

![image](https://github.com/user-attachments/assets/e026a618-736a-4456-81c7-69497e6e817b)

# Create the import_block.tf File

![image](https://github.com/user-attachments/assets/d5d81813-5ff9-45c6-b707-b7a04c882d5b)

import {
  to = oci_core_instance.demo_inst_1
  id = "ocid1.instance.oc1.iad.anuwcljtkbjmbracaynti47g4aij74pcp2fwtsfzbnsvmt42zc5xqyru7y2a"
}

# Run the terraform plan Command

terraform plan --generate-config-out=compute.tf

![image](https://github.com/user-attachments/assets/610af3da-94e0-4dc5-8e6e-759dbba1aa06)

compute.tf created by terraform 

![image](https://github.com/user-attachments/assets/877827a4-5c8c-4b5e-a8e6-c1f4783d0b94)


# Run the terraform apply Command

![image](https://github.com/user-attachments/assets/4b49b789-f689-4453-9ea5-dad2284b5646)

![image](https://github.com/user-attachments/assets/469128ca-bc47-4cbf-87c9-94e941a14e55)





