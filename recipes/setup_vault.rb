#
## Cookbook Name:: vaultsetup
## Recipe:: setup_vault
##
## Description: Sets up vault for use and writes and reads a secret. 

## Install the Hashicorp Vault gem.
chef_gem 'vault' do
  compile_time true
  action :install
end

# Ensure the gem is loaded and declare that its required.
gem 'vault'
require 'vault'

# Configure the Vault settings.
Vault.address = node['vaultsetup']['vault_address']
Vault.token = node['vaultsetup']['vault_token']
Vault.ssl_verify = true
Vault.configure do |config|
  config.ssl_ca_cert = node['vaultsetup']['ssl_ca_cert']
  config.ssl_ca_path = node['vaultsetup']['ssl_ca_path']
  config.ssl_timeout = 5
  config.open_timeout = 5
  config.read_timeout = 5
end
