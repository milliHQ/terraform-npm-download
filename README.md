# NPM Download Terraform module

A simple module to download files distributed via npm.

<!-- prettier-ignore-start -->
<!--- BEGIN_TF_DOCS --->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_external"></a> [external](#requirement\_external) | >= 1.2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_external"></a> [external](#provider\_external) | >= 1.2.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cdn_provider_url"></a> [cdn\_provider\_url](#input\_cdn\_provider\_url) | The service that should be used for unpacking. jsdelivr or unpkg should work. | `string` | `"https://cdn.jsdelivr.net/npm/"` | no |
| <a name="input_local_cwd"></a> [local\_cwd](#input\_local\_cwd) | Root path where node.resolve should start looking for the local module. | `string` | `null` | no |
| <a name="input_module_name"></a> [module\_name](#input\_module\_name) | The name of the npm module. | `string` | n/a | yes |
| <a name="input_module_version"></a> [module\_version](#input\_module\_version) | If you want a specific version (or semver range) of the module define it here. | `string` | `""` | no |
| <a name="input_path_to_file"></a> [path\_to\_file](#input\_path\_to\_file) | The path inside of the npm module to the file you want to download. | `string` | n/a | yes |
| <a name="input_use_local"></a> [use\_local](#input\_use\_local) | Fallback for using node.resolve for getting the module locally. Usually used for debug. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_abs_path"></a> [abs\_path](#output\_abs\_path) | The absolute path to the downloaded file on the local file system. |

<!--- END_TF_DOCS --->
<!-- prettier-ignore-end -->

## License

Apache-2.0 - see [LICENSE](https://github.com/dealmore/terraform-npm-download/blob/main/LICENSE) for details.
