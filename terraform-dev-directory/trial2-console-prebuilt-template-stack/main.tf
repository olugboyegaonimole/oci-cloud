
resource "oci_core_virtual_network" "simple-vcn" {
  cidr_block     = "10.0.0.0/16"
  dns_label      = "vcn1"
  compartment_id = "ocid1.compartment.oc1..aaaaaaaawb2vskntavofeaqx4khitoezgnsfb6scmbp7okp4m4zvqwkdf4uq"
  display_name   = "simple-vcn"
}