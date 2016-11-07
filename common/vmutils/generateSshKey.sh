#!/bin/bash

echo "Generating SSH key..."
ssh-keygen -q -N "" -f ~/.ssh/id_rsa
echo ""
echo "Go to https://github.com/settings/keys"
echo "and paste the key between the lines"
echo "========================================"
cat ~/.ssh/id_rsa.pub
echo "========================================"
xclip -sel clip < ~/.ssh/id_rsa.pub
sensible-browser https://github.com/settings/keys &

read -p "Press ENTER to exit..."


