Vagrant Linux Container Trusty Cloud
====================================

Installation
-----------

* Ensure VirtualBox version 4.3.12 > is installed.
* Ensure Vgrant version 1.6.3 > is installed.
* Ensure Puppet version 3 > is installed.
* Ensure Vagrant proxy plugin is installed.
 
```ruby
vagrant plugin install vagrant-proxyconf
```

* Add 'trusty-orig' or 'centos65' box e.g.

```ruby
vagrant box add 'trusty-orig' trusty-server-cloudimg-amd64-vagrant-disk1.box
```

or

```ruby
vagrant box add centos65-lxc-puppet https://dl.dropboxusercontent.com/s/x1085661891dhkz/lxc-centos6.5-2013-12-02.box
```

Startup
------

```ruby
vagrant up
```

```ruby
vagrant provision
```

```ruby
vagrant [[ssh]]
```



