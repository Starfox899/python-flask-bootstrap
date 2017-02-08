FROM python:2


RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r requirements.txt

COPY ./app /usr/src/app

#CMD ["/usr/local/bin/gunicorn", "-w 3",  "-b 0.0.0.0:80", "app:app"]
CMD ["/usr/local/bin/gunicorn", "-w 1",  "-b 0.0.0.0:80", "app:app"]
