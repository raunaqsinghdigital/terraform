provider "google" {
  project = "playground-s-11-451104ad"
}

terraform {
	required_providers {
		google = {
	    version = "~> 3.5.0"
		}
  }
}
