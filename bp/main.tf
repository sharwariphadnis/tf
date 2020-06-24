provider "vra" {
  url           = var.url
  refresh_token = var.refresh_token
  insecure      = var.insecure
}
resource "vra_cloud_account_aws" "aws_cloud_account" {
  name = "aws-e2e"
  description = "created via vra terraform provider"
  access_key = "AKIAID5JJ2F43RINE7XA"
  secret_key = "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"
  regions = ["us-east-1", "us-west-2"]
}
data "vra_region" "aws_region" {
  cloud_account_id = vra_cloud_account_aws.aws_cloud_account.id
  region = "us-east-1"
}
# Dummy wait for aws cloud account enumeration to complete
resource "null_resource" "delay" {
  provisioner "local-exec" {
    command = "sleep 100"
  }
  triggers = {
    "my_zone" = "${vra_zone.aws_cloud_zone.id}"
  }
}
resource "vra_zone" "aws_cloud_zone" {
  name        = "aws-us-east-1"
  description = "created via vra terraform provider"
  region_id   = data.vra_region.aws_region.id
  tags {
    key   = "env"
    value = "prod"
  }
  tags {
    key = "e2e-a8n-test"
    value = ""
  }
}
resource "vra_project" "aws-project" {
  name        = "e2e-aws-terraform-provider"
  description = "created via vra terraform provider"
  zone_assignments {
    zone_id       = vra_zone.aws_cloud_zone.id
    priority      = 1
    max_instances = 10
  }
  administrators = [ var.user_email ]
}
resource "vra_flavor_profile" "aws-flavor" {
  name = "aws-east-us-1"
  description = "created via vra terraform provider"
  region_id = data.vra_region.aws_region.id
  flavor_mapping {
    name = "small"
    instance_type = "t2.micro"
  }
  flavor_mapping {
    name = "medium"
    cpu_count = "4"
    memory = "200000"
  }
}
data "vra_image" "aws_fabric_image" {
  depends_on = [vra_cloud_account_aws.aws_cloud_account, null_resource.delay]
  filter =  "externalId eq 'ami-da05a4a0'"
}
resource "vra_image_profile" "aws-image" {
  name        = "aws-east-us-1"
  description = "created via vra terraform provider"
  region_id   = data.vra_region.aws_region.id
  image_mapping {
    name         = "ubuntu"
    image_id   = data.vra_image.aws_fabric_image.id
  }
}
data "vra_fabric_network" "aws_fabric_network" {
  depends_on = [vra_cloud_account_aws.aws_cloud_account, null_resource.delay]
  filter = "name eq 'appnet-public-dev'"
}
data "vra_network_domain" "aws_network_domain" {
  depends_on = [vra_cloud_account_aws.aws_cloud_account, null_resource.delay]
  filter = "name eq 'rainpole-dev'"
}
resource "vra_network_profile" "aws_network_profile" {
    name = "aws-east-us-1"
    description = "created via vra terraform provider"
    region_id = data.vra_region.aws_region.id
    isolation_type = "SUBNET"
    isolated_network_domain_id = data.vra_network_domain.aws_network_domain.id
    isolated_network_cidr_prefix = 19
    isolated_external_fabric_network_id = data.vra_fabric_network.aws_fabric_network.id
    fabric_network_ids = [data.vra_fabric_network.aws_fabric_network.id]
}
resource "vra_storage_profile" "aws-storage" {
  name         = "EBS_Fast"
  description  = "created via vra terraform provider"
  region_id    = data.vra_region.aws_region.id
  default_item = true
  supports_encryption = true
  disk_properties =  {
    deviceType = "ebs"
    volumeType = "io1"
    iops = "400"
  }
  tags {
  key   = "e2e-a8n-dev"
  value = ""
  }
  tags {
    key   = "env"
    value = "dev"
  }
  tags {
    key   = "e2e-a8n-fast"
    value = ""
  }
}
