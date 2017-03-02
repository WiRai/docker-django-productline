#!/bin/bash
if [[ ! -d /code/webapps ]]; then
	cd /code && \
	wget -O - https://raw.github.com/henzk/django-productline/master/bin/install.py | python - --dev webapps
fi

if [ "$1" = 'django-productline' ]; then
	exec bash --init-file /code/webapps/_ape/activape
fi

exec "$@"
