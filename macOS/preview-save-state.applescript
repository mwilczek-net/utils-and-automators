#!/usr/bin/osascript

set textFile to "foo.sh"

set header to ("#!/bin/bash")
do shell script "echo  '" & quoted form of header & "' >  " & quoted form of textFile

do shell script "echo  \"function echo_file_names() {\" >>  " & quoted form of textFile
tell application ("Preview")
	repeat with d from 1 to (count of documents)
		set p to path of document d
		set f to ("echo '\"" & p & "\"'")
		do shell script "echo  " & quoted form of f & " >>  " & quoted form of textFile
	end repeat
end tell
do shell script "echo  \"}\" >>  " & quoted form of textFile


do shell script "echo  '' >>  " & quoted form of textFile
do shell script "echo  'echo_file_names | xargs open -a Preview' >>  " & quoted form of textFile
do shell script "echo  '' >>  " & quoted form of textFile

do shell script "chmod +x " & quoted form of textFile