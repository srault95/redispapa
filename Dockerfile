# Dockerfile for redispapa
FROM ubuntu:latest

MAINTAINER sinchb128@gmail.com

RUN apt-get update \
	&& apt-get install -y --upgrade python-setuptools python-dev build-essential ca-certificates curl \
    && curl -k https://bootstrap.pypa.io/get-pip.py | python -

# Download source file
RUN mkdir /code
WORKDIR /code
ADD . /code/

# Install requirements
RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python2.7", "/code/run.py"]

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*