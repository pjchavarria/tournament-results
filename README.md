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

###How to create the initial database:

- Login into your VM.
- Go to Vagrant folder `cd \vagrant`
- In your VM, type `psql` to access PostgreSQL console.
- Create the database schema typing `CREATE DATABASE tournament;`
- Finally use the command `\i tournament.sql` to import the tables and views into psql.

###How to test the project:

- Type `python tournament_test.py`


## Author

Paul Chavarria, @pjchavarria
