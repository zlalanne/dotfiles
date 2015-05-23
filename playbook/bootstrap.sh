#!/usr/bin/env bash
#
# Run the ansible playbook

ansible-playbook -i hosts machines.yml -K
