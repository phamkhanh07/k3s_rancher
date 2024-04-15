# proxmox variable
variable "pm_api_url" {
  description = "proxmox api url"
  type        = string
}
variable "pm_api_token_id" {
  description = "proxmox token id"
  type        = string
}
variable "pm_api_token_secret" {
  description = "proxmox api token secret"
  type        = string
  sensitive   = true
}

variable "bastion_sshkey_location" {
  type        = string
  description = "bastion sshkey locations"
  sensitive   = true
}

# k3s for rancher
# k3s cluster variables
variable "k3s_cluster_name" {
  type        = string
  description = "k3s cluster name"
  default     = "k3s-cluster"
}
variable "k3s_target_node" {
  description = "proxmox node witch place k3s cluster"
  type        = string
}
variable "k3s_vm_agent" {
  type        = number
  default     = 1
  description = "Cloud-init agent status, 1 = enable, 0 = disable"
}
variable "k3s_vm_onboot" {
  type        = bool
  default     = true
  description = "Boot with proxmox cluster"
}

variable "k3s_cluster_node_count" {
  description = "Number of node on k3s cluster"
  type        = number
}
variable "k3s_vm_template_name" {
  description = "Template to create k3s nodes"
  type        = string
}
variable "k3s_vm_os_type" {
  description = "k3s cluster node os type"
  type        = string
  default     = "ubuntu"
}
variable "k3s_vm_bootdisk" {
  description = "VMs boot disk name"
  type        = string
}
variable "k3s_vm_user" {
  description = "VMs user"
  type        = string
}
variable "k3s_user_password" {
  description = "VMs users password"
  type        = string
  sensitive   = true
}

variable "k3s_user_sshkey" {
  description = "VMs users sshkey"
  type        = string
  sensitive   = true
}
variable "k3s_vm_memory" {
  description = "RAM of VMs"
  type        = number
}
variable "k3s_vm_cpu_type" {
  description = "VMs CPU type"
  type        = string
  default     = "host"
}
variable "k3s_vm_vcpu" {
  description = "VMs core"
  type        = number
  default     = 2
}
variable "k3s_network_cidr" {
  type        = string
  description = "k3s network cidr"
}
variable "k3s_network_cidr_host_number" {
  description = "The host number VMs in CIDR"
  type        = number
}
variable "k3s_cloudinit_cdrom_storage" {
  type = string
}
variable "k3s_vm_os_disk_size" {
  type = number
}
variable "k3s_vm_os_disk_location" {
  type = string
}
variable "k3s_vm_data_disk_size" {
  type = number
}
variable "k3s_vm_data_disk_location" {
  type = string
}
variable "k3s_tags" {
  type = string
}

# k8s cluster variables
# k8s master
variable "k8s_master_cluster_name" {
  type        = string
  description = "k8s_master cluster name"
  default     = "k8s_master-cluster"
}
variable "k8s_master_target_node" {
  description = "proxmox node witch place k8s_master cluster"
  type        = string
}
variable "k8s_master_vm_agent" {
  type        = number
  default     = 1
  description = "Cloud-init agent status, 1 = enable, 0 = disable"
}
variable "k8s_master_vm_onboot" {
  type        = bool
  default     = true
  description = "Boot with proxmox cluster"
}

variable "k8s_master_cluster_node_count" {
  description = "Number of node on k8s_master cluster"
  type        = number
}
variable "k8s_master_vm_template_name" {
  description = "Template to create k8s_master nodes"
  type        = string
}
variable "k8s_master_vm_os_type" {
  description = "k8s_master cluster node os type"
  type        = string
  default     = "ubuntu"
}
variable "k8s_master_vm_bootdisk" {
  description = "VMs boot disk name"
  type        = string
}
variable "k8s_master_vm_user" {
  description = "VMs user"
  type        = string
}
variable "k8s_master_user_password" {
  description = "VMs users password"
  type        = string
  sensitive   = true
}
variable "k8s_master_user_sshkey" {
  description = "VMs users sshkey"
  type        = string
  sensitive   = true
}
variable "k8s_master_vm_memory" {
  description = "RAM of VMs"
  type        = number
}
variable "k8s_master_vm_cpu_type" {
  description = "VMs CPU type"
  type        = string
  default     = "host"
}
variable "k8s_master_vm_vcpu" {
  description = "VMs core"
  type        = number
  default     = 2
}
variable "k8s_master_network_cidr" {
  type        = string
  description = "k8s_master network cidr"
}
variable "k8s_master_network_cidr_host_number" {
  description = "The host number VMs in CIDR"
  type        = number
}
variable "k8s_master_cloudinit_cdrom_storage" {
  type = string
}
variable "k8s_master_vm_os_disk_size" {
  type = number
}
variable "k8s_master_vm_os_disk_location" {
  type = string
}
variable "k8s_master_vm_data_disk_size" {
  type = number
}
variable "k8s_master_vm_data_disk_location" {
  type = string
}
variable "k8s_master_tags" {
  type = string
}

# k8s worker
variable "k8s_worker_cluster_name" {
  type        = string
  description = "k8s_worker cluster name"
  default     = "k8s_worker-cluster"
}
variable "k8s_worker_target_node" {
  description = "proxmox node witch place k8s_worker cluster"
  type        = string
}
variable "k8s_worker_vm_agent" {
  type        = number
  default     = 1
  description = "Cloud-init agent status, 1 = enable, 0 = disable"
}
variable "k8s_worker_vm_onboot" {
  type        = bool
  default     = true
  description = "Boot with proxmox cluster"
}

variable "k8s_worker_cluster_node_count" {
  description = "Number of node on k8s_worker cluster"
  type        = number
}
variable "k8s_worker_vm_template_name" {
  description = "Template to create k8s_worker nodes"
  type        = string
}
variable "k8s_worker_vm_os_type" {
  description = "k8s_worker cluster node os type"
  type        = string
  default     = "ubuntu"
}
variable "k8s_worker_vm_bootdisk" {
  description = "VMs boot disk name"
  type        = string
}
variable "k8s_worker_vm_user" {
  description = "VMs user"
  type        = string
}
variable "k8s_worker_user_password" {
  description = "VMs users password"
  type        = string
  sensitive   = true
}
variable "k8s_worker_user_sshkey" {
  description = "VMs users sshkey"
  type        = string
  sensitive   = true
}
variable "k8s_worker_vm_memory" {
  description = "RAM of VMs"
  type        = number
}
variable "k8s_worker_vm_cpu_type" {
  description = "VMs CPU type"
  type        = string
  default     = "host"
}
variable "k8s_worker_vm_vcpu" {
  description = "VMs core"
  type        = number
  default     = 2
}
variable "k8s_worker_network_cidr" {
  type        = string
  description = "k8s_worker network cidr"
}
variable "k8s_worker_network_cidr_host_number" {
  description = "The host number VMs in CIDR"
  type        = number
}
variable "k8s_worker_cloudinit_cdrom_storage" {
  type = string
}
variable "k8s_worker_vm_os_disk_size" {
  type = number
}
variable "k8s_worker_vm_os_disk_location" {
  type = string
}
variable "k8s_worker_vm_data_disk_size" {
  type = number
}
variable "k8s_worker_vm_data_disk_location" {
  type = string
}
variable "k8s_worker_tags" {
  type = string
}

