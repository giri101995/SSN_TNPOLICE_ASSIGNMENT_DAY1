echo "Welcome to Calculator, Select the Operation"
select var in {"Addition","Subtraction","Multiplication","Division","Exit"}
do
case $var in
	"Addition")
	echo "Enter a"
	read a
	echo "Enter b"
	read b
	c1=$((a + b))
	echo "The output of addition is " $c1
	;;
	"Subtraction")
	echo "Enter a greater than b"
	echo "Enter a"
	read a
	echo "Enter b"
	read b
	c1=$((a - b))
	echo "The output of subtraction is " $c1
	;;
	"Multiplication")
	echo "Enter a"
	read a
	echo "Enter b"
	read b
	c1=$((a * b))
	echo "The output of multiplication is " $c1
	;;
	"Division")
	echo "Enter a"
	read a
	echo "Enter b"
	read b
	c1=$((a / b))
	echo "The output of division is " $c1
	;;
	"Exit")
	break;
	;;
	*)
	echo "Invalid Option"
	;;
esac
done
