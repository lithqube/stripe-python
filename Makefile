init:
	pip install --upgrade pipenv
	pipenv install --dev --skip-lock

test:
	# This runs all of the tests, on both Python 2 and Python 3.
	pipenv run detox

ci:
	pipenv run py.test -n 8 --junitxml=report.xml

lint:
	pipenv run flake8 stripe tests

coverage:
	pipenv run py.test --cov-config .coveragerc --verbose --cov-report term --cov-report xml --cov=stripe tests
