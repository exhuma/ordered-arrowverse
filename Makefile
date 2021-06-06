.PHONY: all

all:
	poetry build
	docker build -t ordered_arrowverse .
