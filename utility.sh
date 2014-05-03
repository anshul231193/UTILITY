#!/bin/bash

#ANSHUL GUPTA 
#ROLL NO. Y12UC037

if [ !-d"$HOME/collect" ]
	then
	mkdir "$HOME/collect"
else
echo "Usage:$0 utility.sh"
fi
if [ !-d"$HOME/SHELL" ]
	then
	mkdir "$HOME/SHELL"
else
echo "Usage:$0 utility.sh"
fi


if [ !-d"$HOME/lib" ]
	then
	mkdir "$HOME/lib"
else
echo "Usage:$0 utility.sh"
fi
if [ !-d"$HOME/src" ]
	then
	mkdir "$HOME/src"
else
echo "Usage:$0 utility.sh"
fi
if [ !-d"$HOME/inc" ]
	then
	mkdir "$HOME/inc"
else
echo "Usage:$0 utility.sh"
fi
if [ !-d"$HOME/bin" ]
	then
	mkdir "$HOME/bin"
else
echo "Usage:$0 utility.sh"
fi

if [ -f"$HOME/collect/*.exe" ] 
	then
	echo -n "press y to send .exe files to another directory or n for default directory(bin) : "
	TMOUT=15
	read x
	SECONDS=0
	if [ "$x" == n ]
		then
		mv collect/*.exe bin
		echo "the .exe files has been sent to default(bin) directories"
		echo -e "The .exe file has been transferred from $PATH to $PATH/bin" >>organise.log
	elif [ "$x" == y ]
		then
		echo "The directory SHELL has been made you want to store your .exe files in."
		mv collect/*.exe SHELL
		echo -e "The .exe file has been transferred from $PATH to $PATH/assignment" >>organise.log
	fi
	if [ -z"$x" ]
		then
		mv collect/*.exe bin 
		echo "the .exe files has been sent to default(bin) directories"
		echo -e "The .exe file has been transferred from $PATH to $PATH/bin" >>organise.log
	fi
	echo "EXECUTION TIME : $SECONDS"	
		
fi


if [ -f"$HOME/collect/*.lib" ] 
	then
	echo -n "press y to send .lib files to another directory or n for default directory,i.e lib - "
	
	TMOUT=15
	read x
	SECONDS=0
	if [ "$x" == n ]
		then
		mv collect/*.lib lib
		echo -e "The .lib file has been transferred from $PATH to $PATH/lib" >>organise.log
		echo "the files has been sent to default,i.e lib directories"	
	elif [ "$x" == y ]				
		then		
		echo "The directory SHELL has been made you want to store your .lib files in."
		mv collect/*.lib SHELL
		echo -e "The .exe file has been transferred from $PATH to $PATH/assignment" >>organise.log
	fi
	echo "the files has been sent to default,i.e lib directories"
	if [ -z"$x" ]
		then
		mv collect/*.lib lib
		echo -e "The .exe file has been transferred from $PATH to $PATH/bin" >>organise.log
		echo "the files has been sent to default,i.e lib directories"
	fi	
	echo "EXECUTION TIME:$SECONDS"

fi

if [ -f"$HOME/collect/*.c" ] || [ -f"$HOME/collect/*.cc" ] || [ -f"$HOME/collect/*.cpp" ] || [ -f"$HOME/collect/*.cxx" ]
	then
	echo -n "press y to send src files to another directory or n for default directory,i.e. src - "
	
	TMOUT=15
	read x
	SECONDS=0
	if [ "$x" == n ]
		then
		mv collect/*.c src
		mv collect/*.cc src
		mv collect/*.cpp src
		mv collect/*.cxx src
		echo -e "The .c,.cc,.cpp,.cxx file has been transferred from $PATH to $PATH/src" >>organise.log
		echo "the files has been sent to default,i.e. src directory"	
		
	elif [ "$x" == y ]
		then						
		echo "The directory SHELL has been made you want to store your .c,.cc,.cpp,.cxx files in."
		mv collect/*.c SHELL
		mv collect/*.cc SHELL
		mv collect/*.cpp SHELL
		mv collect/*.cxx SHELL
		echo -e "The .c,.cc,.cpp,.cxx file has been transferred from $PATH to $PATH/assignment" >>organise.log
	fi	
	if [ -z"$x" ]
		then
		mv collect/*.c src
		mv collect/*.cc src
		mv collect/*.cpp src
		mv collect/*.cxx src
		echo -e "The .c,.cc,.cpp,.cxx file has been transferred from $PATH to $PATH/src" >>organise.log
		echo "the files has been sent to default,i.e. src directory"	
	
	fi
	echo "EXECUTION TIME:$SECONDS"
fi

if [ -f"$HOME/collect/*.h" ] || [ -f"$HOME/collect/*.hxx" ]
	then
	echo -n "press y to send inc files to another directory or n for default directory,i.e inc- "
	TMOUT=15
	read x
	SECONDS=0
	if [ "$x" == n ]
		then
		mv collect/*.h inc
		mv collect/*.hxx inc
		echo -e "The .h,.hxx file has been transferred from $PATH to $PATH/inc" >>organise.log
		echo "the files has been sent to default,i.e. inc  directories"
		
	elif [ "$x" == y ]
		then					
		echo "The directory SHELL has been made you want to store your .lib files "
		mv collect/*.h SHELL
		mv collect/*.hxx SHELL
		echo -e "The .h,.hxx file has been transferred from $PATH to $PATH/assignment" >>organise.log
	fi
	if [ -z"$x" ]
		then
		mv collect/*.h inc
		mv collect/*.hxx inc
		echo -e "The .h,.hxx file has been transferred from $PATH to $PATH/inc" >>organise.log
		echo "the files has been sent to default,i.e. inc  directories"
	fi
	echo "EXECUTION TIME:$SECONDS"
fi	






































