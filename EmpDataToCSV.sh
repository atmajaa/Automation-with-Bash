#!/bin/bash
read -p "Enter name - " name
read -p "Enter employee id - " id
read -p "Enter department - " dept
read -p "Enter gender - " gender
INFO=$name,$id,$dept,$gender
echo $INFO >> employee.csv
echo "Details added sucessfully!"