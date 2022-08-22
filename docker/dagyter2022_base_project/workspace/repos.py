import csv
import requests
from dagster import asset, AssetObservation, AssetMaterialization, AssetKey, define_asset_job, repository, ScheduleDefinition
import pandas as pd



@asset(group_name="group1")
def cereals():
    response = requests.get("https://docs.dagster.io/assets/cereal.csv")
    lines = response.text.split("\n")
    return [row for row in csv.DictReader(lines)]


@asset
def nabisco_cereals(cereals):
    """Cereals manufactured by Nabisco"""
    return [row for row in cereals if row["mfr"] == "N"]


@asset
def TABLE_action_list():
    """Raw mysql table "action_list" """
    return ''

@asset
def action_list_parquet_file(TABLE_action_list):
    """ Fichier parquet des données brutes """
    return ''

@asset(group_name="group1")
def cleaned_action_list(context, action_list_parquet_file)  -> pd.DataFrame:
    context.log_event(
        AssetObservation("cleaned_action_list", metadata={"num_rows": 20, "autre_chiffre":20, "meta en lettre": "texte"})
    )
    return pd.DataFrame()


asset1_job = define_asset_job(name="asset1_job", selection=["action_list_parquet_file", 'cleaned_action_list'])
job1_schedule = ScheduleDefinition(job=asset1_job, cron_schedule="0 0 * * *")

@repository
def repo():
    return [cleaned_action_list, action_list_parquet_file, \
        job1_schedule, TABLE_action_list, asset1_job]

