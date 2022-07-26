#!/bin/sh

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

# DEV, TEST, PROD
# By default DEV
envchosen=$1
if [ -z $envchosen ];
then
  envchosen="DEV"
fi

suffix_settings_env="dev"
if [ $envchosen = "TEST" ];
then
  suffix_settings_env="test"
fi
if [ $envchosen = "PROD" ];
then
  suffix_settings_env="prod"
fi

$echo_e "${GREINV}Deploying environment $envchosen ${NC}"
./run-devloc-set-env.sh $envchosen