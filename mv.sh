#!/bin/bash
#用于mv任何后缀格式的命名
EXIT=67

case $# in
0|1)
    echo "Usage: `basename $0`" old.xxx new.xxx
    exit $EXIT
;;
esac

for filename in *.$1
do
    mv $filename ${filename%$1}$2
done

exit 0

