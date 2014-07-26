NAME = donal/mesos

.PHONY: all build

all: build

build:
	docker build -t $(NAME) --rm .

inspect:
	docker run -i -t --rm $(NAME) /bin/bash

release:
	docker push $(NAME)
