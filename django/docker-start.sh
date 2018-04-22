#!/bin/bash
#
cd mysql                                                                                                            
echo "start mysql----------------"
./start.sh

cd ../redis  
echo "start redis---------------------"
./start.sh

cd ../web 
echo "start web ---------------------"
./start.sh

cd ../nginx
echo "start nginx-------------------"
./start.sh

