# Databricks notebook source
# MAGIC %sql
# MAGIC drop database if exists practice1.stores;
# MAGIC create database practice1.stores

# COMMAND ----------

# MAGIC %sql
# MAGIC drop table if exists practice1.stores.reliance;
# MAGIC create table practice1.stores.reliance(store_id int,store_location string,store_capacity float)

# COMMAND ----------

# MAGIC %sql
# MAGIC select * from  practice1.stores.reliance

# COMMAND ----------

# MAGIC %sql
# MAGIC --insert into practice1.stores.reliance values (1,"Hyderabad",25.0)
# MAGIC insert into practice1.stores.reliance values(2,"Bengaluru",33.0)

# COMMAND ----------

# MAGIC %sql
# MAGIC update practice1.stores.reliance
# MAGIC SET store_location="Delhi"
# MAGIC where store_id=1

# COMMAND ----------

# MAGIC %sql
# MAGIC alter practice1.stores.reliance
