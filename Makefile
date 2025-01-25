firewall_config:
	ansible-playbook -i inventory  ./automation/ansible/main.yml -K --extra-vars "install_docker=false confifgure_firewall=false"

install_docker:
	ansible-playbook -i inventory  ./automation/ansible/main.yml -K --extra-vars "install_docker=true confifgure_firewall=false"

install_k3s_server:
	ansible-playbook ./automation/ansible/main.yml --extra-vars "install_docker=false confifgure_firewall=false install_k3s_server=true" -i inventory -K
