#!/bin/bash

function addgitignore()
{
	local f=$(dirname $0)/../files/.gitignore
	if [ -e .gitignore ];then
		echo "Are you really want cp $f to here"
		read -p "y|n" c
		if [ "x${c}" == "xy" -o "x${c}" == "xY" -o "x${c}" == "x" ];then
			cp -v $f .
		fi
	else
		cp -v $f .
	fi
}

addgitignore
