variable "resource_group_name" {
  description = "Name of the Resource Group to create in."
  default     = "pubdns_rsg"
}

variable "location" {
  description = "Region to deploy into."
  default     = "uksouth"
}

variable "public_dns_zone_name" {
  description = "Name of DNS Zone"
  default     = "public.dantest.com"
}

variable "public_dns_a_record" {
  description = "Name of DNS A Record"
  default     = "arecord"
}

variable "public_dns_cname_record" {
  description = "Name of DNS cname Record"
  default     = "cname"
}

variable "ttl" {
  description = "TTL of DNS record in seconds"
  default     = "300"
}

variable "dns_records" {
  description = "IPv4 address of record"
  type        = list(string)
  default     = ["10.0.180.17"]
}

variable "environment" {
  description = "Production, Development, etc"
  default     = "Dev"
}

variable "tag_buildby" {
  description = "Racker that built the resource."
  default     = "Dan Williams"
}

variable "tag_buildticket" {
  description = "Build ticket number."
  default     = "12354-232123"
}

variable "tag_builddate" {
  description = "Date in ISO-8601 format (yyyymmdd)."
  default     = "20210129"
}

variable "record" {
  description = "The target of the CNAME"
  default     =  "contoso.com"
}
