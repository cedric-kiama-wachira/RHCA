#!/bin/bash

mission_name = $1

rocket-add $mission_name

rocket-start-power $mission_name
rocket-internal-power $mission_name
rocket-start-sequence $mission_name
rocket-start-engine $mission_name
rocket-lift-off $mission_name

rocket_status= $(rocket-status $mission_name)

if [ $rocket_status = "Failed" ]
then 
    rocket-debug $mission_name
elif [ $rocket_status = "Success" ]
then 
    echo "This is Successful"
fi

else 
    echo "The state is neither successful or failed"
fi
