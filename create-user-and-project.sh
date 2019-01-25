#!/bin/bash
. /root/openrc

if [ -z "$1" ]; then
  echo "Missing username argument"
  exit 1
fi

PASSWORD=`openssl rand -base64 32`

printf "Welcome to Telenor Cloudlab!\n\n You can access the lab here: https://horizon.cloudlab.telenor.dk (from a jumphost) \n\n Your personal password is: $PASSWORD \n\n Best regards \n\n The Could lab team" | mail -s "Telenor Cloudlab" "$1@telenor.dk"


openstack project create --description "$1 personal project" $1 --domain default
openstack user create --email $1@telenor.dk --password $PASSWORD $1 
openstack role add --user $1 --project $1 technology


