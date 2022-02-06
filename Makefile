all: build_container test

build_container:
	docker build -t fbourque/ficoexpresstest:latest .

test:
	docker container run -it fbourque/ficoexpresstest:latest /bin/bash -c "/test.py"

test_CI:
	# Don't run interactive
	docker container run -t fbourque/ficoexpresstest:latest /bin/bash -c "/test.py"

