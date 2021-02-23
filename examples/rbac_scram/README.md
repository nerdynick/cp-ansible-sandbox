# SASL_SSL/SCRAM & RBAC Working Ansible Example

## General order of execution

1. `ansible-playbook main.yaml -t preflight,zookeeper,kafka_broker`  
2. Create rolebindings for Platform Application User Accounts. See [rolebindings.sh](./rolebindings.sh) for a sample of the rolebindings that need to be created.
3. `ansible-playbook main.yaml -t preflight,schema_registry,kafka_connect,control_center`