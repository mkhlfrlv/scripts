if [ -n "$1" ]; then 
	openssl x509 -noout -text -in $1
fi
