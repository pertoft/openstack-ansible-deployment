cd /opt/openstack-ansible/playbooks
#ansible neutron_server -e shell -a " systemctl stop neutron-server.service"
#ansible neutron_agent -e shell -a " systemctl stop neutron-dhcp-agent"
#ansible neutron_agent -e shell -a " systemctl stop neutron-l3-agent"
#ansible neutron_agent -e shell -a " systemctl stop neutron-metadata-agent"
#ansible nova_api_os_compute -e shell -a " systemctl stop nova-api-os-compute"
#ansible nova_console -e shell -a "systemctl stop nova-consoleauth"
#ansible nova_scheduler -e shell -a "systemctl stop nova-scheduler"
#ansible nova_conductor -e shell -a "systemctl stop nova-conductor"
#ansible nova_api_metadata -e shell -a "systemctl stop nova-api-metadata"
#ansible nova_console -e shell -a "systemctl stop nova-novncproxy"
#ansible nova_console -e shell -a "systemctl stop nova-spicehtml5proxy"

#ansible orchestration_all -e shell -a "systemctl stop heat-api.service"
#ansible orchestration_all -e shell -a "systemctl stop heat-api-cfn.service"
#ansible orchestration_all -e shell -a "systemctl stop heat-engine.service"

ansible magnum-infra_all -e shell -a "systemctl stop magnum-api.service"
ansible magnum-infra_all -e shell -a "systemctl stop magnum-conductor.service"


cd -
