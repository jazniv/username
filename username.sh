#! /bin/bash
# username.sh
# Juliana Glodek
echo "Hello! Your username can only contain lower-case letters, digits, and the underscore character. Additionally, your username must start with a lower-case letter and contain 3-12 characters in total."
echo "Enter a username: "
read USERNAME
while echo "$USERNAME" | egrep -v "^[a-z][a-z0-9_]{2,11}$" > /dev/null 2>&1
do
	echo "You must enter a valid username - starting with a lower case letter, 3-12 characters, and only using lower case letters, digits, and underscore!!"
	echo "Enter a valid username: "
	read USERNAME
done
echo "Thank you"
