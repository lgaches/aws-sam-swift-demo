all: build-HelloWorldFunction build-GreetingFunction

build-HelloWorldFunction:
	scripts/build-and-package.sh HelloWorld

build-GreetingFunction:	
	scripts/build-and-package.sh Greeting

.PHONY: build-HelloWorldFunction build-GreetingFunction
