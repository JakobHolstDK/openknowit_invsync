---
- name: Include Local Role and Run Tests
  hosts: all
  gather_facts: yes
  vars:
    netbox_headers:
      Content-Type: "application/json"
      Authorization: "Token {{ netbox_token }}"
      Accept: "application/json"
    path: "api/{{ virtual | bool | ternary('virtualization/virtual-machines','dcim/devices') }}"
    invpath: "api/{{ virtual | bool | ternary('dcim/inventory-items','dcim/inventory-items') }}"
    #netbox_url: "https://ipam.it.ku.dk"
    #netbox_token: "86277ff9bdf9b60e282adfd380f4c79d0aacd98f"
    netbox_url: "https://netbox.openknowit.com"
    netbox_token: "92ec5477ccab078bb82be2f98772d18035561eba"
  tasks:
    - name: test Run 
      include_tasks: ../tasks/main.yml
      
