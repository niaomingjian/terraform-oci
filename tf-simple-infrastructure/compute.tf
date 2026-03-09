resource "oci_core_instance" "ubuntu_instance" {
    # Required
    availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
    compartment_id = oci_identity_compartment.tf-compartment.id
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
        subnet_id = oci_core_subnet.vcn-public-subnet.id
    }
    metadata = {
        ssh_authorized_keys = file("..\\..\\ssh-keys\\oci-tutorial-ssh-key.pub")
    } 
    preserve_boot_volume = false
}