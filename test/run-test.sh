#!/bin/bash

set -e

# Indicate to Terraform that we run in automation environment
TF_IN_AUTOMATION='true'

TF_COMMAND='terraform'

if [[ ! -z "$CI" ]]; then
  # Using terraform-bin instead of terraform in CI to prevent using the wrapper
  # which causes that the command from the substitution gets saved to the var
  # e.g. MY_VAR=$(terraform-bin output -json)
  #
  # See: https://github.com/hashicorp/setup-terraform/issues/20
  TF_COMMAND='terraform-bin'
fi

terraform init -input=false

###########
# First run
###########
terraform apply -input=false -auto-approve -var 'package_version=0.0.1'

FIRST_RUN_FILE_MISSING=$("$TF_COMMAND" output -no-color file_missing )
FIRST_RUN_SOURCE_CODE_HASH=$("$TF_COMMAND" output -no-color source_code_hash )

##
# File should exist on first apply
##
if [ "$FIRST_RUN_FILE_MISSING" = "true" ] || [ -z "$FIRST_RUN_SOURCE_CODE_HASH" ]; then
  echo ""
  echo "Error: File is missing on first apply."
  exit 1
fi

############
# Second run
############
terraform apply -input=false -auto-approve -var 'package_version=0.0.2'

SECOND_RUN_SOURCE_CODE_HASH=$("$TF_COMMAND" output -no-color source_code_hash )

##
# Source code hash should be different between 1st and 2nd run
##
if [ "$FIRST_RUN_SOURCE_CODE_HASH" == "$SECOND_RUN_SOURCE_CODE_HASH" ]; then
  echo ""
  echo "Error: File has same source code hash on 1. & 2. run."
  exit 1
fi
