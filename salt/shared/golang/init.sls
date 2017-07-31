
formulas_golang_map_jinja:
  file.managed:
    - name: /dev/null
    - source: salt://golang/map.jinja
    - replace: False

formulas_golang_defaults_jinja:
  file.managed:
    - name: /dev/null
    - source: salt://golang/defaults.yaml
    - replace: False

include:
  - golang
