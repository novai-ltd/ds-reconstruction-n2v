# Python template

A repository template for python projects.

- Uses [poetry](https://python-poetry.org/) for packing and dependency management.

- Remeber to write [tests](https://docs.pytest.org/en/7.1.x/).

- Follow [semantic versioning](https://semver.org/) for versioning  packages.

- Utlise [Github actions](https://docs.github.com/en/actions) for CI/CD.

- Avoid repeatative code reviews or failing workflows by using [pre-commit](https://pre-commit.com/).

- Makefile for cli shortcuts. e.g. `make test`

---
**Prerequisites**

`curl -sSL https://install.python-poetry.org | python3 -`

`brew install pre-commit`

`pre-commit install`

---

## Poetry

`poetry update`

**Install package and dependencies**

`poetry install`

NB: The current project is installed in editable mode by default.


**To run code:**

`poetry run python my_package/hello.py`


**Build a wheel and .tar.gz of package**

`poetry build`

## CI/CD

- Github actions will:
    - automatically build and deploy a versioned wheel to AWS S3
    - automically build and deploy a versioned docker container to AWS ECR

**Pip install package from remote repository**

`pip install https://novai-ds-packages.s3.eu-west-2.amazonaws.com/my_package/my_package-0.1.0-py3-none-any.whl`

- You must be connected to Novai's NordLayer VPN Private Network

**Pull docker container from ECR**

`aws ecr get-login-password --region eu-west-2 | docker login --username AWS --password-stdin 021271968172.dkr.ecr.eu-west-2.amazonaws.com`

`docker pull 021271968172.dkr.ecr.eu-west-2.amazonaws.com/my_package:0.1.0`

- You must have an AWS account and have configured the aws cli for this to work
