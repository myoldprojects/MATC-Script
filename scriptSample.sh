#!/bin/bash
### this line is just a comment
#
# Shell Scripting Sample
#
# Note: chmod u+x this script file before you run (execute) it.
#
# use echo to write something to the screen
echo "Welcome all MATC Web Dev to Shell Scripting."
# define a variable and assign it with a value
superuser="root"
#echo "super user name is" $superuser

printf "Please enter your name ->"
# read the name for user
read username
# print user name out
printf 'Hello\t%s. We welcome you.\n' "$username"
# print an empty line
echo
# if statement, evaluate the entered name
if [ "$username" =  "$superuser" ]; then
  echo "Do you have THE power?"
  read gotpower
# use case statement to branch the path
  case $gotpower in
    [yY] | [yY][eE][sS])
# if the value is y or yes case insensitive
        echo "What is your power level [1-5]?"
        read powerlevel
        echo power: $powerlevel
          case $powerlevel in
                5)
# if power level is 5
                  echo Wow
                  ;;
                [314])
# if power level is 1, 3 or 4
                  echo that is good
                  ;&  # use ;& so it will fall thru
                [2])
# if power level is 1 or 2
                  echo not bad
                  ;;
          esac  # this is how you end the case statement
        ;;
     [nN] | [nN][oO])
# if the value is n or no case insensitive
        echo no power no go
        ;;
   esac
else
  echo "We couldn't find a matching user"
fi
