#!/bin/bash
sudo chown -R $USER:$USER /Users/runner
curl -sLO https://raw.githubusercontent.com/Homebrew/install/master/uninstall.sh
chmod +x ./uninstall.sh
./uninstall.sh --force

sudo easy_install pip
sudo pip install ansible
{ echo '[defaults]'; echo 'roles_path = ../'; } >> ansible.cfg

sudo mkdir -p /etc/ansible
sudo touch /etc/ansible/hosts
echo -e '[local]\nlocalhost ansible_connection=local' | sudo tee -a /etc/ansible/hosts > /dev/null

ansible-galaxy install -r requirements.yml
ansible-playbook main.yml --syntax-check

cp tests/config.yml config.yml
ansible-playbook main.yml

idempotence=$(mktemp)
ansible-playbook main.yml | tee -a ${idempotence}
tail ${idempotence} | grep -q 'changed=0.*failed=0' && (echo 'Idempotence test: pass' && exit 0) || (echo 'Idempotence test: fail' && exit 1)