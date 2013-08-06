#!/bin/sh 
bower update
cd bower_components/pure && bower update 
npm update 
grunt
cd ../../
rm -rf app/assets/stylesheets/*
cp -R bower_components/pure/build/* app/assets/stylesheets

