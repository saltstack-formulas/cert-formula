
Changelog
=========

`1.3.0 <https://github.com/saltstack-formulas/cert-formula/compare/v1.2.0...v1.3.0>`_ (2021-05-06)
------------------------------------------------------------------------------------------------------

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **gitlab-ci:** enable Gentoo instances [skip ci] (\ `c62cde9 <https://github.com/saltstack-formulas/cert-formula/commit/c62cde9f5eedee530985f94a3e422a7d2bd6f2d4>`_\ )

Features
^^^^^^^^


* **update:** integrate certificates on supported systems (\ `5c9e680 <https://github.com/saltstack-formulas/cert-formula/commit/5c9e680e69999e0278210739f7cb0de3896d4a68>`_\ )

Tests
^^^^^


* **inspec:** integrade update command in mapdata dump files (\ `4c2d8da <https://github.com/saltstack-formulas/cert-formula/commit/4c2d8da382f5a50e7359eacc442e1d522a2afc86>`_\ )
* **rubocop:** fix all violations (\ `12030ab <https://github.com/saltstack-formulas/cert-formula/commit/12030ab74a1bdf013db78960796a920f4487a104>`_\ )

`1.2.0 <https://github.com/saltstack-formulas/cert-formula/compare/v1.1.1...v1.2.0>`_ (2021-04-26)
------------------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **platform:** support the Gentoo distributions (\ `a0f2701 <https://github.com/saltstack-formulas/cert-formula/commit/a0f2701b63121e8deafbfc69ec6970c3a537917f>`_\ )

`1.1.1 <https://github.com/saltstack-formulas/cert-formula/compare/v1.1.0...v1.1.1>`_ (2021-04-26)
------------------------------------------------------------------------------------------------------

Code Refactoring
^^^^^^^^^^^^^^^^


* **layout:** split formula with ``package`` and ``deployed`` (\ `a7a55c3 <https://github.com/saltstack-formulas/cert-formula/commit/a7a55c3cfd9b90456d70fb1ae753e7cbfa32d857>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen+gitlab:** adjust matrix to add ``3003`` [skip ci] (\ `e6077cc <https://github.com/saltstack-formulas/cert-formula/commit/e6077cc63003005f7c4673d3280a5d519e26f06b>`_\ )

Tests
^^^^^


* **_mapdata:** add verification file for ``fedora-34`` [skip ci] (\ `27ba289 <https://github.com/saltstack-formulas/cert-formula/commit/27ba2896baa68bad3981b1b306d020a7ae4a1ca0>`_\ )

`1.1.0 <https://github.com/saltstack-formulas/cert-formula/compare/v1.0.0...v1.1.0>`_ (2021-04-14)
------------------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **map:** users can configure ``certlist`` in YAML files (\ `1ae2717 <https://github.com/saltstack-formulas/cert-formula/commit/1ae27175ffee06b679a4567f990efabd70bef6f0>`_\ )

Tests
^^^^^


* **inspec:** the ``cert`` pillar must be in ``mapdata`` reference files (\ `36e04e1 <https://github.com/saltstack-formulas/cert-formula/commit/36e04e111b6d927c2ddd4ba261f39ff84b0d9676>`_\ )

`1.0.0 <https://github.com/saltstack-formulas/cert-formula/compare/v0.4.4...v1.0.0>`_ (2021-04-13)
------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **map:** unable to setup test infrastructure (\ `c223af4 <https://github.com/saltstack-formulas/cert-formula/commit/c223af422a2ee7f09458955f48642201d0d63d3f>`_\ )

Features
^^^^^^^^


* **map:** update to generic v5 ``map.jinja`` (\ `93c89e1 <https://github.com/saltstack-formulas/cert-formula/commit/93c89e12049172dcdfe993e38dd04628bb6fa764>`_\ )

Tests
^^^^^


* **inspec:** ``map.jinja`` configuration is now in reference files (\ `4041422 <https://github.com/saltstack-formulas/cert-formula/commit/40414223b74199d2d2305997b761e932f30fdd1f>`_\ )
* standardise use of ``share`` suite & ``_mapdata`` state [skip ci] (\ `b372c37 <https://github.com/saltstack-formulas/cert-formula/commit/b372c372f76d6e3adfec657b9c6e75aa3d43535c>`_\ )

BREAKING CHANGES
^^^^^^^^^^^^^^^^


* **map:** ``map.jinja`` import must use ``without context``
* **map:** ``libmapstack.jinja`` import must use ``without context``
* **map:** ``libmatchers.jinja`` import must use ``without context``
* **map:** ``map.jinja`` now export a generic ``mapdata`` variable
* **map:** the parameters per grains are now under ``cert/parameters/``

`0.4.4 <https://github.com/saltstack-formulas/cert-formula/compare/v0.4.3...v0.4.4>`_ (2021-03-17)
------------------------------------------------------------------------------------------------------

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **commitlint:** ensure ``upstream/master`` uses main repo URL [skip ci] (\ `8aef477 <https://github.com/saltstack-formulas/cert-formula/commit/8aef4779b9282533af6eeeb7d4dda9aeeaba1702>`_\ )
* **gemfile+lock:** use ``ssf`` customised ``kitchen-docker`` repo [skip ci] (\ `bc13f8a <https://github.com/saltstack-formulas/cert-formula/commit/bc13f8a86dd5fa2124f8a8e6f2ab1d86ffb5def9>`_\ )
* **gitlab-ci:** add ``rubocop`` linter (with ``allow_failure``\ ) [skip ci] (\ `6a7eb8c <https://github.com/saltstack-formulas/cert-formula/commit/6a7eb8c27c23a4399ee7eca7c5c791200181319a>`_\ )
* **kitchen+ci:** use latest pre-salted images (after CVE) [skip ci] (\ `d7b7da0 <https://github.com/saltstack-formulas/cert-formula/commit/d7b7da02ef0cee7783aea29e8ea9b151e8a4b92b>`_\ )
* **kitchen+gitlab-ci:** use latest pre-salted images [skip ci] (\ `1af4b43 <https://github.com/saltstack-formulas/cert-formula/commit/1af4b436c9349f2489c753aea113dc7c3d3a71f0>`_\ )
* **pre-commit:** update hook for ``rubocop`` [skip ci] (\ `21a2b99 <https://github.com/saltstack-formulas/cert-formula/commit/21a2b99e5a3416e060dbdc7a2ec6c9f16f7fe00c>`_\ )

Tests
^^^^^


* **inspec:** add InSpec shared resources (\ `b1ad9d7 <https://github.com/saltstack-formulas/cert-formula/commit/b1ad9d79d9df34e500e591bb0315acfddf831067>`_\ )
* **inspec:** verify ``mapdata`` dump against reference files (\ `42f299f <https://github.com/saltstack-formulas/cert-formula/commit/42f299f64acdfa498cb2d6f7457776ad762c96dc>`_\ )
* **managed:** fix for Oracle Linux (\ `82257ca <https://github.com/saltstack-formulas/cert-formula/commit/82257ca1cb1853b38e56fd2a8c454ab80515a59d>`_\ )
* **map:** dump ``mapdata`` content (\ `9a490de <https://github.com/saltstack-formulas/cert-formula/commit/9a490ded65caa68ac129b22b7eaf6d4ce7ca54cb>`_\ )

`0.4.3 <https://github.com/saltstack-formulas/cert-formula/compare/v0.4.2...v0.4.3>`_ (2020-12-16)
------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **release.config.js:** use full commit hash in commit link [skip ci] (\ `8e5a997 <https://github.com/saltstack-formulas/cert-formula/commit/8e5a997736f884caf3dfd9cc465739802b362bd0>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **gemfile:** restrict ``train`` gem version until upstream fix [skip ci] (\ `1d3dbe0 <https://github.com/saltstack-formulas/cert-formula/commit/1d3dbe01308bd5d6bbbb2f98da0015edbd932004>`_\ )
* **gemfile.lock:** add to repo with updated ``Gemfile`` [skip ci] (\ `2ab3b86 <https://github.com/saltstack-formulas/cert-formula/commit/2ab3b86586139968e26d3919ba30ca094d9323e7>`_\ )
* **gitlab-ci:** use GitLab CI as Travis CI replacement (\ `7a45acc <https://github.com/saltstack-formulas/cert-formula/commit/7a45accfd6188149576aeceed1203f7fb388c1e7>`_\ )
* **kitchen:** avoid using bootstrap for ``master`` instances [skip ci] (\ `1a60083 <https://github.com/saltstack-formulas/cert-formula/commit/1a600836745e98156761f3b1f6cd60470a094729>`_\ )
* **kitchen:** use ``debian-10-master-py3`` instead of ``develop`` [skip ci] (\ `e0e3597 <https://github.com/saltstack-formulas/cert-formula/commit/e0e359705aa76f5e4be8f6c0a4e2c066716c64b0>`_\ )
* **kitchen:** use ``develop`` image until ``master`` is ready (\ ``amazonlinux``\ ) [skip ci] (\ `8f3cd1d <https://github.com/saltstack-formulas/cert-formula/commit/8f3cd1df058bae7ab6895495a5482dd31438011f>`_\ )
* **kitchen:** use ``saltimages`` Docker Hub where available [skip ci] (\ `83e3dc1 <https://github.com/saltstack-formulas/cert-formula/commit/83e3dc1718e92bca036f166c8085e9cf416ad0ab>`_\ )
* **kitchen+travis:** remove ``master-py2-arch-base-latest`` [skip ci] (\ `70e7539 <https://github.com/saltstack-formulas/cert-formula/commit/70e7539e878df98b3551dc8560e4cff303daa106>`_\ )
* **kitchen+travis:** upgrade matrix after ``2019.2.2`` release [skip ci] (\ `d2b4a13 <https://github.com/saltstack-formulas/cert-formula/commit/d2b4a13a62f1b5b454994e77f8ea928bbc5bc8b2>`_\ )
* **pre-commit:** add to formula [skip ci] (\ `6ea0cec <https://github.com/saltstack-formulas/cert-formula/commit/6ea0cec3457d474f8f83a9fdd4239ba0bdac0484>`_\ )
* **pre-commit:** enable/disable ``rstcheck`` as relevant [skip ci] (\ `2a8f832 <https://github.com/saltstack-formulas/cert-formula/commit/2a8f832e140dfdbf8143f1337d8a5d7dfa673df5>`_\ )
* **pre-commit:** finalise ``rstcheck`` configuration [skip ci] (\ `125dffb <https://github.com/saltstack-formulas/cert-formula/commit/125dffb59a9429734d337360f407ae0a792902b8>`_\ )
* **travis:** add notifications => zulip [skip ci] (\ `667d949 <https://github.com/saltstack-formulas/cert-formula/commit/667d9493814b31f43aa371c6284b53333305f8f5>`_\ )
* **travis:** apply changes from build config validation [skip ci] (\ `6bb2e29 <https://github.com/saltstack-formulas/cert-formula/commit/6bb2e29c9353ee3a9c8985e0ac7568af64307b45>`_\ )
* **travis:** opt-in to ``dpl v2`` to complete build config validation [skip ci] (\ `712662e <https://github.com/saltstack-formulas/cert-formula/commit/712662e8efa9d900eb34e0f3c1fddf832fa2f438>`_\ )
* **travis:** quote pathspecs used with ``git ls-files`` [skip ci] (\ `8dc28ce <https://github.com/saltstack-formulas/cert-formula/commit/8dc28ce85ed7c85b672181a0183c9b1cd59c9422>`_\ )
* **travis:** run ``shellcheck`` during lint job [skip ci] (\ `59c3c26 <https://github.com/saltstack-formulas/cert-formula/commit/59c3c26cc7fbbfa63a8ef64cac76345bd9bfb8d8>`_\ )
* **travis:** update ``salt-lint`` config for ``v0.0.10`` [skip ci] (\ `126da96 <https://github.com/saltstack-formulas/cert-formula/commit/126da96d6ef9f671a10009a973386d6cdd2bf0ec>`_\ )
* **travis:** use ``major.minor`` for ``semantic-release`` version [skip ci] (\ `bbcc4d7 <https://github.com/saltstack-formulas/cert-formula/commit/bbcc4d7f5bbe0d0fc55852bf177cb3b999d5a0cb>`_\ )
* **travis:** use build config validation (beta) [skip ci] (\ `34b4f1b <https://github.com/saltstack-formulas/cert-formula/commit/34b4f1b3faf5403b5d37fe84ea56502141bc8108>`_\ )
* **workflows/commitlint:** add to repo [skip ci] (\ `2b5b9c2 <https://github.com/saltstack-formulas/cert-formula/commit/2b5b9c28314aa6c031d22e1500e7ba847eef816e>`_\ )
* merge travis matrix, add ``salt-lint`` & ``rubocop`` to ``lint`` job (\ `b3b4f57 <https://github.com/saltstack-formulas/cert-formula/commit/b3b4f578f1c532864a8209820e2afc907746d7d6>`_\ )

Documentation
^^^^^^^^^^^^^


* **contributing:** remove to use org-level file instead [skip ci] (\ `48288cd <https://github.com/saltstack-formulas/cert-formula/commit/48288cdc0c26a06c72f496904a2c527cc70ebc23>`_\ )
* **readme:** update link to ``CONTRIBUTING`` [skip ci] (\ `72ef2c0 <https://github.com/saltstack-formulas/cert-formula/commit/72ef2c0314ab7ccc4b85a59bdb9460953d16791c>`_\ )

Performance Improvements
^^^^^^^^^^^^^^^^^^^^^^^^


* **travis:** improve ``salt-lint`` invocation [skip ci] (\ `2ac2db7 <https://github.com/saltstack-formulas/cert-formula/commit/2ac2db71c5a005f09e534b5174a3c5956d13ff56>`_\ )

`0.4.2 <https://github.com/saltstack-formulas/cert-formula/compare/v0.4.1...v0.4.2>`_ (2019-10-09)
------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **init.sls:** fix ``salt-lint`` errors (\ ` <https://github.com/saltstack-formulas/cert-formula/commit/ce1d540>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen:** change ``log_level`` to ``debug`` instead of ``info`` (\ ` <https://github.com/saltstack-formulas/cert-formula/commit/6c78248>`_\ )
* **kitchen:** install required packages to bootstrapped ``opensuse`` [skip ci] (\ ` <https://github.com/saltstack-formulas/cert-formula/commit/40cfc7e>`_\ )
* **kitchen:** use bootstrapped ``opensuse`` images until ``2019.2.2`` [skip ci] (\ ` <https://github.com/saltstack-formulas/cert-formula/commit/7653b5d>`_\ )
* **platform:** add ``arch-base-latest`` (\ ` <https://github.com/saltstack-formulas/cert-formula/commit/743c609>`_\ )
* **travis:** remove ``.ruby-version`` to allow using ``dist: bionic`` (\ ` <https://github.com/saltstack-formulas/cert-formula/commit/f89732b>`_\ )
* **yamllint:** add rule ``empty-values`` & use new ``yaml-files`` setting (\ ` <https://github.com/saltstack-formulas/cert-formula/commit/5c5c218>`_\ )
* merge travis matrix, add ``salt-lint`` & ``rubocop`` to ``lint`` job (\ ` <https://github.com/saltstack-formulas/cert-formula/commit/d680428>`_\ )
* use ``dist: bionic`` & apply ``opensuse-leap-15`` SCP error workaround (\ ` <https://github.com/saltstack-formulas/cert-formula/commit/45d9085>`_\ )

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
