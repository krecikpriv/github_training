terraform {
  required_version = "> 1.13"
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "> 2.0"
    }
  }
  cloud {

    organization = "krecikpriv"

    workspaces {
      name = "krecik_work_space_test"
    }
  }
}
