#!/bin/bash 
VERSION="1.0"

docker build -t darlon/jlab:${VERSION} .
docker tag darlon/jlab:${VERSION} darlon/jlab:latest

mkdir -p data
