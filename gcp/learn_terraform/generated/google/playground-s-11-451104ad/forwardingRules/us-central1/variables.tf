data "terraform_remote_state" "networks" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/playground-s-11-451104ad/networks/us-central1/terraform.tfstate"
  }
}

data "terraform_remote_state" "regionBackendServices" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/playground-s-11-451104ad/regionBackendServices/us-central1/terraform.tfstate"
  }
}
