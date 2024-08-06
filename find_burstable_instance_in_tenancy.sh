#!/bin/bash

# Define the grep patterns
#Baseline 12.5% is  BASELINE_1_8
#Baseline 50.0% is  BASELINE_1_2
GREP_PATTERN1="BASELINE_1_8"
GREP_PATTERN2="BASELINE_1_2"

# Define the tenancy OCID (replace with your actual tenancy OCID)
TENANCY_OCID="ocid1.tenancy.oc1..xxx"

# Run the OCI command and save the output to a variable
OUTPUT=$(oci iam compartment list --compartment-id $TENANCY_OCID)

# Use jq to parse the JSON output and extract the name and compartment-id fields
echo "name,compartment-id" > compartments.txt
echo $OUTPUT | jq -r '.data[] | "\(.name),\(.id)"' >> compartments.txt

# Create a new text file for the output
echo "compartment-name,instance-name,shape,baseline-ocpu-utilization" > output.txt

# Read each line in the compartments file
while IFS=, read -r name compartment_id
do
    # Skip the header line
    if [ "$name" != "name" ]; then
        # Run the OCI command and save the output to a file
        oci compute instance list --compartment-id $compartment_id --all > instancedetails.txt

        # Use jq to parse the JSON output and print the compartment name, instance name, shape, and baseline OCPU utilization
        jq -r ".data[] | \"${name},\(.\"display-name\"), \(.shape), \(.\"shape-config\".\"baseline-ocpu-utilization\" // \"N/A\")\"" instancedetails.txt | egrep "$GREP_PATTERN1|$GREP_PATTERN2" >> output.txt
    fi
done < compartments.txt
