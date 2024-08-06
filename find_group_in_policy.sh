#!/bin/bash

# Define the tenancy OCID (replace with your actual tenancy OCID)
TENANCY_OCID="ocid1.tenancy.oc1..xxxxxxx"

# Run the OCI command and save the output to a variable
OUTPUT=$(oci iam compartment list --compartment-id $TENANCY_OCID)

# Use jq to parse the JSON output and extract the name and compartment-id fields
echo "name,compartment-id" > compartments.txt
echo $OUTPUT | jq -r '.data[] | "\(.name),\(.id)"' >> compartments.txt

# Create a new text file for the output
echo "Compartment,Policy,Statements" > matchedpolicies.txt

# Get user input for the group name
read -p "Enter the group name to search for: " GROUP_NAME

# Check policies in the root tenancy
ROOT_POLICY_OUTPUT=$(oci iam policy list --compartment-id $TENANCY_OCID)
echo $ROOT_POLICY_OUTPUT | jq -r ".data[] | select((.statements | join(\" \")) | contains(\"$GROUP_NAME\")) | \"root,\(.name),\(.statements[])\"" >> matchedpolicies.txt

# Read each line in the compartments file
while IFS=, read -r name compartment_id
do
    # Skip the header line
    if [ "$name" != "name" ]; then
        # Run the OCI command and save the output to a variable
        POLICY_OUTPUT=$(oci iam policy list --compartment-id $compartment_id)

        # Use jq to parse the JSON output and print the policy name and statements that contain the group name
        echo $POLICY_OUTPUT | jq -r ".data[] | select((.statements | join(\" \")) | contains(\"$GROUP_NAME\")) | \"${name},\(.name),\(.statements[])\"" >> matchedpolicies.txt
    fi
done < compartments.txt
