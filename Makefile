all:
	echo "Hello CI from Makefile"
	docker build -t fbourque/FICOExpressTest:latest .
