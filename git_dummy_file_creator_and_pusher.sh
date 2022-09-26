#todo take this as an argument from command line
DUMMY_FILE_NAME_PREFIX="test_file_name_"
#Assigning stdout to a variable <VAR>=$(<COMMANDS..>) 
LAST_DUMMY_FILE=$(ls | grep $DUMMY_FILE_NAME_PREFIX | tail -n 1)


if [ -z "$LAST_DUMMY_FILE" ]
then
      echo "\$LAST_DUMMY_FILE is empty. It will be initiliazed";
      POTENTIAL_DUMMY_FILE_NAME="test_file_name_1"
else
      echo "\$LAST_DUMMY_FILE is NOT empty"
      POTENTIAL_DUMMY_FILE_NAME=$DUMMY_FILE_NAME_PREFIX$((${LAST_DUMMY_FILE: -1}+1))
fi
echo "POTENTIAL_DUMMY_FILE_NAME is $POTENTIAL_DUMMY_FILE_NAME"
