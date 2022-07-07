#!/bin/sh
# Prints the current version for a OpenJDK installation under the provided path
# Check if the argument was supplied
if [ $# -lt 1 ];
then
	exit 1;
fi
# Geth the OpenJDK version
OPENJDK_VERSION=$($1/java --version | head -n 1 | awk '{print $2}');
echo -n $OPENJDK_VERSION;
