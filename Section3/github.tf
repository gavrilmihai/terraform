terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}
# Configure the GitHub Provider
provider "github" {
    token = "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"
}
resource "github_repository" "Rep-test1" {
  name        = "Rep-test1"
  description = "My awesome Repository1"
  visibility = "public"
}
resource "github_repository" "Rep-test2" {
  name        = "Rep-test2"
  description = "My awesome Repository2"
  visibility = "public"
}