control 'nocerts' do
  impact 1.0
  title 'no certificates or keys are managed'
  desc 'verifies that if you do not specify certificates or keys, this formula will not cause problems'
  if os.family == 'debian'
    describe file('/etc/ssl/certs/ca-certificates.crt') do
      it { should exist }
    end
  end
end