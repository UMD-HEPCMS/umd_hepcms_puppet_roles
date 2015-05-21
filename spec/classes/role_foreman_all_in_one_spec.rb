require 'spec_helper'

describe 'role::foreman_all_in_one' do
  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:facts) do
        facts.merge({
          :concat_basedir => '/dne',
        })
      end

      it { should compile.with_all_deps }
      it { should create_class('role::foreman_all_in_one') }
      it { should contain_class('profile::base') }
      it { should contain_class('profile::mysql::server') }
      it { should contain_class('profile::puppet::server') }
      it { should contain_class('profile::foreman_proxy') }
      it { should contain_class('profile::foreman') }
      it { should contain_class('profile::dhcp::server') }
      it { should contain_class('profile::dns::server') }
      it { should contain_class('profile::tftp::server') }
    end
  end
end
