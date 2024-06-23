# Databricks notebook source
dbutils.widgets.help()

# COMMAND ----------

import sys,traceback,os
import json
import re
import dateutil
import pandas as pd
from pyspark.sql import *

# COMMAND ----------

dbutils.widgets.text(name='arguments',defaultValue="",label="arguments")

# COMMAND ----------

df=spark.sql(f"""select * from hive_metastore.ipl.teams""")
display(df)

# COMMAND ----------

input_json={}
output_json=None

# COMMAND ----------

dbutils.widgets.text(name='arguments', defaultValue="", label="arguments")
arguments = dbutils.widgets.get('arguments')
arguments = json.loads(arguments)
catalog_name = arguments["catalog_name"]
database_name = arguments["database_name"]

# COMMAND ----------

dbutils.widgets.text(name='arguments', defaultValue="", label="arguments")
arguments = dbutils.widgets.get('arguments')
print(arguments)


if arguments:
    arguments = json.loads(arguments)
    catalog_name = arguments["catalog_name"]
    database_name = arguments["database_name"]
else:
    # Handle the case when the arguments are empty or not provided
    catalog_name = None
    database_name = None

# COMMAND ----------

df=spark.sql(f"""select * from {catalog_name}.{database_name}.teams""")
display(df)
