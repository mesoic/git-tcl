install:
	cp git-clone /usr/local/sbin
	cp git-pull /usr/local/sbin
	cp git-push /usr/local/sbin
	touch git/.passwd
	cp -R git /usr/local/sbin
	nano /usr/local/sbin/git/.passwd

clean: 
	rm -rf /usr/local/sbin/git
	rm /usr/local/sbin/git-*
