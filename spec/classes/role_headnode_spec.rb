require 'spec_helper'

describe 'role::headnode' do
  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:facts) do
        facts.merge({
          :concat_basedir => '/dne',
        })
      end

      it { should compile.with_all_deps }
      it { should create_class('role::headnode') }
      it { should contain_class('profile::base') }
      it { should contain_class('profile::nat') }
    end
  end
end
