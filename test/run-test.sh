#!/bin/bash

# set -e

TF_IN_AUTOMATION='true'

echo "here 1"

terraform init -input=false
terraform apply -input=false -auto-approve

echo "here 2"

output_1=$(terraform output -json | jq -r '.file_missing.value')

echo "here 3"

echo "Output: $output_1"

##
# File should exist on first apply
##
if [ "$output_1" = "true" ]; then
  echo "File was missing on apply"
  exit 1
fi
