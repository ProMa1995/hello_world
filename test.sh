#!/bin/bash
#编写一个shell脚本。
#脚本程序运行时，控制台输入四个正整数（p q r s）。
#判断数字和大小
#	如果四个数字的和大于320，就输出“优良”；
#	如果四个数字的和小于等于320并且大于240，就输出“及格”；
#	其它情况输出“未通过”。
#判断p和q大小
#	如果p>q，则求出p除以q的余数并输出“p mod q = ?(把计算的值代替问号)”，
#	否则求出q除以p的余数并输出“q mod p = ? (把计算的值代替问号)”。

#获取四个正整数
echo "Please enter four numbers(p,q,r,s):"

#从标准输入获取正整数
function get_number {
	while echo -n "$1:"
	do
		read num
		if [ "$num" -gt 0 ] 2>/dev/null ;then
			break
		else
			echo "error: $1 isn't a positive integer"
		fi 
	done
}

get_number p
p=$num

get_number q
q=$num

get_number r
r=$num

get_number s
s=$num

echo "----------"
#---------------------------

#比较大小，输出‘优良','及格’或'未通过'
sum=$[$p + $q + $r + $s]
#echo "sum = $sum"

if [ "$sum" -gt 320 ]
then
	echo "优良"
elif [ "$sum" -gt 240 ] && [ "$sum" -le 320 ]
then
	echo "及格"
else
	echo "未通过"
fi
#---------------------------

#比较大小，输出余数
if [ "$p" -gt "$q" ]
then
	echo "p mod q = $[$p % $q]"
else
	echo "q mod p = $[$q % $p]"
fi
#---------------------------
