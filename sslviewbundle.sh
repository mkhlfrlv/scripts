if [ -n "$1" ]; then 
	while read  line
	do
    		if [ "${line//END}" != "$line" ]; then
        		txt="$txt$line\n"
       			printf -- "$txt" | openssl x509  -noout -text
       			txt=""
		else
			txt="$txt$line\n"
		fi
	done < $1
fi
