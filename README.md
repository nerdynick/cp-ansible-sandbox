# cp-ansible Sandbox

This is a collection of Ansible example scripts leveraging the [confluentinc/cp-ansible](https://github.com/confluentinc/cp-ansible) Ansible Roles.
The goal is to capture a number of the common setups, how to do it in Ansible, and the configurations that come into play for that setup.
These examples all leverage Ansible's support of `group_vars` folder for variable definitions. 
This is done to minimize maintenance as well as help document the layers that go into these setups from an opinionated approach focused on security first.

## Examples

|Example                                              |Directory    |Components                       |                                                                                                         Notes|
|:----------------------------------------------------|:------------|:--------------------------------|-------------------------------------------------------------------------------------------------------------:|
|Basic PLAINTEXT based setup                          |plaintext    |Core, C3, Connect, SR, KSQL, REST|                                                                                                              |
|SSL with One-way Authentication                      |ssl_oneway   |Core, C3, Connect, SR, KSQL, REST|                                                                                                           [1]|
|SSL with Mutual Authentication                       |ssl_mutual   |Core, C3, Connect, SR, KSQL, REST|[1] The REST based clients have mutual authentication disabled. But comments are provided on how to enable it.|
|SASL_SSL + SCRAM                                     |sasl_scram   |Core, C3, Connect, SR, KSQL, REST|                                                                                                              |
|Kerberos with SSL, aka SASL_SSL+GSSAPI               |sasl_gssapi  |                                 |                                                                                                       [1] [2]|
|RBAC+SSL using SCRAM for inter-broker comms          |rbac_scram   |Core, C3, Connect, SR            |                                                        [1][2] This is coded against cp-ansible 5.4 currently.|
|Basic PLAINTEXT setup in a Multi Region Cluster setup|mrc_plaintext|Core, C3, Connect, SR, KSQL, REST|                                                                                                              |

[1] Includes Ansible Vault usage to obscure passwords.
[2] Under development. Listed components should be completed.


## Git Submodules

|Repo                                                                                                   |Description                                                  |
|:------------------------------------------------------------------------------------------------------|:------------------------------------------------------------|
|[confluentinc/cp-ansible](https://github.com/confluentinc/cp-ansible)                                  |Confluent Provided Ansible Roles                             |
|[nerdynick/keystore-scripts](https://github.com/nerdynick/keystore-scripts)                            |Collection of simple BASH scripts for generating JKS Keystore|
|[nerdynick/confluent-rbac-utility-scripts](https://github.com/nerdynick/confluent-rbac-utility-scripts)|Collection of simple BASH scripts for generating JKS Keystore|

## Roadmap

* Add examples, in this order
 * Multi-DC with Centralize Management Cluster
 * Multi-DC with Centralize Management Cluster + RBAC
 * SASL_SSL + GSSAPI
 * SASL_SSL + GSAPI & OAUTHBEARER/RBAC