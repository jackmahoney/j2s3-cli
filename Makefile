.PHONY: build dist publish

venv:
	virtualenv venv -p python3

activate:
	source ./venv/bin/activate

install:
	pip install --editable .

test: install
	python3 -m pytest
	j2s3 publish -l ./resources/petstore -u username -p password -b bucketname --dry
	j2s3 publish -l ./resources/petstore -u $(AWS_ACCESS_KEY_ID) -p $(AWS_SECRET_ACCESS_KEY) -b j2s3.test.petstore

dist:
	mkdir -p dist
	rm -rf dist
	mkdir -p j2s3_cli.egg-info
	rm -rf j2s3_cli.egg-info
	python3 setup.py sdist bdist_wheel

publish:
	twine upload dist/* -r pypi
