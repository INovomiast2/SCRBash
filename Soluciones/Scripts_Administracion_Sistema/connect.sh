#!/usr/bin/expect

set host [lindex $argv 0]
set user [lindex $argv 1]
set password [lindex $argv 2]
set prompt [lindex $argv 3]
set dir [lindex $argv 4]

spawn ssh $user@$host

expect "password:"
send "$password\n";
expect "$prompt"
send "cd $dir\n"
expect "$prompt"
interact

#Script by: INovomiast