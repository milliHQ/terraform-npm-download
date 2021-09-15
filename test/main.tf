module "npm_download" {
  source = "../"

  module_name    = "@dealmore/terraform-next-deploy-trigger"
  module_version = var.package_version
  path_to_file   = "package.json"
}

locals {
  file_missing     = !fileexists(module.npm_download.abs_path)
  source_code_hash = fileexists(module.npm_download.abs_path) && !local.file_missing ? filebase64sha256(module.npm_download.abs_path) : null
}

output "file_missing" {
  value = local.file_missing
}

output "source_code_hash" {
  value = local.source_code_hash
}
