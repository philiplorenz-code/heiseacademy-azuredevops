resource "azuredevops_project" "example" {
  name               = "Example Project"
  visibility         = "private"
  version_control    = "Git"
  work_item_template = "Agile"
  description        = "Managed by Terraform"
  features = {
    testplans = "disabled"
    artifacts = "disabled"
  }
}

resource "azuredevops_git_repository" "example" {
  project_id     = azuredevops_project.example.id
  name           = "Example Git Repository"
  default_branch = "refs/heads/main"
  initialization {
    init_type = "Clean"
  }
}