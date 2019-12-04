SUBID=`vultr-cli server list|awk '{if($1!="ID"){print $1}}'`
echo "Destory" $SUBID


vultr-cli server delete $SUBID
