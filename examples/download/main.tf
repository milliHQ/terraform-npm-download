module "npm_download" {
  source = "milliHQ/download/npm"

  module_name    = "@millihq/tf-next-image-optimization"
  module_version = "11.1.2"
  path_to_file   = "dist.zip"
}

output "abs_path" {
  value = module.npm_download.abs_path
}

output "rel_path" {
  value = module.npm_download.rel_path
}
