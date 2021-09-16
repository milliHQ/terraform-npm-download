# NPM Download Terraform module

[![CI](https://github.com/milliHQ/terraform-npm-download/actions/workflows/CI.yml/badge.svg)](https://github.com/milliHQ/terraform-npm-download/actions/workflows/CI.yml)

A simple Terraform module to download files distributed via [npm](https://www.npmjs.com/).

## Usage

The module requires that `bash` and `curl` are installed on the system where Terraform is executed.

```hcl
module "npm_download" {
  source = "milliHQ/download/npm"

  module_name    = "@millihq/tf-next-image-optimization"
  module_version = "11.1.2"
  path_to_file   = "dist.zip"
}

output "file_path" {
  value = module.npm_download.abs_path
}
```

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
| local\_cwd | Root path where node.resolve should start looking for the local module. | `string` | `null` | no |
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

Apache-2.0 - see [LICENSE](https://github.com/milliHQ/terraform-npm-download/blob/main/LICENSE) for details.
