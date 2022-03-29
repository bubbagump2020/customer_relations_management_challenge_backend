#!/bin/bash

echo 'changing directories to vcl_challenge'

cd vcl_challenge

echo "running bundle install"

sudo bundle install

echo "killing any potential rails servers already running"

killall -9 rails

echo "starting the rails server"

rails s -p 3001