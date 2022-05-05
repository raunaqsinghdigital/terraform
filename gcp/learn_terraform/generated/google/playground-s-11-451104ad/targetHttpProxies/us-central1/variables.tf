data "terraform_remote_state" "urlMaps" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/playground-s-11-451104ad/urlMaps/us-central1/terraform.tfstate"
  }
}
