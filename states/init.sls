# -*- coding: utf-8 -*-
# vim: ft=sls

{% set state_list = salt['pillar.get']('states', []) %}

{% if state_list != [] %}
include:
  {% for state_name in state_list %}
  - {{ state_name }}
  {% endfor %}
{% endif %}

{# EOF #}
