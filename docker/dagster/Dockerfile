
FROM python-data-eng-light

RUN mkdir -p /opt/dagster/dagster_home /opt/dagster/app

RUN pip install dagster dagit dagstermill dagster_cron

# Copy your pipeline code and entrypoint.sh to /opt/dagster/app
COPY workspace.yaml pipelines.py entrypoint.sh /opt/dagster/app/

# Copy dagster instance YAML to $DAGSTER_HOME
COPY dagster.yaml /opt/dagster/dagster_home/

WORKDIR /opt/dagster/app

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/opt/dagster/app/entrypoint.sh"]
