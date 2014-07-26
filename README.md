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

* Add 'trusty-orig' box e.g.

```ruby
vagrant box add 'trusty-orig' trusty-server-cloudimg-amd64-vagrant-disk1.box
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
vagrant ssh
```



