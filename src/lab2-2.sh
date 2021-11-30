#!/bin/bash

if [ $2 = "+" ]
    then
        ans=`expr $1 + $3`
else
    ans=`expr $1 - $3`
fi

echo $ans

exit 0