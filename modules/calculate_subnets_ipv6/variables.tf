variable "subnets" {
  description = "Definition of subnets to be built. If `netmask` is passed will calculate CIDR. Else `cidrs` list is zipped to var.azs and merged into final output to be built into aws_subnet(s)."
  type        = any
  # validation happening on root module
}
variable "azs" {
  description = "List of AZs to build. AZ is appended to each IP address prefix name."
  type        = list(string)
}

variable "cidr_ipv6" {
  description = "CIDR value to use as base for calculating IP address prefixes."
  type        = string
}