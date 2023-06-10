FROM python:latest

COPY . .

WORKDIR /fos-data-engineer

RUN apt-get update && apt-get -y install cron
RUN apt-get install gcc

RUN pip3 install --no-cache-dir -r requirements.txt

# Python script with cron
COPY cronfile /etc/cron.d/cronfile
RUN chmod 0644 /etc/cron.d/cronfile
RUN crontab /etc/cron.d/cronfile
CMD cron -f


