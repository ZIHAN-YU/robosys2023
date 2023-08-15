#!/bin/bash 
#SPDX-FileCopyrightText: 2023 Yu Zihan
#SPDX-License-Identifier: BSD-3-Clause

ng(){
	echo NG at Line $1
	res=1
}
res=0

###### I/O TEST #######
out=$(seq 5 | ./plus.py)
[ "${out}" = 15 ] || ng $LINENO


###### STRANGE INPUT #######
out=$(echo あ | ./plus.py)
[ "$?" = 1 ]      || ng $LINENO
[ "${out}" = '' ] || ng $LINENO

out=$(echo  | ./plus.py)
[ "$?" = 1 ]      || ng $LINENO
[ "$res" = 0 ] && echo OK

exit $res
