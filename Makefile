.PHONY: build dist publish

dist:
	mkdir -p dist
	rm -rf dist
	python3 setup.py sdist bdist_wheel

publish:
	twine upload dist/* -r pypi
