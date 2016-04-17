#单引号会忽略所有特殊字符
echo 'hello//word'
echo "hello//word"

#双引号不会忽略$,\,`，替他特殊字符忽略
echo '3\\4'
echo "3\\4"

name='zhangsan'
echo '$name'
echo "$name"

echo 'the date is: `date`'
echo "the date is: `date`"

#`命令替换是指shell能够将一个命令的标准输出插在一个命令行中
#$() 也可是实现同样的作用
echo this dir is:`pwd`
#注意不是${}
#echo this dir is:${pwd}
echo this dir is:$(pwd)


#\是转义符
echo '1\\2\$3'
echo "1\\2\$3"
