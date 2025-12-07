while getopts "k:c:r:" opt; do
	case $opt in 
	  k) key=${OPTARG} ;;
	  c) crt=${OPTARG} ;;
          r) csr=${OPTARG} ;;
        esac
done


if [ ! -z "$key" ]; then
     echo $key &&  openssl rsa -noout -modulus -in $key  | openssl md5
fi

if [ ! -z "$crt" ]; then
     echo $crt && openssl x509 -noout -modulus -in $crt  | openssl md5
fi 

if [ ! -z "$csr" ]; then
     echo $csr && openssl req -noout -modulus -in $csr  | openssl md5
fi
