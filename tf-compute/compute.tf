resource "oci_core_instance" "ubuntu_instance" {
    # Required
    availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
    compartment_id = "ocid1.compartment.oc1..aaaaaaaayz4xuhdhmeva6zoz7nxxl2t5maiktbemejv4sybpk4z5ijx7gemq"
    shape = "VM.Standard.E5.Flex"
    shape_config {
        ocpus = "1"
        memory_in_gbs = "4"
    }
    source_details {
        source_id = "ocid1.image.oc1.ap-tokyo-1.aaaaaaaanjotbajvzs4l3pmncjl32l75oqawhyc424c66ncj5ziqcqpq3rna"
        source_type = "image"
    }

    # Optional
    display_name = "My Ubuntu Instance1"
    create_vnic_details {
        assign_public_ip = true
        subnet_id = "ocid1.subnet.oc1.ap-tokyo-1.aaaaaaaatf7ymytqgwrex3rnqaaoqthstoejqabrbq5dwurvzs7eeucq4coq"
    }
    metadata = {
        ssh_authorized_keys = file("..\\..\\ssh-keys\\oci-tutorial-ssh-key.pub")
    } 
    preserve_boot_volume = false
}