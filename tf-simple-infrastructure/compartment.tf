resource "oci_identity_compartment" "tf-compartment" {
    # Required
    compartment_id = "ocid1.tenancy.oc1..aaaaaaaayrx5riaxmzbb2lvqexaixvj65nfpz2vfsl2irkebkropi4trzucq"
    description = "Compartment for Terraform resources."
    name = "tf-dev2-comp"
}