code_dir="full path to dir where your code is"
remote: pull build run
local: build-local run-local

pull:
	docker pull evanhuang117/cse3901
build:
	docker build . -t evanhuang117/cse3901
build-local:
	docker build . -t cse3901

run:
	docker run \
		--mount src="$(code_dir)",target=/test_container,type=bind \
		-it evanhuang117/cse3901
run-local:
	docker run \
		--mount src="$(code_dir)",target=/test_container,type=bind \
		-it cse3901
clean:
	docker rmi $(shell docker images --filter "dangling=true" -q --no-trunc)
	docker image prune --filter="dangling=true"
