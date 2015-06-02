require 'spec_helper'

describe 'role::base' do
  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:facts) do
        facts.merge({
          :concat_basedir => '/dne',
        })
      end

      it { should compile.with_all_deps }
      it { should create_class('role::base') }
      it { should contain_class('profile::base') }
    end
  end
end
