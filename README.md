Tournament Results
=========

Projects that uses Vagrant to set up a development environment in VirtualBox, connects to a PostgreSQL database and makes queries to implement of a Swiss-system tournament.
Files: 
- tournament.sql, script to generate tables and views in the database.
- tournament.py, manages the connection and queries to the database.
- tournament_test.py, test file to verify everything works.

###Setting up the environment:

- Download [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- Download [Vagrant](https://www.vagrantup.com/downloads)
- Use git to fetch the VM configuration 
  `git clone http://github.com/udacity/fullstack-nanodegree-vm fullstack`
- Using the terminal, change directory to fullstack/vagrant (cd fullstack/vagrant), then type `vagrant up` to launch your virtual machine

![](http://lh3.ggpht.com/cHwxMzoLtNtPDXEA1FDwiXt-FWDBTjickIHDMXpxNBaOMVWCFcRWdz7AFiN6gUZb_6zbbV-hNn-_QOCq6w=s0#w=684&h=480)

- Once it is up and running, type `vagrant ssh` to log into it.
- Type `exit` to log out your VM.
- Type `vagrant halt` to turn off your VM.

###How to test the project:

- Login into your VM.
- Go to Vagrant folder `cd \vagrant`
- Create the database schema typing `psql`, then type `CREATE DATABASE tournament;` command
- Type `python tournament_test.py`

###How to access the PostgreSQL:

- In your VM, type `psql`


## Author

Paul Chavarria, @pjchavarria
