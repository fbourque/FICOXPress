all:
	echo "Hello CI from Makefile"
	docker build -t FICOExpressTest:latest .
