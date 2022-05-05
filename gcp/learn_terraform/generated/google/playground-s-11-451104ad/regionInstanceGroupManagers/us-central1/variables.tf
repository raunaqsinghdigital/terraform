data "terraform_remote_state" "instanceTemplates" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/playground-s-11-451104ad/instanceTemplates/us-central1/terraform.tfstate"
  }
}
