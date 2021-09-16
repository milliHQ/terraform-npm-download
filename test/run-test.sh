#!/bin/bash

set -e

TF_IN_AUTOMATION='true'

terraform init -input=false
terraform apply -input=false -auto-approve

FIRST_OUTPUT=$(terraform output -json file_missing)

echo "Output: $FIRST_OUTPUT"

##
# File should exist on first apply
##
if [ "$FIRST_OUTPUT" = "true" ]; then
  echo "File was missing on apply"
  exit 1
fi
