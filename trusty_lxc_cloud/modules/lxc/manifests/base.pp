class lxc::base{
  $home_dir = '/home/vagrant'

  package{ ['lxc', 'tree', 'iptables-persistent']: ensure => installed } ->

  file{ '/etc/lxc/lxc-usernet':
    content => 'vagrant veth lxcbr0 16'
  } ->

  file{ ["${home_dir}/.config", "${home_dir}/.config/lxc", "${home_dir}/.local", "${home_dir}/.local/share", "${home_dir}/.local/share/lxc"]:
    ensure => directory,
    owner  => 'vagrant',
    group  => 'vagrant'
  } ->

  file{ "${home_dir}/.config/lxc/default.conf":
    source => 'puppet:///modules/lxc/default.conf',
    owner  => 'vagrant',
    group  => 'vagrant'
  }

  #sudo iptables -t nat -A PREROUTING  -i eth1  -p tcp --dport 80 -j DNAT --to-destination 10.0.3.235:80
}
