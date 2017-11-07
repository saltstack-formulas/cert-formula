====
cert
====

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

Deploys given certificates and keys.

Example
=======

Put certificates to  */srv/salt/files/cert/* or any other *cert* directory under file_roots (this configuration can be changed with pillar) and list them in pillar. Private keys are deployed via pillar. See *cert/pillar.example*.
