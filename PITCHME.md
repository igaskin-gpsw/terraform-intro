# Intro to Terraform

---
### What is Terraform?
- immutable
- agnostic
- reproducible

@[1](Infrastruture does not change)
@[2](Multi Cloud providers)
@[3](Defined in Code)

---

### Providers
```
provider "aws" {
  region     = "us-west-2"
}
```
---

### The Basics
```
resource "aws_s3_bucket" "probably-fake" {
  bucket = "my-fake-bucket"

  tags {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
```
---

### The Basics
```
$ terraform init
```
---

### The Basics
```
$ terraform plan
```
---

### The Basics
```
$ terraform apply
```

---

### State Files
- local file
- remote state

```
# show state
$ terraform state show

# set remote state
$ terraform init -backend-config=remote_state.tf
```
---

### But wait there's more...

---

# References
[1]https://www.terraform.io/docs/providers/aws/
[2]https://www.terraform.io/docs/state/index.html
[3]https://github.com/gopro/devops-tools/tree/master/terraform
