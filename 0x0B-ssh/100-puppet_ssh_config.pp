#!/usr/bin/env bash
# Using Puppet to configure SSH client without password authentication

augeas { 'ssh_config':
  context => '/files/etc/ssh/ssh_config',
  changes => [
    'set PasswordAuthentication no',
    'set IdentityFile ~/.ssh/school',
  ],
}
