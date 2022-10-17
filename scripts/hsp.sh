#!/usr/bin/expect -f

set timeout -1

set JANUS_PASS [exec security find-generic-password -s Janus -w]

spawn hsenv prod

expect "Janus password for nbelisle: "

send -- "$JANUS_PASS\r"

expect "Two-factor authentication required.\r"

send -- "\r"

expect eof