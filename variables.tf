variable "cdn_provider_url" {
  type        = string
  description = "The service that should be used for unpacking. jsdelivr or unpkg should work."
  default     = "https://cdn.jsdelivr.net/npm/"
}

variable "module_name" {
  type        = string
  description = "The name of the npm module."
}

variable "module_version" {
  type        = string
  description = "If you want a specific version (or semver range) of the module define it here."
  default     = ""
}

variable "path_to_file" {
  type        = string
  description = "The path inside of the npm module to the file you want to download."
}

variable "use_local" {
  type        = bool
  description = "Fallback for using node.resolve for getting the module locally. Usually used for debug."
  default     = false
}

variable "local_cwd" {
  type        = string
  description = "Root path where node.resolve should start looking for the local module."
  default     = null
}
