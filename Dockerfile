FROM python:3.11-alpine

WORKDIR /app

COPY ./app/ .

RUN apk add sudo && pip install --no-cache-dir flask==3.1.0 Flask-Login==0.6.3 flask-sqlalchemy==3.1.1 PyYAML==6.0.2 requests==2.32.3 unzip_http==0.6 watchdog==4.0.2 Werkzeug==3.1.3 nstools==1.2.0 zstandard==0.23.0 enlighten pycryptodome

ENTRYPOINT [ "/app/run.sh" ]

