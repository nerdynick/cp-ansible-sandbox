# cp-ansible Sandbox

This is a collection of Ansible example scripts leveraging the [confluentinc/cp-ansible](https://github.com/confluentinc/cp-ansible) Ansible Roles.
The goal is to capture a number of the common setups, how to do it in Ansible, and the configurations that come into play for that setup.

## Examples

|Example                                              |Directory    |Components                       |                                                                                                         Notes|
|:----------------------------------------------------|:------------|:--------------------------------|-------------------------------------------------------------------------------------------------------------:|
|Basic PLAINTEXT based setup                          |plaintext    |Core, C3, Connect, SR, KSQL, REST|                                                                                                              |
|SSL with One-way Authentication                      |ssl_oneway   |Core, C3, Connect, SR, KSQL, REST|                                                                                                           [1]|
|SSL with Mutual Authentication                       |ssl_mutual   |Core, C3, Connect, SR, KSQL, REST|[1] The REST based clients have mutual authentication disabled. But comments are provided on how to enable it.|
|SASL_SSL + SCRAM                                     |sasl_scram   |                                 |                                                                                                              |
|Kerberos with SSL, aka SASL_SSL+GSSAPI               |sasl_gssapi  |Core, C3                         |                                                                                         [1] Under Development|
|RBAC+SSL using SCRAM for inter-broker comms          |rbac_scram   |                                 |                                                                                                      [1] TODO|
|RBAC+SSL using GSSAPI/KERBEROS for inter-broker comms|rbac_kerberos|                                 |                                                                                                      [1] TODO|

[1] Includes Ansible Vault usage to obscure passwords. 


## Git Submodules

|                                   Repo                                    |Description                                                  |
|:-------------------------------------------------------------------------:|:------------------------------------------------------------|
|   [confluentinc/cp-ansible](https://github.com/confluentinc/cp-ansible)   |Confluent Provided Ansible Roles                             |
|[nerdynick/keystore-scripts](https://github.com/nerdynick/keystore-scripts)|Collection of simple BASH scripts for generating JKS Keystore|

## Roadmap

1. Add examples, in this order
 1. SASL_SSL + SCRAM
 2. SASL_SSL + SCRAM & OAUTHBEARER/RBAC
 3. SASL_SSL + GSSAPI
 4. SASL_SSL + GSAPI & OAUTHBEARER/RBAC
2. Example Operations Scripts