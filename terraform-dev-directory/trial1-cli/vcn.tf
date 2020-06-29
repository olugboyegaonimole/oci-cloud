variable "tenancy_ocid" {default="ocid1.tenancy.oc1..aaaaaaaat4ns65w4qcywrp63pcgaccyijrlpcmnelcltimiodfdrkdy5zvla"}
variable "user_ocid" {default="ocid1.user.oc1..aaaaaaaazg6xh5oooijhbbe4wjzvn6fxzk7ncsb72tl5eybewi5j4rv5np2q"}
variable "fingerprint" {default="39:fe:aa:0c:55:9b:50:b7:a0:d4:7f:20:c3:de:17:58"}
variable "private_key_path" {default="oci_api_key.pem"}
variable "compartment_ocid" {default="ocid1.compartment.oc1..aaaaaaaazc7xwlo7c4dhjwrvbezagbhnniyblhlcqnhqu5rdhcyz3623k3wq"}
variable "region" {default="uk-london-1"}

provider "oci" {
  version          = ">= 3.0.0"
  tenancy_ocid     = "ocid1.tenancy.oc1..aaaaaaaat4ns65w4qcywrp63pcgaccyijrlpcmnelcltimiodfdrkdy5zvla"
  user_ocid = "ocid1.user.oc1..aaaaaaaazg6xh5oooijhbbe4wjzvn6fxzk7ncsb72tl5eybewi5j4rv5np2q"
  fingerprint = "39:fe:aa:0c:55:9b:50:b7:a0:d4:7f:20:c3:de:17:58"
  private_key_path = "oci_api_key.pem"
  region           = "uk-london-1"
}

resource "oci_core_virtual_network" "simple-vcn" {
  cidr_block     = "10.0.0.0/16"
  dns_label      = "vcn1"
  compartment_id = "ocid1.compartment.oc1..aaaaaaaazc7xwlo7c4dhjwrvbezagbhnniyblhlcqnhqu5rdhcyz3623k3wq"
  display_name   = "simple-vcn"
}