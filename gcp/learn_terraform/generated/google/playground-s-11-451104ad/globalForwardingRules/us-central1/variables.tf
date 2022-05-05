data "terraform_remote_state" "targetHttpProxies" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/playground-s-11-451104ad/targetHttpProxies/us-central1/terraform.tfstate"
  }
}

data "terraform_remote_state" "targetHttpsProxies" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/playground-s-11-451104ad/targetHttpsProxies/us-central1/terraform.tfstate"
  }
}

data "terraform_remote_state" "targetSslProxies" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/playground-s-11-451104ad/targetSslProxies/us-central1/terraform.tfstate"
  }
}
