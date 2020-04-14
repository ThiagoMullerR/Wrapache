#! /bin/bash
		for ((;;))
		do
		clear
echo "~~~~~~~~~~~~~~~ TOOL MADE BY THIAGO ~~~~~~~~~~~~~~~"
echo " Welcome to Wrapache! "
echo " This tool allow writing in files using Apache "
echo
echo " Give permissions: -rwxrw-r-- "
echo " and 'user:group': www-data:www-data "
echo "***************************************************"
echo
	echo " Enter the file address: (ex: /var/www/html/file.txt) "
echo
		read address
echo
	echo " Processing... "
echo
		sudo chmod 0777 $address
		sudo chown www-data:www-data  $address
		sudo chmod 0744 $address
		sudo usermod -a -G www-data $USER
		sudo chmod 0764 $address
echo
	echo " Done! "
echo
		ls -al $address
echo
	echo " Do you want to repeat the process? (yes/no)"
echo
		read answer
		if [ "$answer" = "yes" ]
		then
		continue
		else
		clear
		break
		fi
		done

