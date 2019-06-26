control 'managed' do 
  impact 1.0
  title 'certficates and keys are managed'
  desc 'verifies that certificates are present or absent'

  cert_dir = '/etc/ssl/certs/'
  key_dir = '/etc/ssl/private/'
  case os[:name]
  when 'debian', 'ubuntu'
    cert_dir = '/usr/local/share/ca-certificates/'
  when 'redhat', 'centos', 'fedora'
    cert_dir = '/etc/pki/tls/certs/'
    key_dir = '/etc/pki/tls/private/'
  end

  describe file(cert_dir + 'cert.from.src.to.add.crt') do
    its('content') { should match /^-----BEGIN CERTIFICATE-----/ }
    its('content') { should match /^CERT FROM SOURCE FILE/ }
    its('content') { should match /^-----END CERTIFICATE-----/ }
  end
  describe file(cert_dir + 'cert.and.key.to.add.crt') do
    its('content') { should match /^-----BEGIN CERTIFICATE-----/ }
    its('content') { should match /^1MOCKED CERT AND KEY/ }
    its('content') { should match /^-----END CERTIFICATE-----/ }
  end
  describe file(key_dir + 'cert.and.key.to.add.key') do
    its('content') { should match /^-----BEGIN RSA PRIVATE KEY-----/ }
    its('content') { should match /^1MOCKED CERT AND KEY/ }
    its('content') { should match /^-----END RSA PRIVATE KEY-----/ }
  end
  describe file(cert_dir + 'cert.and.key.with.ext.to.add.pem') do
    its('content') { should match /^-----BEGIN CERTIFICATE-----/ }
    its('content') { should match /^4MOCKED CERT AND KEY/ }
    its('content') { should match /^-----END CERTIFICATE-----/ }
  end
  describe file(key_dir + 'cert.and.key.with.ext.to.add.priv') do
    its('content') { should match /^-----BEGIN RSA PRIVATE KEY-----/ }
    its('content') { should match /^4MOCKED CERT AND KEY/ }
    its('content') { should match /^-----END RSA PRIVATE KEY-----/ }
  end
  describe file(cert_dir + 'cert.to.add.crt') do
    its('content') { should match /^-----BEGIN CERTIFICATE-----/ }
    its('content') { should match /^2MOCKED CERT/ }
    its('content') { should match /^-----END CERTIFICATE-----/ }
  end
  describe file(cert_dir + 'cert.and.key.to.remove.crt') do
    it { should_not exist }
  end
  describe file(key_dir + 'cert.and.key.to.remove.key') do
    it { should_not exist }
  end
  if os.family == 'debian'
    describe file('/etc/ssl/certs/ca-certificates.crt') do
      its('content') { should match /^CERT FROM SOURCE FILE/ }
      its('content') { should match /^1MOCKED CERT AND KEY/ }
      its('content') { should match /^2MOCKED CERT/ }
      its('content') { should_not match /^3MOCKED CERT AND KEY/ }
    end
  end
end
