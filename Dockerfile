FROM ubuntu:16.04

RUN apt-get update -y
RUN apt-get install -y python-pip \
    python-dev \
    build-essential

RUN pip install --upgrade pip

COPY requirements.txt /usr/src/app/

RUN pip install -r /usr/src/app/requirements.txt

EXPOSE 5000

#CMD ["python", "/usr/src/app/run.py"]