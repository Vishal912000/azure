# Databricks notebook source
import re,sys
import json
from pyspark.sql import *
from pyspark.sql.functions import *
from datetime import date

# COMMAND ----------

dbutils.widgets.text(name="arguments",defaultValue="",label="parameters")

# COMMAND ----------

arguments=dbutils.widgets.get("arguments")
arguments=json.loads(arguments)
catalog_name=arguments["catalog_name"]
database_name=arguments["database_name"]
print(arguments)

# COMMAND ----------

df_players=spark.sql(f"""select * from {catalog_name}.{database_name}.players""")
df_players.display()
df_players.createOrReplaceTempView("df_players_view")
df_teams=spark.sql(f"""select * from  {catalog_name}.{database_name}.teams""")
df_teams.display()
df_teams.createOrReplaceTempView("df_teams_view")

# COMMAND ----------

#selecting a column and multiple columns 
#df_players.select(df_players.player_id).display()


#selecting  multiple columns 
df_players_new=df_players.select(df_players.player_id,df_players.player_name,df_players.team_name)
df_players_new.display()

# COMMAND ----------

# with column 
df_with=df_players.withColumn("salary",df_players.highest_batting_score *10)
#df_with.display()

df_with_new=df_players.withColumn("new",concat_ws(" ",df_players.player_name, df_players.team_name,df_players.age))
df_with_new.display()

df_withrename=df_with.withColumnRenamed("salary","hike")
df_withrename.display()

# COMMAND ----------

df_with_new=df_players.withColumn("new",concat_ws(" ",df_players.player_name, df_players.team_name,df_players.age))
df_with_new.display()

# COMMAND ----------

#filtering option

df_filtered=df_players.filter(df_players.play_type.isin(['Batsman','Bowler']))
#df_filtered.display()

df_filtered_1=df_players.filter(df_players.team_name.like('Royal%'))
#df_filtered_1.display()

df_filtered_2=df_players.filter(df_players.player_name.isin('Rohit Sharma'))
#df_filtered_2.display()

# COMMAND ----------

df_players_filter=df_players.filter("team_name=='Royal Challengers Bengaluru'")
df_players_fil2=df_players.filter("player_name like 'A%'")
df_players_new=df_players.filter("player_name =='Rohit Sharma' and play_type in ('Batsman','Bowler')")

# COMMAND ----------

df1=df_players.filter("player_id in (1,2,3)").orderBy('player_id')
df1.display()

# COMMAND ----------



# COMMAND ----------

df2=df_players.filter("age>25 and highest_batting_score>20 and batting_average >0")
df2.display()

df3=df_players.filter("(play_type in ('Batsman','Bowler')) and (player_name like 'R%') ")
df3.display()

df4=df_players.filter("bowling_economy is  null  and play_type = 'Batsman' ")
df4.display()
