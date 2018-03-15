 openstack image create --public --min-disk 3 --container-format bare \
--disk-format qcow2 --property architecture=x86_64 \
--property hw_disk_bus=virtio --property hw_vif_model=virtio \
--file /root/cirros-0.4.0-x86_64-disk.img \
"cirros-0.4.0-x86_64"
