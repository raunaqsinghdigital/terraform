data "terraform_remote_state" "backendServices" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/playground-s-11-451104ad/backendServices/us-central1/terraform.tfstate"
  }
}

data "terraform_remote_state" "regionBackendServices" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/playground-s-11-451104ad/regionBackendServices/us-central1/terraform.tfstate"
  }
}
