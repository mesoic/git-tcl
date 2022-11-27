### Git Automation 

To install, first make sure that `/usr/local/sbin/` is in your `$PATH` environment, and if not add the following to your `~/.bash_profile`
```
PATH=$PATH:/usr/local/sbin
```

Then clone the repo and run the Makefile. Note that the install script will prompt you for your git password at the end of the installation. 
```
git clone https://github.com/mesoic/git-tcl.git
sudo make install
```

Then via the command line you will have
```
git-clone
git-pull
git-push
```

To remove the automation run the clean target
```
sudo make clean
```
