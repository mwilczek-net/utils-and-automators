#!/usr/bin/osascript

# Script requires ctrl+option+command+8 keyborard short cut.
# By default this short cut inverts colors.
tell application "System Events" to repeat 2 times
	key code 28 using {command down, control down, option down} 
	delay 0
end repeat