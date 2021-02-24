# Example for deploying a PLAINTEXT Confluent Platform

## Example Inventories

The following inventories are provided to give a fuller example of common setups.

### Small

This inventory is an example of a very small, single-node per component, cluster.

```bash
$> ansible-playbook -i inv.small/ all.yml
```

### Simple

This inventory is an example of a small cluster. 
With minimal node counts of each component.

```bash
$> ansible-playbook -i inv.simple/ all.yml
```

### Multi-Region Cluster (MRC)

This inventory is an example of MRC cluster. 
Made of 3 regions, with 2 of those regions being of paridy.

```bash
$> ansible-playbook -i inv.mrc/ all.yml
```

### Centralized Cluster

This inventory is an example of 2 clusters paired together. 
The `main` cluster is the primary cluster where workloads will be performed.
The `central` cluster is where Metrics/C3 workloads and potentially other centralizable workloads will be performed (RBAC, AuditLogs, etc).

```bash
$> ansible-playbook -i inv.centralized/central all.yml
$> ansible-playbook -i inv.centralized/main all.yml
```

**NOTE:** _We deploy central first, so the metrics from main has a place to go_