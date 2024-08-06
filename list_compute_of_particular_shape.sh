#!/bin/bash

#This script checks the shape entered in input and find the compute instance having that shape.

# Define the tenancy OCID (replace with your actual tenancy OCID)
TENANCY_OCID="ocid1.tenancy.oc1..xxxxx"

# Run the OCI command and save the output to a variable
OUTPUT=$(oci iam compartment list --compartment-id $TENANCY_OCID)

# Use jq to parse the JSON output and extract the name and compartment-id fields
echo "name,compartment-id" > compartments.txt
echo $OUTPUT | jq -r '.data[] | "\(.name),\(.id)"' >> compartments.txt

# Get user input for the grep pattern
read -p "Enter the grep pattern to search for: " GREP_PATTERN

# Read each line in the compartments file
while IFS=, read -r name compartment_id
do
    # Skip the header line
    if [ "$name" != "name" ]; then
        # Run the OCI command and save the output to a file
        oci compute instance list --compartment-id $compartment_id --all > instancedetails.txt

        # Use jq to parse the JSON output and print the compartment name, instance name, and shape
        jq -r ".data[] | \"${name},\(.\"display-name\"), \(.shape)\"" instancedetails.txt | grep "$GREP_PATTERN"
    fi
done < compartments.txt
