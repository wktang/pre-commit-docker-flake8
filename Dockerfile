FROM ubuntu:xenial

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        python2.7 \
        virtualenv && \
    apt-get clean

RUN virtualenv /venv -ppython2.7 && /venv/bin/pip install flake8 pep8-naming
ENV PATH=/venv/bin:$PATH
