# macOS playbook
[![Actions Status](https://github.com/charlesrocket/macos-playbook/workflows/playbook%20tests/badge.svg)](https://github.com/charlesrocket/macos-playbook/actions) [![Actions Status](https://github.com/charlesrocket/macos-playbook/workflows/ansible%20lint/badge.svg)](https://github.com/charlesrocket/macos-playbook/actions)

Ansible playbook for macOS (brew/dotfiles/configuration/hardening)

### Start

Edit `requirements.yml`/`default.config.yml` then run:

```
cp default.config.yml config.yml
ansible-galaxy install -r requirements.yml
ansible-playbook main.yml -i inventory --ask-become-pass
```

*Layout based on geerlingguy's [mac-dev-playbook](https://github.com/geerlingguy/mac-dev-playbook)*