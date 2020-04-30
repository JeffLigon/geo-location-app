#!/bin/bash
echo "Looking up attacker's IP address."
echo "What is the attacker's IP address?"
read ip
whois $ip
curl "https://tools.keycdn.com/geo.json?host=$ip"
echo
