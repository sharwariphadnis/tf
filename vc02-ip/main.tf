provider "vsphere" {
  # If you have a self-signed cert
  allow_unverified_ssl = true
}
variable "vm_name" {
  default = "mm-test"
}
variable "vm_count" {
  default = 1
}
data "vsphere_datacenter" "dc" {
  name = "CMBU_ES_SCALE_VC02_ATL_DC"
}
data "vsphere_datastore" "datastore" {
  name          = "vsanDatastore"
  datacenter_id = data.vsphere_datacenter.dc.id
}
data "vsphere_resource_pool" "pool" {
  name          = "CMBU_ES_SCALE_VC02_ATL_CLUSTER_01/Resources"
  datacenter_id = data.vsphere_datacenter.dc.id
}
data "vsphere_network" "network" {
  name          = "pri-atl-hs1-cmbu-proxy-VMs-3003"
  datacenter_id = data.vsphere_datacenter.dc.id
}
data "vsphere_virtual_machine" "template" {
  name          = "WebTinyCentOS65x86"
  datacenter_id = data.vsphere_datacenter.dc.id
}
resource "vsphere_virtual_machine" "cloned_virtual_machine" {
  count            = var.vm_count
  name             = "${var.vm_name}-${count.index}"
  resource_pool_id = data.vsphere_resource_pool.pool.id
  datastore_id     = data.vsphere_datastore.datastore.id
  num_cpus = 1
  memory   = 128
    disk {
    label = "disk0"
    size = 1
  }

  guest_id = data.vsphere_virtual_machine.template.guest_id
  scsi_type = data.vsphere_virtual_machine.template.scsi_type
  network_interface {
    network_id   = data.vsphere_network.network.id
    adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0]
  }  
	clone {
	  template_uuid = data.vsphere_virtual_machine.template.id
	  customize {
		timeout = 120
		linux_options {
		  host_name = var.vm_name
		  domain = "eng.vmware.com"
		}
      network_interface {}	  		
  }
}  
}
