# This is the main state file for deploying certificates

{% from "cert/map.jinja" import map with context %}

# Install required packages
cert_packages:
  pkg.installed:
    - pkgs:
{% for pkg in map.pkgs %}
      - {{ pkg }}
{% endfor %}

# Deploy certificates
# Place all files in a files_roots/cert, e.g. /srv/salt/files/cert/

# Make sure we only run update-ca-certificates if certificates were managed
{% set vals = { 'managed_certs': False } %}

{% for name, data in salt['pillar.get']('cert:certlist', {}).items() %}
  
  {% do vals.update({'managed_certs': True}) %}

  {% set cert = data.get('cert', False) %}
  {% set key = data.get('key', False) %}
  {% set cert_ext = data.get('cert_ext', map.cert_ext) %}
  {% set key_ext = data.get('key_ext', map.key_ext) %}
  {% set cert_user = data.get('cert_user', map.cert_user) %}
  {% set key_user = data.get('key_user', map.key_user) %}
  {% set cert_group = data.get('cert_group', map.cert_group) %}
  {% set key_group = data.get('key_group', map.key_group) %}
  {% set cert_mode = data.get('cert_mode', map.cert_mode) %}
  {% set key_mode = data.get('key_mode', map.key_mode) %}
  {% set cert_dir = data.get('cert_dir', map.cert_dir) %}
  {% set key_dir = data.get('key_dir', map.key_dir) %}
  {% set remove = data.get('remove', map.remove) %}

{{ cert_dir }}/{{ name }}{{ cert_ext }}:
  {% if remove %}
  file.absent:
    - onlyif:
      - "test -e {{ cert_dir }}/{{ name }}{{ cert_ext }}"
  {% else %}
  file.managed:
    {% if cert %}
    - contents: |
{{ cert|indent(8, True) }}
    {% else %}
    - source: {{ map.cert_source_dir }}{{ name }}{{ cert_ext }}
    {% endif %}
    - makedirs: True
    - user: {{ cert_user }}
    - group: {{ cert_group }}
    - mode: {{ cert_mode }}
  {% endif %}
    - onchanges_in:
      - cmd: update-ca-certificates

  {% if key %}
{{ key_dir }}/{{ name }}{{ key_ext }}:
    {% if remove %}
  file.absent:
    - onlyif:
      - "test -e {{ key_dir }}/{{ name }}{{ key_ext }}"
    {% else %}
  file.managed:
    - contents: |
{{ key|indent(8, True) }}
    - makedirs: True
    - user: {{ key_user }}
    - group: {{ key_group }}
    - mode: {{ key_mode }}
    {% endif %}
  {% endif %}

{% endfor %}

# We only want to run the update-ca-certificates if a cert was added or removed.
{% if vals['managed_certs'] %}
{% set cert_update_cmd = map.cert_update_cmd|default("") %}
{% if cert_update_cmd %}
update-ca-certificates:
  cmd.run:
    - runas: root
    - name: {{ cert_update_cmd }}
{% else %}
# If an update command is not in the map, define an empty state for the requisite.
update-ca-certificates: {}
{% endif %} # / cert_update_cmd
{% endif %} # / vals['managed_certs']
