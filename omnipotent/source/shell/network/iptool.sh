#!/bin/bash

function getIpLocation()
{
	location=`curl "https://sp0.baidu.com/8aQDcjqpAAV3otqbppnN2DJv/api.php?query=$1&co=&resource_id=6006&t=1461748368238&ie=utf8&oe=gbk&cb=op_aladdin_callback&format=json&tn=baidu&cb=jQuery110204691415576046676_1461748330356&_=1461748330404"  -s | iconv -f gbk -t utf8 |awk -F "\"location\":"  '{print $2}' |awk -F "," '{print $1}'`
	echo ${location}
}

until [ $# -eq 0 ]
do
result=$(getIpLocation $1)
echo $1 $result
shift
done
