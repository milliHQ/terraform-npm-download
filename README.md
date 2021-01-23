# NPM Download Terraform module

A simple module to download files distributed via npm.

<!-- prettier-ignore-start -->
<!--- BEGIN_TF_DOCS --->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |
| external | >= 1.2.0 |

## Providers

| Name | Version |
|------|---------|
| external | >= 1.2.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cdn\_provider\_url | The service that should be used for unpacking. jsdelivr or unpkg should work. | `string` | `"https://cdn.jsdelivr.net/npm/"` | no |
| module\_name | The name of the npm module. | `string` | n/a | yes |
| module\_version | If you want a specific version (or semver range) of the module define it here. | `string` | `""` | no |
| path\_to\_file | The path inside of the npm module to the file you want to download. | `string` | n/a | yes |
| use\_local | Fallback for using node.resolve for getting the module locally. Usually used for debug. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| abs\_path | The absolute path to the downloaded file on the local file system. |

<!--- END_TF_DOCS --->
<!-- prettier-ignore-end -->

## License

Apache-2.0 - see [LICENSE](https://github.com/dealmore/terraform-npm-download/blob/main/LICENSE) for details.
