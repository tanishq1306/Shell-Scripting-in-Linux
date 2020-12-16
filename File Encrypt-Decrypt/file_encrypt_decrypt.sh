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
		: '
			GNU Privacy Guard (GPG, also GnuPG) is free encryption software
			that is compliant with the OpenPGP (RFC4880) standard. ... 
			To use GPG, you create a unique encryption key, and 
			then use that key to encrypt and decrypt your files.
		'
		gpg -c $file
		echo "File - $file  Has Been Encrypted"
	else 
		echo "Please Enter The Filename You Want To Decrypt : "
		read file
		gpg -d $file
		echo "File - $file Has Been Decrypted"
	fi
done
