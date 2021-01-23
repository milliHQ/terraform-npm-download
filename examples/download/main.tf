module "npm_download" {
  source = "../.."

  module_name    = "@dealmore/terraform-next-deploy-trigger"
  module_version = "0.1.0"
  path_to_file   = "package.json"
}

output "file_path" {
  value = module.npm_download.abs_path
}
