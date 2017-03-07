FROM python:2.7

COPY docker-entrypoint.sh /usr/local/bin

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["django-productline"]

VOLUME ["/code"]

EXPOSE ["8000"]
