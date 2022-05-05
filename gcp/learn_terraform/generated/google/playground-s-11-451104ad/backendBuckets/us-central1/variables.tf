data "terraform_remote_state" "gcs" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/playground-s-11-451104ad/gcs/us-central1/terraform.tfstate"
  }
}
