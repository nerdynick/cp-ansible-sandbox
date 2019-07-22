# cp-ansible Sandbox

This is just a collection of Ansible examples scripts leveraging the [confluentinc/cp-ansible](https://github.com/confluentinc/cp-ansible) Ansible Roles.
The goal is to capture a little of the more advance usages of the roles.

## The Examples

* **Plaintext** - This is a example that stands up 3x Zookeepers, 3x Kafka, and 1x Confluent Control Center
  * Folder: plaintext
* **SSL Advance** - This is an example using user provided SSL Keystore/Truststore files 
  with Ansible-Vault for passwords. This provides PLAINTEXT on 9092 and SSL on 9093. 
  With Interbroker over PLAINTEXT and SSL for ConfluentMetricsReporter and Control Center. 
  Control Center is also configured for SSL on the REST Interface.
  * Folder: ssl-advance
* **SASL_SSL with Kerberos** - This is a current work in progress


## Git Submodules

[confluentinc/cp-ansible](https://github.com/confluentinc/cp-ansible) houses all the 
roles. Within each example, the roles directory will symlink back to the contents of 
the cp-ansible projects roles folder. This mimics using anisble-galaxy or git-clone 
practices.

[nerdynick/keystore-scripts](https://github.com/nerdynick/keystore-scripts) houses 
a few scripts to help generate a self-signed set of keystores and truststores.