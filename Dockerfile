FROM python/python:2.7.15-alpine


RUN apk update
RUN apk add --virtual .install_dependencies_paramiko \
gcc \
musl-dev \
python-dev \
libffi-dev \
openssl-dev \
build-base \
py-pip \
&& apk add zlib \
zlib-dev \
libssl1.0 \
openssl-dev \
&& pip install cffi \
&& pip install paramiko \
&& pip install amqp==2.2.2 \
&& pip install Babel==2.5.3 \
&& pip install billiard==3.5.0.3 \
&& pip install celery==4.2.1 \
&& pip install flower==0.9.2 \
&& pip install kombu==4.2.0 \
&& pip install pytz==2018.3 \
&& pip install redis==2.10.6 \
&& pip install tornado==5.0.2 \
&& pip install vine==1.1.4 \
&& apk del .install_dependencies_paramiko

ENTRYPOINT celery -A tasks worker --loglevel=info
