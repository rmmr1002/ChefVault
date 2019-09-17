#
## Cookbook:: vaultsetup
## Recipe:: default
##
## Description: Determines whether to run the node as a server or universal forwarder and runs the necessary recipes to setup its base configuration.
#
#
## Setup Hashicorp Vault.
include_recipe 'vaultsetup::setup_vault'

