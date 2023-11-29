python3 -m venv venv
source venv/bin/activate

pip install ansible

ansible-playbook -i inventory  playbook.yml
