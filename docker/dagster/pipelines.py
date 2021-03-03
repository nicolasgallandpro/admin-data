from datetime import datetime,time
from dagster import daily_schedule, hourly_schedule, schedule, pipeline, repository, solid

@solid
def get_name(_):
    return 'dagster'


@solid
def hello(context, name: str):
    context.log.info('Hello, {name}!'.format(name=name))


@pipeline
def hello_pipeline():
    hello(get_name())


#@hourly_schedule(pipeline_name="hello_pipeline", start_date=datetime(2020, 1, 1))
@schedule(
    cron_schedule="13 * * * *", pipeline_name="hello_pipeline"
)
def good_morning_schedule(date):
    return {  }

@repository
def hello_cereal_repository():
    return [hello_pipeline, good_morning_schedule]
