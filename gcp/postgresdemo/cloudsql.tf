resource "google_sql_database_instance" "main" {
  name                = "postgres-cloudsql1"
  database_version    = "POSTGRES_14"
  region              = var.region
  deletion_protection = "false"

  settings {
    # Second-generation instance tiers are based on the machine
    # type. See argument reference below.
    tier = "db-f1-micro"

    ip_configuration {

      authorized_networks {

        name  = "Internet"
        value = "0.0.0.0/0"

      }


    }

    database_flags {

      name  = "cloudsql.logical_decoding"
      value = "on"

    }

    database_flags {

      name  = "max_replication_slots"
      value = "10"

    }

    database_flags {

      name  = "max_wal_senders"
      value = "10"

    }

    database_flags {

      name  = "max_worker_processes"
      value = "8"

    }

  }

  #provisioner "local-exec" {

  # command = "psql -u postgres -c CREATE TABLE IF NOT EXISTS public.employee (Name character varying COLLATE pg_catalog.default,EmpId bigint NOT NULL DEFAULT 1, Address character varying COLLATE pg_catalog.default,CONSTRAINT employee_pkey PRIMARY KEY (EmpId))"
  #}

}

resource "google_sql_database" "default" {
  depends_on = [google_sql_database_instance.main]

  name     = var.db_name
  project  = var.project
  instance = google_sql_database_instance.main.name

}


