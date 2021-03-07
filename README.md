# Pjodd Ansible repo
Tested with ansible version 2.10.5.

## How to setup new gateway
Setup a Debian 10 machine. Then run: `ansible-playbook -i hosts --limit gw00 ./setup-gateway.yml`

