firewall_config:
	ansible-playbook ./automation/ansible/playbooks/infrastructure/main.yml --extra-vars "install_docker=false confifgure_firewall=false" -i inventory -K

install_docker:
	ansible-playbook ./automation/ansible/playbooks/infrastructure/main.yml --extra-vars "install_docker=true confifgure_firewall=false" -i inventory -K 

install_k3s_server:
	ansible-playbook ./automation/ansible/playbooks/infrastructure/main.yml --extra-vars "install_docker=false confifgure_firewall=false install_k3s_server=true" -i inventory -K

install_k3s_agents:
	ansible-playbook ./automation/ansible/playbooks/infrastructure/main.yml --extra-vars "install_docker=false confifgure_firewall=false install_k3s_server=false install_k3s_agents=true" -i inventory -K

post_install:
	ansible-playbook ./automation/ansible/playbooks/post_install/main.yml --extra-vars "temp=false" -i inventory -K

storage:
	ansible-playbook ./automation/ansible/playbooks/storage/main.yml --extra-vars "temp=false" -i inventory -K
	