#! /bin/bash

echo "Script to Encrypt and Decrypt a File"
echo "Please select mode : "

choice="Encrypt Decrypt"
select option in $choice
do
	if [ $REPLY = 1 ]
	then 
		echo "Please Enter The Filename You Want To Encrypt : " 
		read file
		gpg -c $file
		echo "File - $file  Has Been Encrypted"
	else 
		echo "Please Enter The Filename You Want To Decrypt : "
		read file
		gpg -d $file
		echo "File - $file Has Been Decrypted"
	fi
done
