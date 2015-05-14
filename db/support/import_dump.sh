if [ -n "$1" ] 
then
	dump_name=$1
else
	dump_name="dump.sql"
fi
mysql -u root sprut < $dump_name
echo "Import finished..."