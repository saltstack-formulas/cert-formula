cert:
  lookup:
    cert_source_dir: /tmp/kitchen/srv/salt/files/
  certlist:
    cert.from.src.to.add: {}
    cert.and.key.to.add:
      cert: |
        -----BEGIN CERTIFICATE-----
        1MOCKED CERT AND KEY
        -----END CERTIFICATE-----
      key: |
        -----BEGIN RSA PRIVATE KEY-----
        1MOCKED CERT AND KEY
        -----END RSA PRIVATE KEY-----
    cert.to.add:
      cert: |
        -----BEGIN CERTIFICATE-----
        2MOCKED CERT
        -----END CERTIFICATE-----
    cert.and.key.to.remove:
      remove: True
      cert: |
        -----BEGIN CERTIFICATE-----
        3MOCKED CERT AND KEY
        -----END CERTIFICATE-----
      key: |
        -----BEGIN RSA PRIVATE KEY-----
        3MOCKED CERT AND KEY
        -----END RSA PRIVATE KEY-----
    cert.and.key.with.ext.to.add:
      cert: |
        -----BEGIN CERTIFICATE-----
        4MOCKED CERT AND KEY
        -----END CERTIFICATE-----
      cert_ext: .pem
      key: |
        -----BEGIN RSA PRIVATE KEY-----
        4MOCKED CERT AND KEY
        -----END RSA PRIVATE KEY-----
      key_ext: .priv
