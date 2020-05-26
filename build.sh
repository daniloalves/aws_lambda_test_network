#!/bin/bash
#set -x 

help(){
    echo ""
    echo "* You must install module Requests, optionally boto3."
    echo "* Using virtualenv:"
    echo "virtualenv -p python3 env"
    echo "source env/bin/activate"
    echo "pip install requests -t ./"
    echo "pip install boto3 -t ./"
    echo ""
    echo "Or, only pip install with -t ./"
    echo "And run build.sh again."
    echo ""
}

if [ -d "requests" ]; then
    zip -r aws_lambda_test_network.zip . -x "env/*" 
else
    help
fi
