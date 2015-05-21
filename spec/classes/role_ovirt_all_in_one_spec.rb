require 'spec_helper'

describe 'role::ovirt_all_in_one' do
  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:facts) do
        facts.merge({
          :concat_basedir => '/dne',
        })
      end

      it { should compile.with_all_deps }
      it { should create_class('role::ovirt_all_in_one') }
      it { should contain_class('profile::base') }
      it { should contain_class('profile::ovirt::all_in_one') }
    end
  end
end
