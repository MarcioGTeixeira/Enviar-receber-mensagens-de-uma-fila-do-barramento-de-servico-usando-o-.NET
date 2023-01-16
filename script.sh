#!/bin/bash

echo "Create variables"
myLocation=brasilsouth
myNameSpaceName=az204svcbus$RANDOM

echo "Create Resource Group"
az group create --name az204-svcbus-rg --location $myLocation

echo "Create ServiceBus namespace"
az servicebus namespace create \
    --resource-group az204-svcbus-rg \
    --name $myNameSpaceName \
    --location $myLocation

echo "Create ServiceBus Queue"
az servicebus queue create --resource-group az204-svcbus-rg \
    --namespace-name $myNameSpaceName \
    --name az204-queue