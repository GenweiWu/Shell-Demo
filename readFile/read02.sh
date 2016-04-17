
function read01()
{
	fileName=t2.txt
	cat $fileName | while read line
	do 
	 
	   echo $line 
	done
}

function read01a()
{
	fileName=t2.txt
	cat $fileName | while read line || [ -n "$line" ]
	do 
	 
	   echo $line 
	done
}

function read01b()
{
	fileName=t2.txt
	(cat $fileName;echo;) | while read line
	do 
	 
	   echo $line 
	done
}

read01

echo -----------
read01a

echo -----------
read01b

