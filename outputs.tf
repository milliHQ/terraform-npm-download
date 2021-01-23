output "abs_path" {
  description = "The absolute path to the downloaded file on the local file system."
  value       = abspath(local.file_path)
}
