install:
	pip install --upgrade pip
	pip install -r requirements.txt


install-azure:
	pip install -r requirements_azure.txt
lint:
	pylint --disable=R,C *.py

format:
	black *.py

test:
	python -m pytest -vv test_hello.py

all: install lint test
