FROM ubuntu:18.04

RUN apt update
RUN apt install python3 python3-pip -y

COPY ./requirements.txt web-app/requirements.txt

WORKDIR /web-app

RUN pip3 install -r requirements.txt

COPY . /web-app

CMD python3 /web-app/app.py