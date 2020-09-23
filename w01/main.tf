provider "vsphere" {
  # If you have a self-signed cert
  allow_unverified_ssl = true
}

variable "vm_name" {
  default = "disksize-test"
}

variable "vm_count" {
  default = 2
}

data "vsphere_datacenter" "dc" {
  name = "cmbu-w01-vi-wld1-DC"
}

data "vsphere_datastore" "datastore" {
  name          = "cmbu-w01-vi-wld1-cmbu-w01-vc01-JPMC-T4-TempCluster1-vsan01"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_resource_pool" "pool" {
  name          = "JPMC-T4-TempCluster1/Resources"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "network" {
  name          = "JPMC VM Network 3007"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_virtual_machine" "template" {
  name          = "tiny-photon-vc01-c1"
  datacenter_id = data.vsphere_datacenter.dc.id
}

resource "vsphere_virtual_machine" "clone" {
  count            = var.vm_count
  name             = "${var.vm_name}-${count.index}"
  resource_pool_id = data.vsphere_resource_pool.pool.id 
  datastore_id     = data.vsphere_datastore.datastore.id  
  num_cpus = 1
  memory   = 128
  guest_id = data.vsphere_virtual_machine.template.guest_id 
  scsi_type = data.vsphere_virtual_machine.template.scsi_type 
  wait_for_guest_net_timeout = -1 
  network_interface { 
    network_id   = data.vsphere_network.network.id 
    adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
  } 
  disk { 
    label = "disk1" 
    size = 1 
  } 
}
