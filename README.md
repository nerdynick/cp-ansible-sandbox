# cp-ansible Sandbox

This is a collection of Ansible example scripts leveraging the [confluentinc/cp-ansible](https://github.com/confluentinc/cp-ansible) Ansible Roles.
The goal is to capture a number of the common setups, how to do it in Ansible, and the configurations that come into play for that setup.

## Examples

|Example                                              |Directory    |                 Notes|
|:----------------------------------------------------|:------------|---------------------:|
|Basic PLAINTEXT based setup                          |plaintext    |                      |
|SSL with One-way Authentication                      |ssl_oneway   | [1] Under Development|
|SSL with Mutual Authentication                       |ssl_mutual   |                   [1]|
|Kerberos with SSL, aka SASL_SSL+GSSAPI               |kerberos     |[1] Partially complete|
|RBAC+SSL using SCRAM for inter-broker comms          |rbac_scram   |              [1] TODO|
|RBAC+SSL using GSSAPI/KERBEROS for inter-broker comms|rbac_kerberos|              [1] TODO|

[1] Includes Ansible Vault usage to obscure passwords. 


## Git Submodules

|                                   Repo                                    |Description                                                  |
|:-------------------------------------------------------------------------:|:------------------------------------------------------------|
|   [confluentinc/cp-ansible](https://github.com/confluentinc/cp-ansible)   |Confluent Provided Ansible Roles                             |
|[nerdynick/keystore-scripts](https://github.com/nerdynick/keystore-scripts)|Collection of simple BASH scripts for generating JKS Keystore|
