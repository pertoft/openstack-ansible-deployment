cd /opt/openstack-ansible/playbooks
ansible galera_container -m shell -a "mysql -h 127.0.0.1 -e 'show status like \"%wsrep_cluster_%\";'"

cd -
