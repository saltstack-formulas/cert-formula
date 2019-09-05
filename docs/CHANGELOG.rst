
Changelog
=========

`0.4.1 <https://github.com/saltstack-formulas/cert-formula/compare/v0.4.0...v0.4.1>`_ (2019-09-05)
------------------------------------------------------------------------------------------------------

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen+travis:** replace EOL pre-salted images (\ `1b9fd9d <https://github.com/saltstack-formulas/cert-formula/commit/1b9fd9d>`_\ )

Tests
^^^^^


* **inspec:** improve to work on ``amazon`` as well (\ `248d0e8 <https://github.com/saltstack-formulas/cert-formula/commit/248d0e8>`_\ )

`0.4.0 <https://github.com/saltstack-formulas/cert-formula/compare/v0.3.2...v0.4.0>`_ (2019-08-10)
------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **no_certs:** remove unused test pillar file (\ `cbb0ef6 <https://github.com/saltstack-formulas/cert-formula/commit/cbb0ef6>`_\ ), closes `#29 <https://github.com/saltstack-formulas/cert-formula/issues/29>`_

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen:** remove ``python*-pip`` installation (\ `36b41c1 <https://github.com/saltstack-formulas/cert-formula/commit/36b41c1>`_\ )
* use cross-formula standard structure (\ `b6b0509 <https://github.com/saltstack-formulas/cert-formula/commit/b6b0509>`_\ )

Features
^^^^^^^^


* **yamllint:** include for this repo and apply rules throughout (\ `7b0a88a <https://github.com/saltstack-formulas/cert-formula/commit/7b0a88a>`_\ )

`0.3.2 <https://github.com/saltstack-formulas/cert-formula/compare/v0.3.1...v0.3.2>`_ (2019-06-26)
------------------------------------------------------------------------------------------------------

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen+travis:** modify matrix to include ``develop`` platform (\ `ecda7e6 <https://github.com/saltstack-formulas/cert-formula/commit/ecda7e6>`_\ )

Tests
^^^^^


* **managed:** get tests working for Fedora as well (\ `7332d4b <https://github.com/saltstack-formulas/cert-formula/commit/7332d4b>`_\ ), closes `#23 <https://github.com/saltstack-formulas/cert-formula/issues/23>`_

`0.3.1 <https://github.com/saltstack-formulas/cert-formula/compare/v0.3.0...v0.3.1>`_ (2019-04-28)
------------------------------------------------------------------------------------------------------

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **travis:** deactivate fedora builds (\ `e2c8352 <https://github.com/saltstack-formulas/cert-formula/commit/e2c8352>`_\ )

Documentation
^^^^^^^^^^^^^


* **semantic-release:** implement an automated changelog (\ `5f455f5 <https://github.com/saltstack-formulas/cert-formula/commit/5f455f5>`_\ )
