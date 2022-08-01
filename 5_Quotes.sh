#!/bin/bash

##### Quotes Explanation of "&" and '&'

SKILL="DevOps"
echo $SKILL

LOVE='Lust'
echo $LOVE

echo "Love is just alone $LOVE"
echo 'Love is just alone $LOVE'

echo 'I'm a best trained $SKILL Engineer'
echo "I'm a best trained $SKILL Engineer"


### Here these $0 has lost value meaning and from $1 - $9 has we assign values

#echo "Value of 0 is "
#echo $0

#echo "Value of 1"
#echo $1

#echo "Value of 2"
#echo $2

#echo "Value of 3"
#echo $3

####################################################################

## Now we are go to find if we originally a dollar amount ##
VIRUS="COVID19"
echo "Due to $VIRUS virus the company has lost $9 million"
## ANS: Due to COVID19 virus the company has lost million
echo 'Due to $VIRUS virus the company has lost $9 million'
## ANS: Due to $VIRUS virus the company has lost $9 million
## But we need to use (\)
## echo " Due to $VIRUS  virus the company has lost \$9 million"
## ANS: Due to COVID19 virus the company has lost $9 million

