# macOS playbook
[![Actions Status](https://github.com/charlesrocket/macos-station/workflows/playbook%20tests/badge.svg)](https://github.com/charlesrocket/macos-station/actions) [![Actions Status](https://github.com/charlesrocket/macos-station/workflows/ansible%20lint/badge.svg)](https://github.com/charlesrocket/macos-station/actions)

Ansible playbook for macOS (brew/dotfiles/configuration/hardening)

### Start

Edit `requirements.yml`/`default.config.yml` then run:

```
ansible-galaxy install -r requirements.yml
ansible-playbook main.yml -i inventory
```

*Layout based on geerlingguy's [mac-dev-playbook](https://github.com/geerlingguy/mac-dev-playbook)*
