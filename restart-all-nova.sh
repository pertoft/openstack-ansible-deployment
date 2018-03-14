cd /opt/openstack-ansible/playbooks

ansible nova_api_os_compute -e shell -a " systemctl restart nova-api-os-compute"
ansible nova_console -e shell -a "systemctl restart nova-consoleauth"
ansible nova_scheduler -e shell -a "systemctl restart nova-scheduler"
ansible nova_conductor -e shell -a "systemctl restart nova-conductor"
ansible nova_api_metadata -e shell -a "systemctl restart nova-api-metadata"
ansible nova_console -e shell -a "systemctl restart nova-novncproxy"
ansible nova_console -e shell -a "systemctl restart nova-spicehtml5proxy"

cd -
