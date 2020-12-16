#! /bin/bash

#Simple Password Generator 
echo "Please Enter Length Of The Password: "
read PASS_LENGTH

echo "Select One Of The 5 Generated Passwords: "
for p in $(seq 1 5);
do
	#rand will generate the password
	#cut from first col to the pass_length
	openssl rand -base64 48 | cut -c1-$PASS_LENGTH

done
