#!/bin/bash
ADDRESS=$1

# Start
electrad -conf=/root/.electra/Electra.conf
sleep 10

# Print setup
echo "ELECTRA_ADDRESS=$ADDRESS"

# Import the address
electra-cli importaddress $ADDRESS

# Generate enough block to pass the maturation time
electra generatetoaddress 101 $ADDRESS

# Simulate mining
while :
do
    electra-cli generatetoaddress 1 $ADDRESS
    sleep 10
done