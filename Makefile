install_docker:
	ansible-playbook -i inventory  ./automation/ansible/main.yml -K     


# --extra-vars "arg1=demo1 arg2=demo2"