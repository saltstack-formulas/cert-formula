# !!!!!!!!!!!!!!!!!!!!!!!!!! TEST STATE !!!!!!!!!!!!!!!!!!!!!!!!!!!
# THIS SHOULD NOT BE USED OUTSIDE OF KITCHEN TESTING
#
# A testing state created to add certificate and key file that will
# be removed to test certificate removal.

{% from "cert/map.jinja" import mapdata with context %}

add-test-cert:
  file.managed:
    - name: {{ mapdata.cert_dir }}/cert.and.key.to.remove.crt
    - contents: |
        -----BEGIN CERTIFICATE-----
        3MOCKED CERT AND KEY
        -----END CERTIFICATE-----

add-test-key:
  file.managed:
    - name: {{ mapdata.key_dir }}/cert.and.key.to.remove.key
    - contents: |
        -----BEGIN RSA PRIVATE KEY-----
        3MOCKED CERT AND KEY
        -----END RSA PRIVATE KEY-----
