FROM python:3.6-alpine

RUN apk add --virtual .install_dependencies_paramiko \
    gcc \
    musl-dev \
    python-dev \
    libffi-dev \
    openssl-dev \
    build-base \
    py-pip \
&&  apk add zlib \
    zlib-dev \
    libssl1.0 \
    openssl-dev \
&&  pip install cffi==1.11.5 \
&&  pip install paramiko==2.4.2 \
&&  pip install cryptography==2.4.2 \
&&  pip insall amqp==2.2.2 \
&&  pip insall Babel==2.5.3 \
&&  pip insall billiard==3.5.0.3 \
&&  pip insall celery==4.2.1 \
&&  pip insall flower==0.9.2 \
&&  pip insall kombu==4.2.0 \
&&  pip insall pytz==2018.3 \
&&  pip insall redis==2.10.6 \
&&  pip insall tornado==5.0.2 \
&&  pip insall vine==1.1.4 \
&&  pip insall cryptography==2.4.2 \
&&  pip insall paramiko==2.4.2 \
&&  apk del .install_dependencies_paramiko