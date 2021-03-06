#!/bin/sh
# Prints the current version for a Node.js installation under the provided path
# Check if the argument is supplied
if [ $# -lt 1 ];
then
	exit 1;
fi
# Get the node version
NODE_VERSION=$($1/node -v)
# Remove the 'v' starting it
NODE_VERSION=${NODE_VERSION#?};
# Print the version
echo -n $NODE_VERSION;
