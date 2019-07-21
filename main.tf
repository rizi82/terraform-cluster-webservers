provider "aws" {
  region = "ap-southeast-2"
}

module "webserver_dev"{
 source  = "./modules/webserver"
 cluster_name = "webservers-dev"
 instance_type = "t2.micro"
  min_size = 2
  max_size = 3
}
