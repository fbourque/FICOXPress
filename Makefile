all: build_container test

build_container:
	docker build -t fbourque/ficoexpresstest:latest .

test:
	docker container run -it fbourque/ficoexpresstest:latest /bin/bash -c "/test.py"



