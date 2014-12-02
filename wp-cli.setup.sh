#!/bin/sh


#
# Download WP-CLI.
#
if [ ! -d "~/usr/local/bin" ]; then
	mkdir -p ~/usr/local/bin
fi
cd ~/usr/local/bin
wget -nc --no-check-certificate https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -O wp
chmod +x wp


#
# Set path.
#
cd ~

# bash 
if expr $SHELL : ".*bash" > /dev/null; then

	wget -nc --no-check-certificate https://github.com/wp-cli/wp-cli/raw/master/utils/wp-completion.bash

	if [ -f ".bash_profile" ]; then
		chmod +w .bash_profile
	fi

	cat >> .bash_profile <<-"EOT"
	
	PATH=$PATH:~/usr/local/bin
	source ~/wp-completion.bash
	
	EOT
	message="source .bash_profile"

# csh
elif expr $SHELL : ".*csh" > /dev/null; then

	if [ -f ".cshrc" ]; then
		chmod +w ~/.cshrc
	fi

	cat >> .cshrc <<-"EOT"
	
	set path = ($path ~/usr/local/bin)
	
	EOT
	message="source .cshrc"

# Other shells
else
	cat <<-EOT
	*
	* Unfortunately, installation has failed.
	*
	EOT
	exit
fi


#
# Report the result.
#
cat <<EOT
*
* Installation has completed successfully.
* Please enter the following command. Have fun :)
*
* $message
*
EOT
exit
