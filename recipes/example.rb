#
## Cookbook Name:: vaultsetup
## Recipe:: example
##
## Description: Example of a read and write for vault. 

# Write a secret to the vault engine
Vault.logical.write("engine_name/testing", username: "username" ,password: "secret")
  
# Read a secret from the engine 
creds=Vault.logical.read("engine_name/testing")

file '/tmp/log.txt' do
  content (creds.data).to_s
end
