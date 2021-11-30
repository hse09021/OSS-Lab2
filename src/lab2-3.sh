#!/bin/bash

height=`expr "scale=2; $2 / 100" | bc`
sq=`expr "scale=2; $height * $height" | bc`
BMI=`expr "scale=2; $1 / $sq" | bc`

if [ 1 -eq "$(echo "$BMI < 18.5" | bc)" ]
    then
       echo "저체중입니다."
elif [ 1 -eq "$(echo "$BMI >= 18.5" | bc)" ] && [ 1 -eq "$(echo "$BMI < 23" | bc)" ]
    then
        echo "정상체중입니다."
else
    echo "과체중입니다."
fi

exit 0