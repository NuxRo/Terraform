provider "cloudstack" {
  api_url   = "http://localhost:8080/client/api"
  api_key = "oStGhdBuwYGZtJx3XW-dFl7QuDhhY3Sz-NxAGhhyJyoNkyz5So4DeWRmHJwnqufkL8ADQzyo-NMgCPKHL"
  secret_key = "ouXUxyJHo958aSRsMlGtqWpBruK3eVG97TAdGkgEk6a3EkW7RAqDZ2CtTcW7dK9vTxRzYiyzBHYEA"
}

resource "cloudstack_vpn_customer_gateway" "default" {
  name       = "test-vpngw"
  cidr       = "10.0.0.0/24"
  esp_policy = "aes256-sha1"
  gateway    = "33.44.55.66"
  ike_policy = "aes128-sha256;modp2048"
  ipsec_psk  = "ipsecsecret"
}
