#! /usr/bin/osascript

on run argv
	set str to item 2 of argv
	set create_date to date str
	tell application "Evernote"
		create note with text item 4 of argv title item 3 of argv notebook item 1 of argv created create_date
	end tell
end run
