cd /opt/openstack-ansible/playbooks

ansible neutron_server -e shell -a " systemctl restart neutron-server.service"
ansible neutron_agent -e shell -a " systemctl restart neutron-dhcp-agent"
ansible neutron_agent -e shell -a " systemctl restart neutron-l3-agent"
ansible neutron_agent -e shell -a " systemctl restart neutron-metadata-agent"

cd -
