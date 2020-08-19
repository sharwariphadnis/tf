provider "vsphere" {
  # If you have a self-signed cert
  allow_unverified_ssl = true
  
}
variable "vm_name" {
  default = "vmware-0-817"
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
  name          = "cmbu_es_scale_vc02_vm_privatevlan3003"
  datacenter_id = data.vsphere_datacenter.dc.id
}
data "vsphere_virtual_machine" "template" {
  name          = "WebTinyCentOS65x86"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}
resource "vsphere_virtual_machine" "clone-1" { 
 name             = "${var.vm_name}-1" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
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
resource "vsphere_virtual_machine" "clone-2" { 
 name             = "${var.vm_name}-2" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk2" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-3" { 
 name             = "${var.vm_name}-3" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk3" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-4" { 
 name             = "${var.vm_name}-4" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk4" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-5" { 
 name             = "${var.vm_name}-5" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk5" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-6" { 
 name             = "${var.vm_name}-6" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk6" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-7" { 
 name             = "${var.vm_name}-7" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk7" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-8" { 
 name             = "${var.vm_name}-8" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk8" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-9" { 
 name             = "${var.vm_name}-9" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk9" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-10" { 
 name             = "${var.vm_name}-10" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk10" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-11" { 
 name             = "${var.vm_name}-11" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk11" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-12" { 
 name             = "${var.vm_name}-12" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk12" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-13" { 
 name             = "${var.vm_name}-13" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk13" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-14" { 
 name             = "${var.vm_name}-14" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk14" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-15" { 
 name             = "${var.vm_name}-15" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk15" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-16" { 
 name             = "${var.vm_name}-16" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk16" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-17" { 
 name             = "${var.vm_name}-17" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk17" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-18" { 
 name             = "${var.vm_name}-18" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk18" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-19" { 
 name             = "${var.vm_name}-19" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk19" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-20" { 
 name             = "${var.vm_name}-20" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk20" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-21" { 
 name             = "${var.vm_name}-21" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk21" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-22" { 
 name             = "${var.vm_name}-22" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk22" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-23" { 
 name             = "${var.vm_name}-23" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk23" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-24" { 
 name             = "${var.vm_name}-24" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk24" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-25" { 
 name             = "${var.vm_name}-25" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk25" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-26" { 
 name             = "${var.vm_name}-26" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk26" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-27" { 
 name             = "${var.vm_name}-27" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk27" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-28" { 
 name             = "${var.vm_name}-28" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk28" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-29" { 
 name             = "${var.vm_name}-29" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk29" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-30" { 
 name             = "${var.vm_name}-30" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk30" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-31" { 
 name             = "${var.vm_name}-31" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk31" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-32" { 
 name             = "${var.vm_name}-32" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk32" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-33" { 
 name             = "${var.vm_name}-33" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk33" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-34" { 
 name             = "${var.vm_name}-34" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk34" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-35" { 
 name             = "${var.vm_name}-35" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk35" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-36" { 
 name             = "${var.vm_name}-36" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk36" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-37" { 
 name             = "${var.vm_name}-37" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk37" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-38" { 
 name             = "${var.vm_name}-38" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk38" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-39" { 
 name             = "${var.vm_name}-39" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk39" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-40" { 
 name             = "${var.vm_name}-40" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk40" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-41" { 
 name             = "${var.vm_name}-41" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk41" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-42" { 
 name             = "${var.vm_name}-42" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk42" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-43" { 
 name             = "${var.vm_name}-43" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk43" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-44" { 
 name             = "${var.vm_name}-44" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk44" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-45" { 
 name             = "${var.vm_name}-45" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk45" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-46" { 
 name             = "${var.vm_name}-46" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk46" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-47" { 
 name             = "${var.vm_name}-47" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk47" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-48" { 
 name             = "${var.vm_name}-48" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk48" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-49" { 
 name             = "${var.vm_name}-49" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk49" 
  size = 1 
 } 
 }
resource "vsphere_virtual_machine" "clone-50" { 
 name             = "${var.vm_name}-50" 
 resource_pool_id = data.vsphere_resource_pool.pool.id 
 datastore_id     = data.vsphere_datastore.datastore.id  
 num_cpus = 1 
 memory   = 1024 
 guest_id = data.vsphere_virtual_machine.template.guest_id 
 scsi_type = data.vsphere_virtual_machine.template.scsi_type 
 wait_for_guest_net_timeout = -1 
 network_interface { 
  network_id   = data.vsphere_network.network.id 
  adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0] 
 } 
 disk { 
  label = "disk50" 
  size = 1 
 } 
 }
