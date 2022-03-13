#!/bin/bash

IMAGE_NAME=general_robot

if [ $1 = "build" ]
then
    docker build -t $IMAGE_NAME .
fi

if [ $1 = "shell" ]
then
    docker run -it $IMAGE_NAME /bin/bash
fi

if [ $1 = "run" ]
then
    docker run -it $IMAGE_NAME ./run_robot.sh
fi
