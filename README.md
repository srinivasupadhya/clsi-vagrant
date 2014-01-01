clsi-vagrant
============

create clsi instance using vagrant

Steps:

clone repo
```
  $cd clsi-vagrant
```
edit data/setup.sh - change localhost:3319 to ip:port of your choice
```
  $vagrant up
```

-- in VM --

login as vagrant-vagrant
```
  $sudo su - root
  $cd /vagrant_data
  $./setup.sh
```
