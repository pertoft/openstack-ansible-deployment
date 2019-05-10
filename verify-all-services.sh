#!/bin/bash
set +x
echo openstack user list --domain default
openstack user list --domain default

echo openstack endpoint list
openstack endpoint list

echo openstack compute service list
openstack compute service list

echo openstack network agent list
openstack network agent list

echo openstack volume service list
openstack volume service list

echo openstack image list
openstack image list

echo openstack flavor list
openstack flavor list

echo openstack floating ip list
openstack floating ip list



