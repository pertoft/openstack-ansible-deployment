#!/bin/bash

. /root/openrc

cd /opt/openstack-ansible/playbooks



echo "--------- haproxy Check ----------------------------------------------------------------------------------------------------------"

ansible haproxy -m shell -a "echo 'show stat' | socat stdio unix-connect:/var/run/haproxy.stat | grep -i down | grep -v '^#'" | grep -i down


cd -


