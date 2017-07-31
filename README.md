# What is it?

This project is addon for https://docs.saltstack.com/en/latest/topics/best_practices.html with describe how to make whole infrastructure for SaltStack main (Master or Master of Masters) server.

# salt-master config example

```
default_include: /etc/salt/master.d/*.conf
timeout: 300
keep_jobs: 48
max_open_files: 100000
worker_threads: 10
timeout: 10
minion_data_cache: True
order_masters: True
show_timeout: True

file_roots:
  base:
    - /srv/saltstack/salt
    - /srv/saltstack/formulas
    - /srv/saltstack/formulas-custom

pillar_roots:
  base:
    - /srv/saltstack/pillar
```
