for i in $( cat server_list ); 
do echo $i ssh -q -t $i ' 
sudo hostname 
sudo chage -E -1 -I 90 -M 60 -d 'date +%F' username 
sudo chage -l username 
echo "------------------------------------------------------" 
' 
done