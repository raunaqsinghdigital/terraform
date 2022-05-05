resource "google_project" "tfer--playground-s-11-451104ad" {
  auto_create_network = "true"
  billing_account     = "01147F-73C07F-D6DA00"
  folder_id           = "1062409539378"

  labels = {
    admin_project_gcp_id = "superadmin-220521"
  }

  name       = "playground-s-11-451104ad"
  project_id = "playground-s-11-451104ad"
}
