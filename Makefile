firewall_config:
	ansible-playbook ./automation/ansible/main.yml --extra-vars "install_docker=false confifgure_firewall=false" -i inventory -K

install_docker:
	ansible-playbook ./automation/ansible/main.yml --extra-vars "install_docker=true confifgure_firewall=false" -i inventory -K 

install_k3s_server:
	ansible-playbook ./automation/ansible/main.yml --extra-vars "install_docker=false confifgure_firewall=false install_k3s_server=true" -i inventory -K

install_k3s_agents:
	ansible-playbook ./automation/ansible/main.yml --extra-vars "install_docker=false confifgure_firewall=false install_k3s_server=false install_k3s_agents=true" -i inventory -K