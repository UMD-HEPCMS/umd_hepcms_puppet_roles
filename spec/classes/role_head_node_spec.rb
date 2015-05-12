require 'spec_helper'

describe 'role::head_node' do
  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:facts) { facts }

      it { should compile.with_all_deps }
      it { should create_class('role::head_node') }
      it { should contain_class('profile::base') }
      it { should contain_class('profile::nat') }
      it { should contain_class('profile::puppet::server') }
      it { should contain_class('profile::foreman_proxy') }
      it { should contain_class('profile::foreman') }
      it { should contain_class('profile::dhcp::server') }
      it { should contain_class('profile::dns::server') }
      it { should contain_class('profile::tftp::server') }
    end
  end
end
