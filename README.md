# kapost-terraform-linter
This action runs a Terraform Linter on Terraform code in the repository

Its not desired to automatically run the `terraform fmt` command with this action as this can potentially have frustrating consequences. 

# Usage
See [tf-linter.yml](.github/workflows/tf-linter.yml)

```yaml
on: push
name: Terraform Lint
jobs:
  tf_lint:
    name: Terraform Lint
    runs-on: ubuntu-latest
    steps:
      
      - name: Checkout
        uses: actions/checkout@v2
      
      - name: Terraform Lint
        uses: kapost/terraform-linter@v1
        env:
          DISPLAY_DIFF: true # <-- Optional - used to display diff for terraform fmt command
```

## Changeable Variables
`DISPLAY_DIFF` - **not required**: This variable runs the `terraform fmt` command with the `-diff` flag enabled
