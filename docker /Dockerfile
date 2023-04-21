FROM python:3.8
RUN apt-get update
RUN pip  install  Flask
RUN pip install Werkzeug
COPY . /opt
EXPOSE 3800
CMD python3 /opt/esis_l4.py 
