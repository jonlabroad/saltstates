#!/bin/bash

set -x

echo "Running now..."

echo "/usr/bin/aws s3 sync s3://fantasyeplmatchtracker/bin /home/pi/"
/usr/bin/aws s3 sync s3://fantasyeplmatchtracker/bin /home/pi/
echo "Here"

echo "/usr/bin/java -cp /home/pi/FantasyEPLMonitor.jar lambda.AllProcessorLambda"
/usr/bin/java -Xms500M -cp /home/pi/FantasyEPLMonitor.jar lambda.AllProcessorLambda
echo "Done"