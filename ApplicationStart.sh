#!/bin/bash

echo "Unzipping the s3 object deployed to the instance"

cd ~

unzip vcl_challenge.zip

echo "Changing directories to the now unzipped folder"

cd vcl_challenge

echo "running bundle install"

sudo bundle install

echo "killing any potential rails servers already running"

killall -9 rails

echo "starting the rails server"

rails s -p 3001