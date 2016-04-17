
fileName=t3.txt

function read01()
{
	(cat $fileName;echo;) | while read line
	do 
	 
	   echo $line 
	done
}


function read01a()
{
	(cat $fileName;echo;) | while read -r line
	do 
	 
	   echo $line 
	done
}

read01

echo ---------------
read01a

