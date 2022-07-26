#!/bin/sh

# Configuring a bit the echo system :))
echo_parameter=
echo_e=echo $echo_parameter
BLUINV='\033[34;7m'
NC='\033[0m' # No Color

appname=$1
if [ -z $appname ];
then
  appname="Spacecraft_hello_world"
fi

envchosen=$2
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

$echo_e "${BLUINV}Running the APP: $appname${NC}"
$echo_e "${BLUINV}$envchosen${NC}"

env/bin/python3 tests/example_usage/${appname}.py