# Example of cp-ansible feature - Host Aliasing

This example illustrates the different way to define the Internal Platform address insync with or separate(Aliased) from the SSH address/hostname of a node.

## Example Inventories

The following inventories are provided to give a fuller example of common setups.

### Simple

This inventory is an example of a small cluster. 
With minimal node counts of each component.

```bash
$> ansible-playbook -i inv.simple/ all.yml
```