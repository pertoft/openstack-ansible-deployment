openstack server create --flavor cloudlab.default --image cirros-0.4.0-x86_64 \
  --nic net-id=05738386-2de7-4f2d-aeef-04d5cdff7eac --security-group c3c54795-ab2f-4939-9c36-2557028013ec \
  --key-name root-cloudsrv001 test-instance
