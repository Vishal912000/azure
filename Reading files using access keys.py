# Databricks notebook source
spark.conf.set(
    "fs.azure.account.key.practicestorage912000.dfs.core.windows.net",
    "")

# COMMAND ----------

display(dbutils.fs.ls("abfss://files@practicestorage912000.dfs.core.windows.net"))

# COMMAND ----------

display(spark.read.csv("abfss://files@practicestorage912000.dfs.core.windows.net/customers-1000.csv"))


# COMMAND ----------

# Here is a more comprehensive list of file formats supported by spark.read:

# CSV: spark.read.format("csv")
# JSON: spark.read.format("json")
# Parquet: spark.read.format("parquet")
# Avro: spark.read.format("avro")
# ORC: spark.read.format("orc")
# Text: spark.read.format("text")
# JDBC: spark.read.format("jdbc")
# Delta Lake: spark.read.format("delta")
# Excel (XLSX): spark.read.format("com.crealytics.spark.excel")
# XML: spark.read.format("com.databricks.spark.xml")
# Image: spark.read.format("image")
# Apache Kafka: spark.read.format("kafka")
# Apache Cassandra: spark.read.format("org.apache.spark.sql.cassandra")
# Apache HBase: spark.read.format("org.apache.spark.sql.execution.datasources.hbase")
# MongoDB: spark.read.format("mongo")
# JDBC with Custom Query: spark.read.format("jdbc").option("query", "SELECT * FROM table")
