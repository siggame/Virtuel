#!/bin/bash

echo "#### Which VM do you want to load?"
select c in "colisee" "compete" "game_dev"; do
	case $c in
		colisee ) cd colisee/vm; break;;
		compete ) cd compete/vm; break;;
        game_dev) cd game_dev/vm; break;;
	esac
done

if [ -d ".vagrant/" ]; then
    echo "#### Delete the existing VM?"
    select c in "yes" "no"; do
        case $c in
            yes ) vagrant destroy -f; rm -rf .vagrant; break;;
            no ) break;;
        esac
    done
fi

echo "#### Provisioning VM..."
vagrant up
echo "#### Guest ~/workspace dir shared with host $(pwd) dir"
echo "#### Type exit to exit the ssh session"
echo "#### Loading VM... 3"
sleep 1
echo "#### Loading VM... 2"
sleep 1
echo "#### Loading VM... 1"
sleep 1
vagrant ssh