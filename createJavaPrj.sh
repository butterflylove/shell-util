#!/bin/bash
curdir=$(pwd)
name=$1
if [ ! -n "$1" ] ;then
	echo "please input your project name! Example: sh createJavaPrj.sh demo"
	exit 0
fi
echo "ProjectName=$name"
newName=`echo "$name" | sed "s/-//g"`
mvn archetype:generate -DgroupId=destiny -DartifactId=$name -Dpackage=destiny.$newName -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false

