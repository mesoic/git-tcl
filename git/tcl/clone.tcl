#! /usr/bin/expect
set timeout -1
set GIT_PASSWD [lindex $argv 0]

spawn git clone
expect {
	"passphrase" {
		send "$GIT_PASSWD\r"
		interact
	}
}
