run "validate" {
  command = apply
  module {
    source = "./examples/ipv6"
  }
  assert {
    condition     = module.vpc.egress_only_internet_gateway.id != ""
    error_message = "Egress-only Internet Gateway should exist in IPv6 example."
  }
}
