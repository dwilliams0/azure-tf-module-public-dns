resource "azurerm_dns_zone" "public_dns" {
  name                = var.public_dns_zone_name
  resource_group_name = var.resource_group_name
  
  tags = {
    Environment = var.environment
    BuildBy     = var.tag_buildby
    BuildDate   = var.tag_builddate
  }
}

#resource "azurerm_public_ip" "public_ip" {
#  name                = "mypublicip"
#  location            = azurerm_resource_group.pubdns_rsg.location
#  resource_group_name = azurerm_resource_group.pubdns_rsg.name
#  allocation_method   = "Dynamic"
#  ip_version          = "IPv4"
#}

resource "azurerm_dns_a_record" "arecord" {
  name                = var.public_dns_a_record
  zone_name           = azurerm_dns_zone.public_dns.name
  resource_group_name = var.resource_group_name
  ttl                 = var.ttl
  records             = var.dns_records
}


resource "azurerm_dns_cname_record" "cname" {
  name                = var.public_dns_cname_record
  zone_name           = azurerm_dns_zone.public_dns.name
  resource_group_name = var.resource_group_name
  ttl                 = var.ttl
  record              = var.record
}
