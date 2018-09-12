.PHONY: build dist publish

venv:
	virtualenv venv -p $(which python)

activate:
	source ./venv/bin/activate

install:
	pip install --editable .

test: install
	j2s3 publish -i ./resources -u username -p password -b bucketname --dry

dist:
	mkdir -p dist
	rm -rf dist
	python3 setup.py sdist bdist_wheel

publish:
	twine upload dist/* -r pypi
