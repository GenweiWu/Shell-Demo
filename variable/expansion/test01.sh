function test1()
{
	line=1aaa2
	echo "${line}"
	echo "${line/a/b}"
	echo "${line//a/b}"
	echo "${line//a/}"
}

function test1a(){
	line=123a456a789
    echo "$line"
	#说明/是最长匹配的
    echo "${line/*a/}"
    echo "${line//*a/}"
    echo "${line/a*/}"
    echo "${line//a*/}"
}

function test1b(){
	line=0ab0
	echo "${line}"
	echo "${line/a*/-}"
	echo "${line/#a*/-}"

	echo "${line/*b/-}"
	echo "${line/%*b/-}"
}

function test1c(){
	line="1/2\3&4"
	echo "${line}"
	#替换/
	echo "${line/\//a}"
	#替换\
	echo "${line/\\/a}"
	#替换&
	echo "${line/&/a}"
}

function test2()
{
	line=123a456a789
	echo "${line}"
	echo "${line#*a}"
	echo "${line##*a}"

	#echo "${line#a*}"
	#echo "${line##a*}"
}

function test3()
{
	line=123a456a789
	echo "${line}"
	echo "${line#*a}"
	echo "${line##*a}"

	#echo "${line#a*}"
	#echo "${line##a*}"

}

#test1

#echo -----------------;test1a

#echo -----------------;test1b

echo -----------------;test1c

#echo -----------------;test2

#echo -----------------;test3


