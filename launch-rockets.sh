#!/bin/bash

for mission in ` cat mission-name.txt`
do 
    create-launch-rocket $mission
done

