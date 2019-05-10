#!/bin/bash
cd /opt/openstack-ansible/playbooks

echo "--------- mySQL Cluster Check ----------------------------------------------------------------------------------------------------"
 ansible galera_container -m shell -a "mysql -h 127.0.0.1 -e 'show status like \"%wsrep_cluster_%\";'"

echo "--------- RabbitMQ Cluster Check ------------------------------------------------------------------------------------------------"
echo "--------- Checks if any RabbitMQ nodes are in partition state  ------------------------------------------------------------------"
ansible rabbitmq -m shell -a "rabbitmqctl cluster_status" 

echo "--------- haproxy Check ----------------------------------------------------------------------------------------------------------"

ansible haproxy -m shell -a "echo 'show stat' | socat stdio unix-connect:/var/run/haproxy.stat | grep -i down | grep -v '^#'" :w#| grep -i down

echo "--------- System and openstack systemd service Check -----------------------------------------------------------------------------"
ansible infra-all -m shell -a "systemctl list-units --type=service | grep failed"

echo "--------- Nova Service Check -----------------------------------------------------------------------------------------------------"
nova service-list | grep down | sort

echo "--------- Neutron agent status Check ---------------------------------------------------------------------------------------------"

neutron agent-list | grep -v ':-)' | sort

echo "--------- Cinder service agent status Check --------------------------------------------------------------------------------------"

cinder service-list | grep down


echo "--------- Looking for down interfaces in eth0-5 (Linux bond 0) on OS Controllers -------------------------------------------------------------"

#ansible 'controllers' -m shell -a "ip a | grep 'eth[0-5]' | grep 'DOWN' | egrep 'success|DOWN'" -i inventory.yaml


echo "--------- Looking for down interfaces in eth0-5 (Linux bond 0) on Hypervisors -------------------------------------------------------------"

#ansible 'hypervisors' -m shell -a "ip a | grep 'eth[0-5]' | grep 'DOWN' | egrep 'success|DOWN'" -i inventory.yaml

echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++ System checks completed +++++++++++++++++++++++++++++++++++++++++++++++++++++"



cd -


