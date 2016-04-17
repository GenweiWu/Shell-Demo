
function sed01()
{
	sed -i "s/a/8/" t1.txt
}

function init(){
	local fName=$1
    echo -e "a\nb\nc" > $fName

}

function sed02(){
	fileName=t2.txt
	
	
	### a->1/2
	
	#sed -i "s/a///" $fileName
	#sed: -e expression #1, char 6: unknown option to `s'
	sed -i "s/a/\//" $fileName

	### b->1\2
	
	#sed -i "s/b/\/" $fileName
	#sed: -e expression #1, char 6: unterminated `s' command
	sed -i "s/b/\\\\/" $fileName
	
	
	### c->1&2
	
	#sed -i "s/c/1&2/" $fileName
	# &会替换匹配的内容，1c2
	sed -i "s/c/1\&2/" $fileName
}

function sed03(){
     fileName=t2.txt

     local t1='\/'
     local t2='\\'
    #sed 命令中的&表示匹配的对象本身
     local t3='\&'


     sed -i "s/a/${t1}/" $fileName
     sed -i "s/b/${t2}/" $fileName
     sed -i "s/c/${t3}/" $fileName

}

function sed04(){
     fileName=t3.txt

     echo 'a' > $fileName

     local t1='1/2\3&c'
     #要先转换\，否则转换/形成的\会又被转义一遍
     # \ --> \\
     t1="${t1/\\/\\\\}"
     # / --> \/
     t1="${t1/\//\\/}"
     # & --> \&
     t1="${t1/&/\\&}"

     # a --> 1/2\3&4
     sed -i "s/a/${t1}/" $fileName

}

##init t2.txt

#sed02

#sed03

sed04