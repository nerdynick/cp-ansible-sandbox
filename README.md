# cp-ansible Sandbox

This is just a collection of Ansible examples scripts leveraging the [confluentinc/cp-ansible](https://github.com/confluentinc/cp-ansible) Ansible Roles.
The goal is to capture a little of the more advance usages of the roles.

## The Examples

* **Plaintext** - This is a simple example that stands up 3x Zookeepers, 3x Kafka, and 1x Confluent Control Center
  * Folder: plaintext
* **SSL Advance** - This is an example using user provided SSL Keystore/Truststore files 
  with Ansible-Vault for passwords. This provides PLAINTEXT on 9092 and SSL on 9093. 
  With Interbroker over PLAINTEXT and SSL for ConfluentMetricsReporter and Control Center. 
  Control Center is also configured for SSL on the REST Interface.
  * Folder: ssl-advance
* SASL_SSL with Kerberos