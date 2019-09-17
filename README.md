
Chef cookbook to interact with Vault server
===========================================  
This chef cookbook interacts with a Hashicorp Vault server and can read and write a secret from a secret engine on it. it. It installs the vault-ruby gem and can read a secret from a specified secret engine and write it to a temporary file, as well as write a secret to a specified secret engine on Vault. Note that the verion of the secret engine needs to be 1.
Use the methods shown in the  cookbook by doing the following, which will allow you to use the Vault logical read and write functions. 
```
include_recipe 'vaultsetup::setup_vault'
```

Authentication
--------------
The cookbook uses a Vault token and SSL certificates to authenticate with the Vault server. The token needs apporiate permissions to read and write secrets from the server. 

Reading a secret
----------------
The following command uses the vault-ruby gem to read a secret from a given path.  
```
creds=Vault.logical.read("secret/testing")
```
Here, secret/testing is the path to the secret on the vault server and the response is in the form of an object that is stored in the creds variable. 

Writing a secret
----------------
The following command uses the vault-ruby gem to write a secret to a secret engine.
```
Vault.logical.write("secret/password", username: "username" ,password: "secret")
```
Here, a secret with username=username and password=secret at the secret/password path. 
