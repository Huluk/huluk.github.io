run:
	hugo server

build:
	hugo --gc --minify

install:
	mise install
	hugo mod get

update:
	hugo mod get -u && hugo mod tidy
