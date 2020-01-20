echo "Choose any one option"
select var in {"List the records","Search for an employee","Delete an employee","Quit"}
do
	case $var in
		"List the records")
			cat database.txt
			;;
		"Search for an employee")
			echo "Enter the name of the Employee"
			read emp
			grep -h $emp database.txt
			;;
		"Delete an employee")
			echo "Enter the name of employee to be deleted from the database"
			read delemp
			grep -v  $delemp database.txt > newdatabase.txt
			cp newdatabase.txt database.txt
			echo "Employee named " $delemp "has been deleted successfully"
			cat database.txt
			;;
		"Quit")
		break;
		;;
esac
done
