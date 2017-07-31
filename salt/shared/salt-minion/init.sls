
formulas_salt_minion_jinja:
  file.managed:
    - name: /dev/null
    - source: salt://salt/formulas.jinja
    - replace: False

include:
  - salt.pkgrepo
  - salt.minion
