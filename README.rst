====
cert
====

.. image:: https://travis-ci.org/saltstack-formulas/cert-formula.svg?branch=master

Formula to deploy certificates.

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``cert``
--------

Deploys or removes given certificates and keys.

Example
=======

Put certificates to  */srv/salt/files/cert/* or any other *cert* directory under file_roots (this configuration can be changed with pillar) and list them in pillar. Private keys are deployed via pillar. See *cert/pillar.example*.

Available modules
=================

.. contents::
    :local:

``cert_formula_helper.get_filenames_matching_content``
--------

A helper function to find certificate files that match certificate contents. Useful if a certificate file gets renamed to something you don't remember and have trouble finding a certificate you wish to remove.

Example
=======

Example that finds all certificate files in /usr/local/share/ca-certificates matching the certificate contents found in the pillar data in cert:certlist:cert.filename:cert

.. code-block::

    salt-call cert_formula_helper.get_filenames_matching_content /usr/local/share/ca-certificates  pillar_key="cert:certlist:cert.filename:cert"

Testing
=======

For integration testing, use kitchen

.. code-block::

    # Bundler is used to ensure correct library versions 
    bundle exec kitchen test
