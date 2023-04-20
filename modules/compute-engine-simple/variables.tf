variable "airflow_rg_name" {
  type        = string
  default     = "airflow"
  description = "Resource group Name. "
}

variable "resource_group_name" {
  type        = string
  default     = "airflow"
  description = "Resource group Name. "
}

variable "resource_group_location" {
  type        = string
  default     = "eastus"
  description = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  type        = string
  default     = "rg"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "machine_size" {
  type        = string 
  default     = "Standard_B1s"
  description = "Virtual machine size"
}

variable "machine_name" {
  type        = string 
  default     = "myVM"
  description = "Virtual machine name"
}


variable "image_publisher"{
   type       = string
   default    = "redhat"
}

variable "image_offer"{
   type       = string
   default    = "RHEL"
}

variable "image_sku"{
   type       = string
   default    = "7-RAW"
}

variable "image_version"{
   type       = string
   default    = "latest"
}
