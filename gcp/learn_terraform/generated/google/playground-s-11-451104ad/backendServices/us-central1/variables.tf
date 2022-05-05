data "terraform_remote_state" "healthChecks" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/playground-s-11-451104ad/healthChecks/us-central1/terraform.tfstate"
  }
}

data "terraform_remote_state" "instanceGroupManagers" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/playground-s-11-451104ad/instanceGroupManagers/us-central1/terraform.tfstate"
  }
}

data "terraform_remote_state" "regionInstanceGroupManagers" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/playground-s-11-451104ad/regionInstanceGroupManagers/us-central1/terraform.tfstate"
  }
}
