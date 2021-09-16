#!/bin/bash

# set -e

TF_IN_AUTOMATION='true'

echo "here 1"

terraform init -input=false
terraform apply -input=false -auto-approve

echo "here 2"
terraform output -json file_missing

echo "here 3"

test_var=`terraform output -json file_missing`

echo "Output: $test_var"

##
# File should exist on first apply
##
if [ "$test_var" = "true" ]; then
  echo "File was missing on apply"
  exit 1
fi
