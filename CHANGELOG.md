# Changelog

## 2.0.0 (September 16, 2021)

- Uses `curl` instead of `wget` to download the file
- Wait until file is downloaded, before publishing the `abs_path` output ([#3](https://github.com/milliHQ/terraform-npm-download/issues/3), [#4](https://github.com/milliHQ/terraform-npm-download/pull/4))

## 1.2.0 (August 30, 2021)

The GitHub organization for this module has changed, so the module source should be updated:

```diff
module "npm_download" {
-  source = "dealmore/download/npm"
+  source = "milliHQ/download/npm"
 ...
}
```

- Organization name changed from `dealmore` to `milliHQ`

## 1.1.0 (August 27, 2021)

- Adds `local_cwd` variable ([#1](https://github.com/milliHQ/terraform-npm-download/pull/1), [#2](https://github.com/milliHQ/terraform-npm-download/pull/2))

## 1.0.0 (January 23, 2021)

Initial release
