Provisioning
============

This Vagrant box did not come with puppet installed (as advertised!) and hence the
provision step will fail.

Workaround
---------

```ruby
vagrant up
```

```ruby
vagrant ssh
```

```ruby
sudo yum install puppet
```

```ruby
exit
```

```ruby
vagrant provision
```
