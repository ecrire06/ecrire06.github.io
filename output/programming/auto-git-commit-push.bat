	:: Navigate to the directory you wish to push to GitHub
	::Change <path> as needed. Eg. C:\Users\pookie\Desktop\Writings
	cd "D:\ecrire06\ecrire06.github.io"

	::Initialize GitHub
	git init
	
	::Pull any external changes (maybe you deleted a file from your repo?)
	git pull
	
	::Add all files in the directory
	git add --all
	
	::Commit all changes with the message "auto push". 
	::Change as needed.
	git commit -m "%date% %time%"
	
	::Push all changes to GitHub 
	git push
	
	::Alert user to script completion.
	echo Complete.