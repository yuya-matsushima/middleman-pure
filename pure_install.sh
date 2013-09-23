#!/bin/sh 
bower install
rm -rf bower_components
cd bower_components/pure && bower install 
npm install 
grunt
cd ../../
cp -R bower_components/pure/build/* app/assets/stylesheets

