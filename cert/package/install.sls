# -*- mode: salt; coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import mapdata without context %}

cert-package-install-pkg-installed:
  pkg.installed:
    - pkgs: {{ mapdata.pkgs | json }}
