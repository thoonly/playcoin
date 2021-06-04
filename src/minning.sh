# Script to generate a new block every minute

# Put this script at the root of your unpacked folder

#!/bin/bash

echo "Generating a block every minute. Press [CTRL+C] to stop.."

address=`./litecoin-cli getnewaddress`

while :

do

        echo "Generate a new block `date '+%d/%m/%Y %H:%M:%S'`"

        ./litecoin-cli generatetoaddress 1 $address

        sleep 60

done

