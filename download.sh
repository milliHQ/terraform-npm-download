#!/bin/bash

SOURCE=$1
OUTPUT_PATH=$2

mkdir -p $(dirname "$OUTPUT_PATH")
curl -s -S "$SOURCE" --output "$OUTPUT_PATH"

# https://stackoverflow.com/a/39122532/831465
if [[ $? -ne 0 ]]; then
  >&2 echo "Failed to download $SOURCE"
  exit 1
fi

# Simply send the output path back to Terraform
# This ensures that Terraform publishes the file_path to the output after the
# download is complete
#
# See: https://github.com/milliHQ/terraform-npm-download/issues/3
echo "{\"path\":\"${OUTPUT_PATH}\"}"
