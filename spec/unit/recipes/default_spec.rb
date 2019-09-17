#
# Cookbook:: vaultsetup
# Spec:: default
#
# Copyright:: 2019, 

require 'spec_helper'

describe 'vaultsetup::default' do
  context 'When all attributes are default, on a RHEL 7.6' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'rhel', version: '7.6')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end
