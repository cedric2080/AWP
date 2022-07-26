#!/bin/sh
clear

envchosen=$1
if [ -z $envchosen ];
then
  envchosen="DEV"
fi

# Configuring a bit the echo system :))
echo_parameter=
echo_e=echo $echo_parameter
# printf "I ${RED}love${NC} Stack Overflow\n" # Now we know where I picked this color definition command :D
PUR='\033[0;35m'
BLU='\033[0;34m'
GRE='\033[0;32m'
RED='\033[0;31m'
REDINVBLINK='\033[31;5;7m'
REDINV='\033[31;7m'
GREINV='\033[32;7m'
NC='\033[0m' # No Color

$echo_e "${REDINV}Some actions may require that the current user is part of sudoers${NC}"
$echo_e "${REDINV}Your password may then be asked in command-line${NC}"
$echo_e "${REDINV}Press Control+C to abort${NC}"
$echo_e "${REDINV}Otherwise, press enter for example ...${NC}"
read wait_for_it

./run-devloc-deploy.sh $envchosen

./run-devloc-app.sh Spacecraft_hello_world $envchosen