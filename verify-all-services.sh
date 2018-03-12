root@cloudbc1bl01-utility-container-ed3d41af:~# cat verify-all.sh
#!/bin/bash
set +x
openstack user list --domain default
openstack endpoint list
openstack compute service list
openstack network agent list
openstack volume service list
openstack image list
openstack flavor list
openstack floating ip list
