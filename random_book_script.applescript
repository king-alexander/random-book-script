tell application "Evernote"
	set note_list to find notes "notebook:\"Book Notes\""
	set n to notebook "Book Notes"
	set nb to some note of n
	get properties of nb
	set t to get title of nb
	set body to get HTML content of nb
end tell


tell application "Microsoft Outlook"
	set newMessage to make new outgoing message with properties {subject:t, content:body}
	make new recipient at newMessage with properties {email address:{name:"Alexander King", address:"alexanderking@gatech.edu"}}
	send newMessage
end tell