
{% set Operation_System_Defaul_Config = {
  'RedHat': 'centos7',
}.get(grains.os_family) %}

base:
### Basic configuration for all
  '*':
    - shared.{{ Operation_System_Defaul_Config }}

### Client1
  'C1-SaltMinion-0001':
    - client1.role1
    - client1.hosts.C1-SaltMinion-0001

### Client2
  'C2-SaltMinion-0002':
    - client2.role1
    - client2.hosts.C2-SaltMinion-0002

  'C2-SaltMinion-0003':
    - client2.role2
    - client2.hosts.C2-SaltMinion-0003
