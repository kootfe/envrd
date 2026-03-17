all: run

ENTRY := main.dart

run:
	dart run $(ENTRY)

build:
	dart compile exe $(ENTRY) -o envrd

exec: build
	./envrd

clean:
	rm -f env_reader
