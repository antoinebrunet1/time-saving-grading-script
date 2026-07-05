#!/bin/bash

mvn checkstyle:checkstyle > /dev/null 2> /dev/null 

echo $?

mvn clean compile > /dev/null 2> /dev/null 

echo $?

mvn clean test > /dev/null 2> /dev/null 

echo $?

mvn clean package > /dev/null 2> /dev/null 

echo $?

exit 0