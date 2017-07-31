
{% set Operation_System_Defaul_Config = {
  'RedHat': 'centos7',
}.get(grains.os_family) %}

include:
  - shared.{{ Operation_System_Defaul_Config }}
  - shared.salt-minion
