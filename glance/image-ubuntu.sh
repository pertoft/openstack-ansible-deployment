 openstack image create --public --min-disk 3 --container-format bare \
--disk-format qcow2 --property architecture=x86_64 \
--property hw_disk_bus=virtio --property hw_vif_model=virtio \
--file xenial-server-cloudimg-amd64.img \
"xenial-server-cloudimg-amd64"
