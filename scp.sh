#! /usr/bin/env bash

set -euo pipefail

scp \
-o IdentityFile="/Users/jamesmusselwhite/.lima/_config/user" \
-o IdentityFile="/Users/jamesmusselwhite/.ssh/id_rsa" \
-o StrictHostKeyChecking=no \
-o UserKnownHostsFile=/dev/null \
-o NoHostAuthenticationForLocalhost=yes \
-o GSSAPIAuthentication=no \
-o PreferredAuthentications=publickey \
-o Compression=no \
-o BatchMode=yes \
-o IdentitiesOnly=yes \
-o Ciphers="^aes128-gcm@openssh.com,aes256-gcm@openssh.com" \
-o User=jamesmusselwhite \
-o ControlMaster=auto \
-o ControlPath="/Users/jamesmusselwhite/.lima/colima/ssh.sock" \
-o ControlPersist=5m \
-o Hostname=127.0.0.1 \
-o Port=52155 /Users/jamesmusselwhite/Library/Application\ Support/mkcert/rootCA.pem 127.0.0.1:~