FROM python:3.10-slim

RUN apt update
RUN apt-get install wget curl grep sed dpkg nano procps cron git -y

RUN pip install  \
  numpy \
  scipy \
  matplotlib  \
  pandas  \
  pandasql \
  scikit-learn \
  openpyxl \
  bokeh \
  seaborn

RUN pip install  \
  Jinja2 \
  python-dateutil \
  PyYAML \
  toml \
  packaging \
  six \
  tornado \
  gspread \
  oauth2client \
  PyOpenSSL \
  mysql-connector-python \
  pymysql \
  psycopg2-binary \
  flask \
  flask-cors 

RUN pip install \
  boto3 
RUN pip install  \
  pyarrow 
