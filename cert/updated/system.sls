# -*- mode: salt; coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- set sls_deployed_files = tplroot ~ '.deployed.files' %}
{%- from tplroot ~ "/map.jinja" import mapdata without context %}

include:
  - {{ sls_deployed_files }}

{%- if mapdata.certs_update_cmd %}
cert-updated-system-cmd.run:
  cmd.run:
    - name: {{ mapdata.certs_update_cmd }}
    - runas: root
    - onchanges:
        - sls: {{ sls_deployed_files }}
{%- endif %}
