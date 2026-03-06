# Source from https://registry.terraform.io/modules/oracle-terraform-modules/vcn/oci/
module "vcn" {
  source  = "oracle-terraform-modules/vcn/oci"
  version = "3.6.0"
  # insert the 1 required variable here

  # Required Inputs
  compartment_id = "ocid1.compartment.oc1..aaaaaaaaqi7mvyr4jby42i3utfwsirso5aykg2ltb4xzabwyzmodhnprkogq"

  # Optional Inputs 
  region = "ap-tokyo-1"
  
  # Changing the following default values
  vcn_name = "tutorial-vcn"
  create_internet_gateway = true
  create_nat_gateway = true
  create_service_gateway = true

  # Using the following default values
  # vcn_dns_label = "vcnmodule"
  # vcn_cidrs = ["10.0.0.0/16"]
}