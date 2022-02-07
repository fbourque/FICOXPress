all: build_container test

build_container:
	docker build -t fbourque/ficoexpresstest:latest .

test:
	docker container run -it fbourque/ficoexpresstest:latest /bin/bash -c "export XPAUTH_PATH=\`find / -name \"*.xpr\" -print\`; /test.py"

test_CI:
	# Don't run interactive
	docker container run -t fbourque/ficoexpresstest:latest /bin/bash -c "env; /test.py"
