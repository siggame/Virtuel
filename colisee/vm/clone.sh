#!/bin/bash

function cloneHTTPS {
	git clone git@github.com:russleyshaw/Colisee.git
}

function cloneSSH {
	git clone https://github.com/russleyshaw/Colisee.git
}

echo "Clone via HTTPS (Recommended) or SSH?"
select c in "HTTPS" "SSH"; do
	case $c in
		HTTPS ) cloneHTTPS; break;;
		SSH ) cloneSSH; break;;
	esac
done