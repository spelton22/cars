#! /bin/bash
# cars.sh
# Sophie Pelton

echo "Enter  1 to enter a new car."
echo "Enter 2 to display a list of cars."
echo "Enter 3 to quit the program."
read NUM

while [ $NUM -lt "4" ]
do
	case "$NUM" in
		"1") echo "enter the year"
			read Y
			echo "enter the make"
			read MAKE
			echo "enter the model"
			read MODEL
			echo "$Y:$MAKE:$MODEL\n" >> My_Old_cars.txt ;;

		"2") sort My_Old_cars.txt ;;
			
		"3") echo "Goodbye"
			break ;;
	esac
	echo "enter a number"
	read NUM
done

