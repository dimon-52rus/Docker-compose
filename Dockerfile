FROM python:3.6

WORKDIR ./app
COPY requirements.txt /app
RUN pip install --upgrade pip && python -m pip install -r requirements.txt

EXPOSE 5000

COPY . /app

ENTRYPOINT ["/bin/sh", "docker-entrypoint.sh"]