#!/bin/sh
# To be made redundant once I have time to get on the Debian packaging
# horse.
#
# NOTE: For uninstallation, this is simple enough to just reverse for
# the time being.

if [ "$EUID" -ne 0 ]
then
	echo "Root required."
	exit 1
fi

# No need to resolve symlinks, run from PATH, etc.
SRC_PATH=$(cd "$(dirname $0)"; pwd)

install_cpt () {
	relpath=$1
	cp -p $SRC_PATH/$relpath /$relpath \
		&& echo "Installed /$relpath" \
		|| echo "Failed to install /$relpath"
}

install () {
	install_cpt etc/init.d/vollog 
	install_cpt etc/cron.daily/vollog
}

install

insserv vollog
update-rc.d vollog defaults
