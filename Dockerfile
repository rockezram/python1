FROM ubuntu:latest
RUN apt-get -y update
RUN apt-get install -y python3
RUN apt-get -y install python3-pip
RUN pip3 install flask
RUN mkdir python
WORKDIR python
ADD app.py .
CMD ["app.py"]
ENTRYPOINT ["python3"]
