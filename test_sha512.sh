echo "************************************************************"
echo "TEST1  :  : : Find a easy password , with simple dict SHA512"
echo "************************************************************"
echo " "
echo "0DD3E512642C97CA3F747F9A76E374FBDA73F9292823C0313BE9D78ADD7CDD8F72235AF0C553DD26797E78E1854EDEE0AE002F8ABA074B066DFCE1AF114E32F8" >> password.hash
hashcat -m 1700 -a 0 --potfile-disable -o password.found password.hash Dictionaries/500-worst-passwords.txt

echo "print result"
echo " "
cat password.found
rm -f password.found
