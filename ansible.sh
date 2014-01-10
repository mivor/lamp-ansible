#! /bin/bash
vssh() {
    identity=$(vagrant ssh-config | grep IdentityFile  | awk '{print $2}')
    port=$(vagrant ssh-config | grep Port | awk '{print $2}')
    ssh -t vagrant@127.0.0.1 -p $port -i $identity $@
}

vans() {
    local prov_dir='/vagrant/provision'
    vssh ansible-playbook -i $prov_dir/inventory/$1 $prov_dir/$2
}

vans $@
