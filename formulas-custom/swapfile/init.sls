{% from "swapfile/map.jinja" import conf with context %}

create_swap_file:
  cmd.run:
    - name: {{ conf.name }}
    - unless: test -f {{ conf.swapfile }}

{% if ( grains['os_family'] == 'Debian' or grains['os_family'] == 'RedHat' ) and conf.mount|default(False) == True %}
mount_swap:
  cmd.run:
    - name: {{ conf.remount }}
    - unless: swapon -s | grep -v "conf.swapfile"
{% endif %}

append_fstab:
  file.append:
    - name: /etc/fstab
    - text: |
        {{ conf.fstab }}
    - require:
      - cmd: create_swap_file

