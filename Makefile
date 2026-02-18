run:
	cd docs && bundle exec jekyll serve --incremental

install:
	mise use ruby@3
	cd docs && bundle install

update:
	cd docs && bundle update --all
