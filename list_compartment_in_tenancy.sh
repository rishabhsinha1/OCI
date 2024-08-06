#!/bin/bash

# Define the tenancy OCID (replace with your actual tenancy OCID)
TENANCY_OCID="ocid1.tenancy.oc1..xxxx"

# Run the OCI command and save the output to a variable
OUTPUT=$(oci iam compartment list --compartment-id $TENANCY_OCID)

# Use jq to parse the JSON output and extract the name and compartment-id fields
echo "name,compartment-id" > compartments.txt
echo $OUTPUT | jq -r '.data[] | "\(.name),\(.id)"' >> compartments.txt
