
all: build

build:
	docker build -t dokku32bit/buildstep32bit .

test: build-test run-test

build-test:
	docker build -t dokku32bit/buildstep32bit-test ./test

run-test:
	docker run -v /var/run/docker.sock:/run/docker.sock -ti dokku32bit/buildstep32bit-test
