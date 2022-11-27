#! /usr/bin/expect
set timeout -1
set GIT_PASSWD [lindex $argv 0]
set GIT_BRANCH [lindex $argv 1]

spawn git push --force
expect {
	"passphrase" {
		send "$GIT_PASSWD\r"
		interact
	}

	"fatal: The current branch $GIT_BRANCH has no upstream branch" {
		spawn git push --set-upstream origin $GIT_BRANCH
		expect {
		        "passphrase" {
		                send "$GIT_PASSWD\r"
		                interact 
		        }
		}
	}
}
